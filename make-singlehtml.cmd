SETLOCAL

call make.cmd singlehtml
if %errorlevel% neq 0 goto :error 

:error
pause

:end
