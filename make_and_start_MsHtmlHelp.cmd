SETLOCAL
rem TODO: adapt
path=%path%;C:\Program Files (x86)\HTML Help Workshop

call make.cmd htmlhelp
if %errorlevel% neq 0 goto :error 

hhc.exe "build\htmlhelp\Git Extensions Documentation.hhc"
if %errorlevel% neq 0 goto :error

start "build\htmlhelp\Git Extensions Documentation.chm"
if %errorlevel% neq 0 goto :error

goto :end

:error
echo BUILD ERROR
pause

:end
