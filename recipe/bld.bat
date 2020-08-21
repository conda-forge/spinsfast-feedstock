set CFG=%USERPROFILE%\pydistutils.cfg
echo [config] > "%CFG%"
echo compiler=mingw32 >> "%CFG%"
echo [build] >> "%CFG%"
echo compiler=mingw32 >> "%CFG%"
echo [build_ext] >> "%CFG%"
echo compiler=mingw32 >> "%CFG%"

set LIBRARY_PATH=%LIBRARY_LIB%;%LIBRARY_PATH%

"%PYTHON%" setup.py install
if errorlevel 1 exit 1
