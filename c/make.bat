@echo off

set retry=0

if not exist bin mkdir bin

pushd bin

:compile
cl -Fe..\program.exe -I..\lib ..\src\** 2>NUL

if %retry%==0 if %errorlevel%==9009 (
	set retry=1

	call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64

	goto compile
)

popd