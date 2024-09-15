@echo off
:inicio
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
    goto reiniciar
)

rem Comprobar si es isósceles
if "%lado1%"=="%lado2%" if not "%lado2%"=="%lado3%" (
    echo.
    echo ================================
    echo El triangulo es Isosceles.
    echo ================================
    goto reiniciar
)

if "%lado2%"=="%lado3%" if not "%lado1%"=="%lado3%" (
    echo.
    echo ================================
    echo El triangulo es Isosceles.
    echo ================================
    goto reiniciar
)

if "%lado1%"=="%lado3%" if not "%lado2%"=="%lado1%" (
    echo.
    echo ================================
    echo El triangulo es Isosceles.
    echo ================================
    goto reiniciar
)

rem Si no es equilátero ni isósceles, es escaleno
echo.
echo ================================
echo El triangulo es Escaleno.
echo ================================



rem El codigo funciona bien, pero le falta un redireccionamiento al inicio para que el usuario pueda ingresar nuevos datos despues de una consulta previa

rem Modificacion del codigo creando un bucle "goto" que redirija el programa hacia el inicio para ingresar nuevos datos
:reiniciar
echo.
echo ¿Desea verificar otro triangulo? (S/N):
set /p opcion=

if /I "%opcion%"=="S" goto inicio
if /I "%opcion%"=="N" goto fin

goto reiniciar

:fin
echo.
pause
