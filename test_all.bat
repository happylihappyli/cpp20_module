@echo off
chcp 65001 >nul
echo Setting up UTF-8 encoding...
echo Running all test programs...
echo.
echo === Running main.exe ===
bin\main.exe
echo.
echo === Running numpy_demo.exe ===
bin\numpy_demo.exe
echo.
echo === Running numpy_test.exe ===
bin\numpy_test.exe
echo.
echo === Running flask_demo.exe ===
bin\flask_demo.exe
echo.
echo === Running simple_test.exe ===
bin\simple_test.exe
echo.
echo All tests completed.