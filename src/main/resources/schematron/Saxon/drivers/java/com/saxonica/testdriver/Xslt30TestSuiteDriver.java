////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2014 Saxonica Limited.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
// This Source Code Form is "Incompatible With Secondary Licenses", as defined by the Mozilla Public License, v. 2.0.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

package com.saxonica.testdriver;


import net.sf.saxon.Configuration;
import net.sf.saxon.lib.FeatureKeys;
import net.sf.saxon.om.TreeModel;
import net.sf.saxon.option.axiom.AxiomObjectModel;
import net.sf.saxon.option.dom4j.DOM4JObjectModel;
import net.sf.saxon.option.jdom.JDOMObjectModel;
import net.sf.saxon.option.jdom2.JDOM2ObjectModel;
import net.sf.saxon.option.xom.XOMObjectModel;
import net.sf.saxon.s9api.*;
import net.sf.saxon.testdriver.Environment;
import net.sf.saxon.testdriver.Xslt30TestSuiteDriverHE;

/**
 * Created by debbie on 12/09/14.
 */
public class Xslt30TestSuiteDriver extends Xslt30TestSuiteDriverHE {


    public Xslt30TestSuiteDriver() {
        super();
    }


    public static void main(String[] args) throws Exception {
        if (args.length == 0 || args[0].equals("-?")) {
            usage();
        }

        new Xslt30TestSuiteDriver().go(args);
    }


    @Override
    public void go(String[] args) throws Exception {
        driverProc = new Processor(true);
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



    @Override
    public boolean dependencyIsSatisfied(XdmNode dependency, Environment env) {
        String type = dependency.getNodeName().getLocalName();
        String value = dependency.getAttributeValue(new QName("value"));
        boolean inverse = "false".equals(dependency.getAttributeValue(new QName("satisfied")));
        if ("spec".equals(type)) {
            boolean atLeast = value.endsWith("+");
            value = value.replace("+", "");
            String specName = spec.specAndVersion.replace("XT", "XSLT");
            int order = value.compareTo(specName);
            return atLeast ? order <= 0 : order == 0;
            //return !(value.equals("XSLT20") && spec == Spec.XT30);
        } else if ("feature".equals(type)) {

            if ("XML_1.1".equals(value) && !inverse) {
                if (env != null) {
                    env.resetActions.add(new Environment.ResetAction() {
                        @Override
                        public void reset(Environment env) {
                            env.processor.setXmlVersion("1.0");
                        }
                    });
                    env.processor.setXmlVersion("1.1");
                    return true;
                } else {
                    return false;
                }
            } else if ("disabling_output_escaping".equals(value)) {
                return !inverse;
            } else if ("schema_aware".equals(value)) {
                if (!treeModel.isSchemaAware() && !inverse) {
                    return false; // cannot use the selected tree model for schema-aware tests
                }
                if (env != null && env.processor.isSchemaAware() != !inverse) {
                    // Don't attempt to run non-SA tests with an SA processor; the presence of constructs like
                    // import schema will switch on schema-awareness.
                    return false;
                }
                if (env != null) {
                    env.resetActions.add(new Environment.ResetAction() {
                        @Override
                        public void reset(Environment env) {
                            env.xsltCompiler.setSchemaAware(false);
                        }
                    });
                    env.xsltCompiler.setSchemaAware(!inverse);
                    return true;
                } else {
                    return false;
                }
                //env.xsltCompiler.setSchemaAware(!inverse);
                //return true;
            } else if ("namespace_axis".equals(value)) {
                return !inverse;
            } else if ("streaming".equals(value)) {
                if(!"EE".equals(env.processor.getSaxonEdition())) {
                    return false;
                }
                env.resetActions.add(new Environment.ResetAction() {
                    @Override
                    public void reset(Environment env) {
                        env.processor.setConfigurationProperty(FeatureKeys.STREAMABILITY, "off");
                        env.processor.setConfigurationProperty(FeatureKeys.STREAMING_FALLBACK, "off");
                    }
                });
                if (inverse) {
                    env.processor.setConfigurationProperty(FeatureKeys.STREAMABILITY, "off");
                    env.processor.setConfigurationProperty(FeatureKeys.STREAMING_FALLBACK, "off");
                } else {
                    switch (streaming) {
                        case 0: // -streaming:off
                            env.processor.setConfigurationProperty(FeatureKeys.STREAMABILITY, "off");
                            env.processor.setConfigurationProperty(FeatureKeys.STREAMING_FALLBACK, "on");
                            break;
                        case 1: // -streaming:std
                            env.processor.setConfigurationProperty(FeatureKeys.STREAMABILITY, "standard");
                            env.processor.setConfigurationProperty(FeatureKeys.STREAMING_FALLBACK, "off");
                            break;
                        case 2:
                            env.processor.setConfigurationProperty(FeatureKeys.STREAMABILITY, "extended");
                            env.processor.setConfigurationProperty(FeatureKeys.STREAMING_FALLBACK, "off");
                            break;
                    }
                }
                return true;
            } else if ("backwards_compatibility".equals(value)) {
                return !inverse;
            } else if ("Saxon-PE".equals(value)) {
                return !inverse;
            } else if ("Saxon-EE".equals(value)) {
                return !inverse;
            }
            return false;
        } else if ("xsd-version".equals(type)) {
            if ("1.1".equals(value)) {
                if (env != null) {
                    env.processor.setConfigurationProperty(FeatureKeys.XSD_VERSION, inverse ? "1.0" : "1.1");
                } else {
                    return false;
                }
            } else if ("1.0".equals(value)) {
                if (env != null) {
                    env.processor.setConfigurationProperty(FeatureKeys.XSD_VERSION, inverse ? "1.1" : "1.0");
                } else {
                    return false;
                }
            }
            return true;
        } else if ("available_documents".equals(type)) {
            return !inverse;
        } else if ("default_language_for_numbering".equals(type)) {
            return !inverse;
        } else if ("languages_for_numbering".equals(type)) {
            return !inverse;
        } else if ("supported_calendars_in_date_formatting_functions".equals(type)) {
            return !inverse;
        } else if ("default_calendar_in_date_formatting_functions".equals(type)) {
            return !inverse;
        } else if ("maximum_number_of_decimal_digits".equals(type)) {
            return !inverse;
//        } else if ("collation_uri".equals(type)) {
//            return !inverse;
//        } else if ("statically_known_collations".equals(type)) {
//            if (value.equals("http://www.w3.org/xslts/collation/caseblind") && !inverse) {
//                env.processor.getUnderlyingConfiguration().setCollationURIResolver(
//                        new StandardCollationURIResolver() {
//                            public StringCollator resolve(String uri, String base, Configuration config) {
//                                if ("http://www.w3.org/xslts/collation/caseblind".equals(uri)) {
//                                    return super.resolve("http://saxon.sf.net/collation?ignore-case=yes", "", config);
//                                } else {
//                                    return super.resolve(uri, base, config);
//                                }
//                            }
//                        }
//                );
//            }
//            // Alternative case-blind collation URI used in QT3 tests
//            if (value.equals("http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind") && !inverse) {
//                env.processor.getUnderlyingConfiguration().setCollationURIResolver(
//                        new StandardCollationURIResolver() {
//                            public StringCollator resolve(String uri, String base, Configuration config) {
//                                if ("http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind".equals(uri)) {
//                                    return super.resolve("http://saxon.sf.net/collation?ignore-case=yes", "", config);
//                                } else {
//                                    return super.resolve(uri, base, config);
//                                }
//                            }
//                        }
//                );
//            }
//            return true;
        } else if ("default_output_encoding".equals(type)) {
            return !inverse;
        } else if ("unparsed_text_encoding".equals(type)) {
            return !inverse;
        } else if ("year_component_values".equals(type)) {
            return !inverse;
        } else if ("additional_normalization_form".equals(type)) {
            return !inverse;
        } else if ("recognize_id_as_uri_fragment".equals(type)) {
            return !inverse;
        } else if ("on-multiple-match".equals(type)) {
            env.resetActions.add(new Environment.ResetAction() {
                @Override
                public void reset(Environment env) {
                    env.xsltCompiler.getUnderlyingCompilerInfo().setRecoveryPolicy(Configuration.RECOVER_WITH_WARNINGS);
                }
            });
            if (value.equals("error")) {
                env.xsltCompiler.getUnderlyingCompilerInfo().setRecoveryPolicy(Configuration.DO_NOT_RECOVER);
            } else {
                env.xsltCompiler.getUnderlyingCompilerInfo().setRecoveryPolicy(Configuration.RECOVER_SILENTLY);
            }
            return true;
        } else if ("ignore-doc-failure".equals(type)) {
            env.resetActions.add(new Environment.ResetAction() {
                @Override
                public void reset(Environment env) {
                    env.xsltCompiler.getUnderlyingCompilerInfo().setRecoveryPolicy(Configuration.RECOVER_WITH_WARNINGS);
                }
            });
            if (value.equals("false")) {
                env.xsltCompiler.getUnderlyingCompilerInfo().setRecoveryPolicy(Configuration.DO_NOT_RECOVER);
            } else {
                env.xsltCompiler.getUnderlyingCompilerInfo().setRecoveryPolicy(Configuration.RECOVER_SILENTLY);
            }
            return true;
        } else if ("combinations_for_numbering".equals(type)) {
            return !inverse;
        } else {
            println("**** dependency not recognized: " + type);
            return false;
        }
    }
}
