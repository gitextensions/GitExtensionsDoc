SETLOCAL

call make.cmd html
if %errorlevel% neq 0 goto :error 

start build\html\index.html
if %errorlevel% neq 0 goto :error

goto :end

:error
echo BUILD ERROR
pause

:end
