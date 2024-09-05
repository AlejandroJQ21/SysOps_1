@echo off
cls
echo ================================
echo      Identificador de Triangulos
echo ================================
echo.
echo Ingrese los lados del triangulo
echo.

set /p lado1="Ingresa el primer lado (base): "
set /p lado2="Ingresa el segundo lado (lado izquierdo): "
set /p lado3="Ingresa el tercer lado (lado derecho): "

rem Comprobar si es equilátero
if "%lado1%"=="%lado2%" if "%lado2%"=="%lado3%" (
    echo.
    echo ================================
    echo El triangulo es Equilatero.
    echo ================================
    goto fin
)

rem Comprobar si es isósceles
if "%lado1%"=="%lado2%" if not "%lado2%"=="%lado3%" (
    echo.
    echo ================================
    echo El triangulo es Isosceles.
    echo ================================
    goto fin
)

if "%lado2%"=="%lado3%" if not "%lado1%"=="%lado3%" (
    echo.
    echo ================================
    echo El triangulo es Isosceles.
    echo ================================
    goto fin
)

if "%lado1%"=="%lado3%" if not "%lado2%"=="%lado1%" (
    echo.
    echo ================================
    echo El triangulo es Isosceles.
    echo ================================
    goto fin
)

rem Si no es equilátero ni isósceles, es escaleno
echo.
echo ================================
echo El triangulo es Escaleno.
echo ================================

:fin
echo.
pause 
