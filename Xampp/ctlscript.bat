@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\CNWeb\CSE485_175A071210\Xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\ingres\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\ingres\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\mysql\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\mysql\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\postgresql\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\apache\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\apache\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\openoffice\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\apache-tomcat\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\resin\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\resin\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\jboss\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\jboss\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\jetty\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\jetty\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\subversion\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\CNWeb\CSE485_175A071210\Xampp\lucene\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\lucene\scripts\ctl.bat START)
if exist D:\CNWeb\CSE485_175A071210\Xampp\third_application\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\CNWeb\CSE485_175A071210\Xampp\third_application\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\third_application\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\lucene\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\CNWeb\CSE485_175A071210\Xampp\subversion\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\subversion\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\jetty\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\jetty\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\jboss\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\jboss\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\resin\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\resin\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\CNWeb\CSE485_175A071210\Xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\openoffice\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\apache\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\apache\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\ingres\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\ingres\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\mysql\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\mysql\scripts\ctl.bat STOP)
if exist D:\CNWeb\CSE485_175A071210\Xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\CNWeb\CSE485_175A071210\Xampp\postgresql\scripts\ctl.bat STOP)

:end

