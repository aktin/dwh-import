////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2014 Saxonica Limited.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
// This Source Code Form is "Incompatible With Secondary Licenses", as defined by the Mozilla Public License, v. 2.0.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

package com.saxonica.testdriver;


//import com.saxonica.testdriver.gui.TestDriverForm;
import net.sf.saxon.Configuration;
import net.sf.saxon.TransformerFactoryImpl;
import net.sf.saxon.Version;
import net.sf.saxon.dom.DOMObjectModel;
import net.sf.saxon.event.Sink;
import net.sf.saxon.lib.FeatureKeys;
import net.sf.saxon.lib.ParseOptions;
import net.sf.saxon.lib.Validation;
import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.om.TreeModel;
import net.sf.saxon.option.axiom.AxiomObjectModel;
import net.sf.saxon.option.dom4j.DOM4JObjectModel;
import net.sf.saxon.option.jdom.JDOMObjectModel;
import net.sf.saxon.option.jdom2.JDOM2ObjectModel;
import net.sf.saxon.option.xom.XOMObjectModel;
import net.sf.saxon.query.DynamicQueryContext;
import net.sf.saxon.query.StaticQueryContext;
import net.sf.saxon.query.XQueryExpression;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.value.DateTimeValue;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.FileReader;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.Properties;


/**
 * Runs the XMark XQuery benchmark: see
 * <a href="http://monetdb.cwi.nl/xml/index.html">http://monetdb.cwi.nl/xml/index.html</a
 */
public class XMarkBenchmark {

    /**
     * Class is not instantiated, so give it a private constructor
     */
    public XMarkBenchmark() {
    }

    static boolean pull = false;
    static boolean lazy = false;
    static boolean saproduct = false;
    static boolean satests = false;
    static boolean xslt = false;
    static boolean generateByteCode = false;
    static boolean checkResults = false;
    static boolean val = false;
    static int test = -1;
    static String programPath = "//home//ond1//work//development//xmark//";
    static String dataPath = "";
    private Object guiForm;
    private boolean threadStop = false;
    private TreeModel treeModel = null;

    static String[] tests = {"xmark1.xml", "xmark4.xml", "xmark10.xml"};
    static TreeModel[] models = {TreeModel.TINY_TREE, TreeModel.TINY_TREE_CONDENSED, TreeModel.LINKED_TREE,
            new DOMObjectModel(), new JDOMObjectModel(), new JDOM2ObjectModel(),
            new DOM4JObjectModel(), new XOMObjectModel(), new AxiomObjectModel()};
//    static TreeModel[] models = {new DOMObjectModel()};

    public void setProgramPath(String path) {
        programPath = path;
    }

    public String getProgramPath() {
        return programPath;
    }

    public void setDataPath(String path) {
        dataPath = path;
    }

    public String getDataPath() {
        return dataPath;
    }

    /**
     * Method main
     *
     * @param argv command line arguments. The following arguments are recognised:
     *             <dl>
     *             <dt>-dir:directory</dt><dd>The directory containing the tests</dt>
     *             <dt>-pull</dt><dd>Run in pull mode</dd>
     *             <dt>-lazy</dt><dd>Enable lazy construction mode</dd>
     *             <dt>-sa</dt><dd>Run standard tests in schema-aware mode</dd>
     *             <dt>-satests</dt><dd>Run schema-aware versions of the tests in schema-aware mode</dd>
     *             <dt>-xslt</dt><dd>Run XSLT versions of the tests</dd>
     *             <dt>-runcomp</dt><dd>Run XQuery tests compiled into Java code</dd>
     *             <dt>-qN</dt><dd>Run query N only</dd>
     *             </dl>
     */
    public static void main(String argv[]) throws Exception {
        XMarkBenchmark xmark = new XMarkBenchmark();
        xmark.go(argv);

    }

//    public void setTestDriverForm(TestDriverForm gui) {
//        guiForm = gui;
//    }

    public void println(String data) {
        if (guiForm != null) {
            //guiForm.setResultTextArea(data);
        } else {
            System.err.println(data);
        }
    }

    public void printError(String error, Exception e) {
        if (guiForm != null) {
            //guiForm.errorPopup(error);
            e.printStackTrace();
        } else {
            e.printStackTrace();
        }
    }

    /**
     * Print memory usage.
     */
    public static String printMemory() {
        System.gc();

        long totalMemory = Runtime.getRuntime().totalMemory();
        long freeMemory = Runtime.getRuntime().freeMemory();
        return " memory ='" + ((totalMemory - freeMemory) / 1024) + "'";
    }

    public void stopThread(boolean stop) {
        threadStop = stop;
    }


    public void go(String[] argv) throws Exception {
        String dir = null;
        for (int i = 0; i < argv.length; i++) {
            if (argv[i].startsWith("-dir:")) dir = argv[i].substring(5);
            if (argv[i].equals("-pull")) pull = true;
            if (argv[i].equals("-lazy")) lazy = true;
            if (argv[i].equals("-sa")) saproduct = true;
            // means use Saxon-EE optimizer (not the schema-aware version of the tests)
            if (argv[i].equals("-satests")) satests = true;
            if (argv[i].equals("-xslt")) xslt = true;
            if (argv[i].equals("-runcomp")) generateByteCode = true;
            if (argv[i].equals("-check")) checkResults = true;
            if (argv[i].equals("-val")) val = true;
            if (argv[i].startsWith("-q")) {
                test = Integer.parseInt(argv[i].substring(2));
            }
            if (argv[i].startsWith("-tree")) {
                if (argv[i].substring(6).equalsIgnoreCase("dom")) {
                    treeModel = new DOMObjectModel();
                } else if (argv[i].substring(6).equalsIgnoreCase("jdom")) {
                    treeModel = new JDOMObjectModel();
                } else if (argv[i].substring(6).equalsIgnoreCase("jdom2")) {
                    treeModel = new JDOM2ObjectModel();
                } else if (argv[i].substring(6).equalsIgnoreCase("dom4j")) {
                    treeModel = new DOM4JObjectModel();
                } else if (argv[i].substring(6).equalsIgnoreCase("xom")) {
                    treeModel = new XOMObjectModel();
                } else if (argv[i].substring(6).equalsIgnoreCase("axiom")) {
                    treeModel = new AxiomObjectModel();
                } else if (argv[i].substring(6).equalsIgnoreCase("tinytree")) {
                    treeModel = TreeModel.TINY_TREE;
                } else if (argv[i].substring(6).equalsIgnoreCase("condensed")) {
                    treeModel = TreeModel.TINY_TREE_CONDENSED;
                } else if (argv[i].substring(6).equalsIgnoreCase("linked")) {
                    treeModel = TreeModel.LINKED_TREE;
                } else {
                    throw new Exception("The TreeModel specified does not exist");
                }

            }
            if (argv[i].equals("-?")) {
                System.err.println("Options: -pull -lazy -sa -xslt -compile -runcomp -tree");
            }
        }

        if (dir == null) {
            dir = (satests ? programPath + "//sa//" : programPath + "//");
        }

        if (xslt) {
            transform(lazy, saproduct, dir);
        } else {
            query(dir);
        }
    }

    /**
     * Run all the XQuery tests
     *
     * @param dir the directory containing the tests
     * @throws Exception
     */

    public void query(String dir) throws Exception {
        long per_millisecs = 1000000;
        String options = "";
        String when = DateTimeValue.getCurrentDateTime(null).getStringValue();
        if (saproduct) options += "-sa ";
        if (satests) options += "-satests ";
        if (pull) options += "-pull ";
        if (lazy) options += "-lazy ";
        if (val) options += "-val ";
        if (generateByteCode) options += "-runcomp";
        println("<xmark-results product='Saxon' lang='query' version='" + Version.getProductVersion() +
                "' options='" + options + "' when='" + when + "'>");

        for (TreeModel model : models) {
            if (treeModel != null && !treeModel.getName().equals(model.getName())) {
                continue;
            }
            ParseOptions parseOptions = new ParseOptions();
            parseOptions.setModel(model);
            for (String test1 : tests) {
                File file = new File(dir + test1);
                Configuration config = new Configuration();
//#if EE==true
                if (saproduct) {
                    config = new com.saxonica.config.EnterpriseConfiguration();
                }
//#endif

                if (saproduct) {
                    if (lazy) {
                        config.setBooleanProperty(FeatureKeys.LAZY_CONSTRUCTION_MODE, true);
                    }
                    if (satests) {
                        //AutoActivate.activate(config);
                        config.setSchemaValidationMode(Validation.STRICT);
                        config.addSchemaSource(new StreamSource(new File(dir + "schema.xsd")),
                                config.getErrorListener());
                        config.setBooleanProperty(FeatureKeys.USE_TYPED_VALUE_CACHE, false);
                    }
                    if (val) {
                        config.loadSchema(new File(dir + "sa//schema.xsd").toURI().toString());
                        config.setSchemaValidationMode(Validation.STRICT);
                    }
                    if (generateByteCode) {
                        config.setBooleanProperty(FeatureKeys.GENERATE_BYTE_CODE, true);
                        config.setBooleanProperty(FeatureKeys.DEBUG_BYTE_CODE, false);
                    } else {
                        config.setBooleanProperty(FeatureKeys.GENERATE_BYTE_CODE, false);
                    }
                }


                Source streamSource = new StreamSource(file);

                long pstart = System.currentTimeMillis();
                DocumentInfo doc = null;
                try {
                    doc = config.buildDocument(streamSource, parseOptions);
                } catch (Exception e) {
                    printError("Error loading the file: " + file.toString(), e);
                }
                long pend = System.currentTimeMillis();

                println("  <file name='" + test1 +
                        "' size='" + file.length() +
                        "' build-time='" + (pend - pstart) +
                        "' model='" + model.getName() + "'" + printMemory() + ">");
                Properties props = new Properties();
                props.setProperty("method", "xml");
                props.setProperty("indent", "yes");


                for (int q = 1; q <= 20; q++) {
                    if (test != -1 && test != q) {
                        continue;
                    }
                    try {
                        File query = new File(dir + 'q' + q + ".xq");
                        StaticQueryContext qenv = config.newStaticQueryContext();
                        qenv.setBaseURI(query.toURI().toString());
                        if (val) {
                            qenv.setSchemaAware(true);
                        }
                        XQueryExpression exp = qenv.compileQuery(new FileReader(query));
                        int runs = 0;
                        long totalTime = 0;
                        long min = Integer.MAX_VALUE;
                        long max = 0;
                        Sink sink = new Sink(config.makePipelineConfiguration());
                        for (int t = 0; t < 1000; t++) {
                            final DynamicQueryContext context = new DynamicQueryContext(config);
                            context.setContextItem(doc);
                            Result result = sink;
                            long start, end;
                            if (pull) {
                                start = System.nanoTime();
                                exp.pull(context, result, props);
                                end = System.nanoTime();
                            } else {
                                start = System.nanoTime();
                                exp.run(context, result, props);
                                end = System.nanoTime();
                            }
                            runs++;

                            long time = (end - start);
                            //System.err.println("time = " + time);
                            if (time < min) min = time;
                            if (time > max) max = time;
                            totalTime += time;
                            if (totalTime > 30000000000L && t >= 2) break;
                        }
                        double avg = ((double) totalTime) / runs;
                        println("    <query q='" + q +
                                "' avg='" + (new BigDecimal((avg / per_millisecs))).setScale(4, BigDecimal.ROUND_HALF_UP).toString() +
                                "' runs='" + runs +
                                "' totalTime='" + ((double) totalTime / per_millisecs) +
                                "' min='" + ((double) min / per_millisecs) +
                                "' max='" + ((double) max / per_millisecs) + "'/>");
                        if (threadStop) {
                            break;
                        }
                    } catch (XPathException err) {
                        println("Error in test " + q);
                        System.err.println(err.getMessageAndLocation());
                    }
                }
                println("  </file>");
                if (threadStop) {
                    break;
                }
            }
        }
        println("</xmark-results>");
    }

    /**
     * Run an XSLT transformation
     *
     * @param lazy true if lazy construction mode is to be set
     * @param sa   true if schema-aware
     * @param dir  the directory containing the tests
     * @throws Exception
     */

    public void transform(boolean lazy, boolean sa, String dir) throws Exception {

        System.out.println("<xmark-results product='Saxon' lang='xslt' version='" + Version.getProductVersion() + "'>");

        for (int f = 0; f < tests.length; f++) {
            File file = new File(dir + tests[f]);

//            String factoryName = (sa ? "com.saxonica.config.EnterpriseTransformerFactory" : "net.sf.saxon.TransformerFactoryImpl");
//            System.setProperty("java.xml.transform.TransformerFactory", factoryName);
            TransformerFactory factory = new TransformerFactoryImpl();
//#if EE==true
            if (sa) {
                factory = new com.saxonica.config.EnterpriseTransformerFactory();
            }
//#endif
            Configuration config = ((TransformerFactoryImpl) factory).getConfiguration();
            if (lazy) {
                config.setBooleanProperty(FeatureKeys.LAZY_CONSTRUCTION_MODE, true);
            }

            Source streamSource = new StreamSource(file);
            long pstart = System.currentTimeMillis();
            DocumentInfo doc = config.buildDocument(streamSource);
            long pend = System.currentTimeMillis();

            System.out.println("  <file name='" + tests[f] +
                    "' size='" + file.length() +
                    "' schema-aware='" + config.isLicensedFeature(Configuration.LicenseFeature.ENTERPRISE_XSLT) +
                    "' build-time='" + (pend - pstart) + "'>");

            for (int q = 1; q <= 20; q++) {
                //if (q==9) continue;
                File sheet = new File(dir + 'q' + q + ".xsl");
                if (!sheet.exists()) {
                    continue;
                }
                Templates templates = factory.newTemplates(new StreamSource(sheet));

                int runs = 0;
                long totalTime = 0;
                long min = Integer.MAX_VALUE;
                long max = 0;
                Sink sink = new Sink(config.makePipelineConfiguration());
                for (int t = 0; t < 10; t++) {
                    Result result = sink;
                    long start, end;

                    start = System.currentTimeMillis();
                    templates.newTransformer().transform(doc, result);
                    end = System.currentTimeMillis();

                    runs++;
                    long time = (end - start);
                    if (time < min) min = time;
                    if (time > max) max = time;
                    totalTime += time;
                    if (totalTime > 1000 && t >= 2) break;
                }
                println("    <query q='" + q +
                        "' avg='" + (totalTime / runs) +
                        "' runs='" + runs +
                        "' min='" + min +
                        "' max='" + max + "'/>");
            }
            println("  </file>");
        }
        println("</xmark-results>");
    }

    /**
     * Compare two files containing test results
     *
     * @param actual the actual results
     * @param gold   the reference results
     */

    private static void compare(File actual, File gold) {
        try {
            // This is decoding bytes assuming the platform default encoding
            FileReader reader1 = new FileReader(actual);
            FileReader reader2 = new FileReader(gold);
            char[] contents1 = new char[65536];
            char[] contents2 = new char[65536];
            int size1 = reader1.read(contents1, 0, 65536);
            int size2 = reader2.read(contents2, 0, 65536);
            reader1.close();
            reader2.close();
            int offset1 = 0;
            int offset2 = 0;
            if (contents1[0] == '\u00ef' && contents1[1] == '\u00bb' && contents1[2] == '\u00bf') {
                offset1 += 3;
            }
            if (contents2[0] == '\u00ef' && contents2[1] == '\u00bb' && contents2[2] == '\u00bf') {
                offset2 += 3;
            }
            String actResult = (size1 == -1 ? "" : new String(contents1, offset1, size1 - offset1));
            String refResult = (size2 == -1 ? "" : new String(contents2, offset2, size2 - offset2));

//            actResult = actResult.replace("\r\n", "\n");
//            refResult = refResult.replace("\r\n", "\n");
            if (actResult.equals(refResult)) {
                System.err.println("Results compared OK");
            } else {
                System.err.println("*** Results do not match");
            }
        } catch (Exception err) {
            System.err.println("Failed to compare with gold results: " + err.getMessage());
        }
    }

    private final static DecimalFormat format = new DecimalFormat("######0.00");


}

