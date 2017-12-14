@echo off
cls
echo Connect your Kindle and check the drive letter
set /p letter= "Enter your Kindle device drive letter and press ENTER 'ex: e' "
set path=%letter%:\system\.assets
REM rd %path% /S /Q
REM type nul > %path%
attrib -r -s -h /S /D %path%

if exist %path%\* (
	msg * Ha ocurrido un error, los anuncios de tu Kindle no se han podido eliminar correctamente.
	cls
	echo Ha ocurrido un error, los anuncios de tu Kindle no se han podido eliminar correctamente.
) else (
	msg * Los anuncios de tu Kindle se han eliminado correctamente.
	cls
	echo Los anuncios de tu Kindle se han eliminado correctamente.
)
