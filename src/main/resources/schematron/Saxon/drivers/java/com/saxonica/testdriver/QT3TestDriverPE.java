////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2014 Saxonica Limited.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
// This Source Code Form is "Incompatible With Secondary Licenses", as defined by the Mozilla Public License, v. 2.0.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

package com.saxonica.testdriver;

import net.sf.saxon.Configuration;
import net.sf.saxon.expr.Container;
import net.sf.saxon.expr.Expression;
import net.sf.saxon.expr.Literal;
import net.sf.saxon.expr.StaticContext;
import net.sf.saxon.expr.flwor.Clause;
import net.sf.saxon.expr.parser.CodeInjector;
import net.sf.saxon.lib.NamespaceConstant;
import net.sf.saxon.om.Sequence;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.om.TreeModel;
import net.sf.saxon.option.axiom.AxiomObjectModel;
import net.sf.saxon.option.dom4j.DOM4JObjectModel;
import net.sf.saxon.option.jdom.JDOMObjectModel;
import net.sf.saxon.option.jdom2.JDOM2ObjectModel;
import net.sf.saxon.option.xom.XOMObjectModel;
import net.sf.saxon.s9api.Processor;
import net.sf.saxon.s9api.XPathCompiler;
import net.sf.saxon.s9api.XQueryCompiler;
import net.sf.saxon.s9api.XsltCompiler;
import net.sf.saxon.testdriver.Environment;
import net.sf.saxon.testdriver.QT3TestDriverHE;


/**
 * This class is a test driver for running the QT3 test suite against Saxon-PE and Saxon-EE.
 */

public class QT3TestDriverPE extends QT3TestDriverHE {

    private Licensor licensor = new Licensor();

    public QT3TestDriverPE() {
        super();
    }


    public static void main(String[] args) throws Exception {
        if (args.length == 0 || args[0].equals("-?")) {
            usage();
            return;
        }

        new QT3TestDriverPE().go(args);
    }

    @Override
    public void go(String[] args) throws Exception {
        driverProc = new Processor(true);
        licensor.activate(driverProc);
        super.go(args);
    }

    /**
     * Return the appropriate tree model to use. This adds to the base set available
     * @param s  The name of the tree model required
     * @return  The tree model - null if model requested is unrecognised
     */
    protected TreeModel getTreeModel(String s) {
        TreeModel tree = super.getTreeModel(s);
        if (s.equalsIgnoreCase("jdom")) {
            tree = new JDOMObjectModel();
        } else if (s.equalsIgnoreCase("jdom2")) {
            tree = new JDOM2ObjectModel();
        } else if (s.equalsIgnoreCase("dom4j")) {
            tree = new DOM4JObjectModel();
        } else if (s.equalsIgnoreCase("xom")) {
            tree = new XOMObjectModel();
        } else if (s.equalsIgnoreCase("axiom")) {
            tree = new AxiomObjectModel();
        }
        return tree;
    }


    public static void usage() {
        System.err.println("java com.saxonica.testdriver.QT3TestSuiteDriverPE testsuiteDir catalog [-o:resultsdir] [-s:testSetName]" +
                " [-t:testNamePattern] [-unfolded] [-bytecode:on|off|debug] [-tree] [-lang:XP20|XP30|XQ10|XQ30]");

    }

    protected boolean makeSchemaAware(Environment env, boolean inverse) {
         if (!treeModel.isSchemaAware() || !env.processor.isSchemaAware()) {
             return false; // cannot use the selected tree model for schema-aware tests
         }
         if (env != null) {
             if (inverse) {
                 // force use of a non-schema-aware processor by creating a ProfessionalConfiguration
                 final Processor savedProcessor = env.processor;
                 env.processor = new Processor(new Configuration());

                 com.saxonica.config.ProfessionalConfiguration pConfig = new com.saxonica.config.ProfessionalConfiguration();
                 pConfig.setNamePool(env.processor.getUnderlyingConfiguration().getNamePool());
                 env.processor = new Processor(pConfig);

                 final XPathCompiler savedXPathCompiler = env.xpathCompiler;
                 final XQueryCompiler savedXQueryCompiler = env.xqueryCompiler;
                 final XsltCompiler savedXsltCompiler = env.xsltCompiler;
                 // Note that at present no variables are copied across
                 env.xpathCompiler = env.processor.newXPathCompiler();
                 env.xqueryCompiler = env.processor.newXQueryCompiler();
                 env.xsltCompiler = env.processor.newXsltCompiler();
                 env.xpathCompiler.setSchemaAware(false);
                 env.xqueryCompiler.setSchemaAware(false);
                 env.xsltCompiler.setSchemaAware(false);
                 env.resetActions.add(new Environment.ResetAction() {
                     public void reset(Environment env) {
                         env.processor = savedProcessor;
                         env.xpathCompiler = savedXPathCompiler;
                         env.xqueryCompiler = savedXQueryCompiler;
                         env.xsltCompiler = savedXsltCompiler;
                     }
                 });
             } else {
                 final Processor savedProcessor = env.processor;
                 final XPathCompiler savedXPathCompiler = env.xpathCompiler;
                 final XQueryCompiler savedXQueryCompiler = env.xqueryCompiler;
                 final XsltCompiler savedXsltCompiler = env.xsltCompiler;
                 env.xpathCompiler.setSchemaAware(true);
                 env.xqueryCompiler.setSchemaAware(true);
                 if (env.xsltCompiler != null) {
                    env.xsltCompiler.setSchemaAware(true);
                 }
                 env.resetActions.add(new Environment.ResetAction() {
                     public void reset(Environment env) {
                         env.processor = savedProcessor;
                         env.xpathCompiler = savedXPathCompiler;
                         env.xqueryCompiler = savedXQueryCompiler;
                         env.xsltCompiler = savedXsltCompiler;
                     }
                 });
             }
         }
         return true;
     }


    @Override
    public void addInjection(XQueryCompiler compiler) {
        compiler.getUnderlyingStaticContext().setCodeInjector(new LazyLiteralInjector());
    }

    /**
     * The LazyLiteralInjector wraps literals appearing in a query-under-test by a call to an extension
     * function that delivers the same value as the literal. This is designed to suppress the "constant
     * unfolding" optimization whereby expressions are evaluated at compile time; as such it forces
     * greater coverage of code paths in the interpreter and in the byte code generator.
     */

    private static class LazyLiteralInjector implements CodeInjector {
        public Expression inject(Expression exp, StaticContext env, int construct, StructuredQName qName) {
            if (exp instanceof Literal) {
                StructuredQName name = new StructuredQName("saxon", NamespaceConstant.SAXON, "lazy-literal");
                com.saxonica.expr.JavaExtensionFunctionCall wrapper = new com.saxonica.expr.JavaExtensionFunctionCall();
                try {
                    wrapper.init(name, QT3TestDriverHE.class,
                            QT3TestDriverHE.class.getMethod("lazyLiteral", Sequence.class)
                    );
                    wrapper.setArguments(new Expression[]{exp});
                } catch (NoSuchMethodException e) {
                    throw new IllegalStateException(e);
                }
                return wrapper;
            } else {
                return exp;
            }
        }

        public Clause injectClause(Clause target, StaticContext env, Container container) {
            return null;
        }
    }
}
