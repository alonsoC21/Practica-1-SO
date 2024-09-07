//Equipo Doritos Nacho
//04/09/2024
//version 1.0
//Programa que sirve para el calculo de conversiones de unidades

@echo off
:menu
cls
    echo =============================
    echo       CONVERSOR DE UNIDADES      
    echo =============================
    echo 1. Convertir Unidades de Tiempo
    echo 2. Convertir Unidades de Velocidad
    echo 3. Convertir Unidades de Longitud
    echo 4. Convertir Unidades de Moneda
    echo 5. Salir
    echo =============================
    set /p opcion="Selecciona una opcion (1-5): "

    if %opcion%==1 goto tiempo
    if %opcion%==2 goto velocidad
    if %opcion%==3 goto longitud
    if %opcion%==4 goto moneda
    if %opcion%==5 goto salir
    goto menu

:tiempo
    cls
    echo =============================
    echo    CONVERSOR DE TIEMPO      
    echo =============================
    echo 1. Horas a Minutos
    echo 2. Minutos a Segundos
    echo 3. Segundos a Milisegundos
    echo 4. Volver al Menu Principal
    echo =============================
    set /p tiempo_opcion="Selecciona una opcion (1-4): "

    if %tiempo_opcion%==1 goto horasmin
    if %tiempo_opcion%==2 goto minutosseg
    if %tiempo_opcion%==3 goto segmilis
    if %tiempo_opcion%==4 goto menu
    pause
    goto tiempo

:horasmin
    set /p horas="Ingresa las horas: "
    set /a resultado=horas*60
    echo %horas% horas son %resultado% minutos
    pause
    goto tiempo

:minutosseg
    set /p minutos="Ingresa los minutos: "
    set /a resultado=minutos*60
    echo %minutos% minutos son %resultado% segundos
    pause
    goto tiempo

:segmilis
    set /p segundos="Ingresa los segundos: "
    set /a resultado=segundos*1000
    echo %segundos% segundos son %resultado% milisegundos
    pause
    goto tiempo

:velocidad
    cls
    echo =============================
    echo   CONVERSOR DE VELOCIDAD    
    echo =============================
    echo 1. Km/h a m/s
    echo 2. m/s a Km/h
    echo 3. Volver al Menu Principal
    echo =============================
    set /p velocidad_opcion="Selecciona una opcion (1-3): "

    if %velocidad_opcion%==1 goto kmhms
    if %velocidad_opcion%==2 goto msakh
    if %velocidad_opcion%==3 goto menu
    pause
    goto velocidad

:kmhms
    set /p kmh="Ingresa la velocidad en Km/h: "
    set /a resultado=kmh*1000/3600
    echo %kmh% Km/h son %resultado% m/s
    pause
    goto velocidad

:msakh
    set /p ms="Ingresa la velocidad en m/s: "
    set /a resultado=ms*3600/1000
    echo %ms% m/s son %resultado% Km/h
    pause
    goto velocidad

:longitud
    cls
    echo =============================
    echo   CONVERSOR DE LONGITUD     
    echo =============================
    echo 1. Kilometros a Millas
    echo 2. Metros a Pies
    echo 3. Pulgadas a Centimetros
    echo 4. Volver al Menu Principal
    echo =============================
    set /p longitud_opcion="Selecciona una opcion (1-4): "

    if %longitud_opcion%==1 goto kmmillas
    if %longitud_opcion%==2 goto metrospies
    if %longitud_opcion%==3 goto pulgcent
    if %longitud_opcion%==4 goto menu
    pause
    goto longitud

:kmmillas
    set /p km="Ingresa los kilometros: "
    set /a resultado=km*621/1000
    echo %km% kilometros son %resultado% millas
    pause
    goto longitud

:metrospies
    set /p metros="Ingresa los metros: "
    set /a resultado=metros*328/1000
    echo %metros% metros son %resultado% pies
    pause
    goto longitud

:pulgcent
    set /p pulgadas="Ingresa las pulgadas: "
    set /a resultado=pulgadas*254/100
    echo %pulgadas% pulgadas son %resultado% centimetros
    pause
    goto longitud

:moneda
    cls
    echo =============================
    echo   CONVERSOR DE MONEDA       
    echo =============================
    echo 1. Dolares a Euros
    echo 2. Euros a Libras
    echo 3. Pesos a Dolares
    echo 4. Volver al Menu Principal
    echo =============================
    set /p moneda_opcion="Selecciona una opcion (1-4): "

    if %moneda_opcion%==1 goto dolareseuros
    if %moneda_opcion%==2 goto euroslibras
    if %moneda_opcion%==3 goto pesosdolares
    if %moneda_opcion%==4 goto menu
    pause
    goto moneda

:dolareseuros
    set /p dolares="Ingresa los dolares: "
    set /a resultado=dolares*90/100
    echo %dolares% dolares son %resultado% euros
    pause
    goto moneda

:euroslibras
    set /p euros="Ingresa los euros: "
    set /a resultado=euros*87/100
    echo %euros% euros son %resultado% libras
    pause
    goto moneda

:pesosdolares
    set /p pesos="Ingresa los pesos: "
    set /a resultado=pesos*55/1000
    echo %pesos% pesos son %resultado% dolares
    pause
    goto moneda

:salir
exit