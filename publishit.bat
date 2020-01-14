git clean -fdx
@if errorlevel 1 goto theend

call npm install
@if errorlevel 1 goto theend

git push
@if errorlevel 1 goto theend


vsce publish %1
@if errorlevel 1 goto theend


:theend