SETLOCAL

call make.cmd html
if %errorlevel% neq 0 goto :error 

:error
pause

:end
