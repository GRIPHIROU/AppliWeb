@echo on

SET mypath=%~dp0
SET tomcatpath=C:\Program Files\Apache Software Foundation\Tomcat 9.0

call mvn scm:checkout -DconnectionUrl=scm:git:git@github.com:GRIPHIROU/AppliWeb.git -DcheckoutDirectory=Livraison

cd %mypath%\Livraison\


call mvn clean package

SET src=C:\formationmaven\TPs\TP3\monappli\Livraison\monappli-web\target\monappli-web.war
SET dest="C:\Program Files\Apache Software Foundation\webapps"

copy %src% %dest%

cd %tomcatpath%

call startup.bat

start chrome http://localhost:8081/monappli/

pause