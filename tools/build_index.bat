@echo off
if %1$==$ goto error
if %2$==$ goto error
grep "<h[1-9]" %1 | sed -r --file=index.sed >%2
echo Complete. See %2
echo Note that headings split between multiple lines are not handled correctly
echo and first must be edited down to a single line.
goto ok

:error
echo Invoke: build_index html-input-file text-output-file

:ok
