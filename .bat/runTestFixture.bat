set CHECK1=.\SingleEmbeddedViewer.jar;
set CLASSPATH=%CHECK1%
REM
REM JRE_HOME set to jre1.5.0_06 by default.  If using a different JRE,
REM edit this file to change where JRE_HOME points.
REM
set JRE_HOME=C:\Program Files\Java\jre1.5.0_06
echo %CLASSPATH%
"%JRE_HOME%\bin\java" com.ugs.plmvis.testapps.testfixture_orig.MasterContainer
