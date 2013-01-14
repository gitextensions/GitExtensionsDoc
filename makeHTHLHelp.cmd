SETLOCAL
rem TODO: adapt
path=%path%;C:\Program Files (x86)\HTML Help Workshop

call make.cmd htmlhelp
if %errorlevel% neq 0  goto :error 

hhc.exe build\htmlhelp\GitExtensionsDocdoc.hhp
start build\htmlhelp\GitExtensionsDocdoc.chm
goto :end

:error
pause

:end
