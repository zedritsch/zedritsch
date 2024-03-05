@echo off

if not exist bin mkdir bin

pushd bin

cl -Fe..\program.exe -I..\lib ..\src\**

popd