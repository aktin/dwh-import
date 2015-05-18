
rem    Runs the XQuery use cases, including those that are schema-aware (the STRONG use cases)

rem    set the variable JAVA to the place where the java command is located, for example
rem    set JAVA="c:\Program Files\java\jdk1.5.0_06\bin\java"

set JAVA=java

rem    modify the following line to set the classpath
rem    for example:
rem    set CP=-cp c:\saxon\saxon9ee.jar;c:\saxon-license

set CP=

%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q1.xq
%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q4.xq
%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q4a.xq
%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q5.xq
%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q6.xq
%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q7.xq
%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q7a.xq
%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q8.xq
%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q9.xq
%JAVA% %CP% com.saxonica.Query -t -val:lax strong/q10.xq
%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q11.xq
%JAVA% %CP% com.saxonica.Query -t -val:strict strong/q12.xq

