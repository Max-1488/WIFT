# WIFT
WIFT  es un marco de  herramientas  de hackign a redes wifi, pueden automatizar los ataques de distintas herramientas en tan solo poco tiempo 

Como funciona.

Wifi Phisher: El primer paso cuenta con tener una tarjeta wifi que soporte el modo monitor, wifi-phisher creara una suplatancion de la red y conectara automaticamente a los clientes de la red verdadera y asi poder obtener la clave wifi 

Wifi-Cracking: Este cuenta con el marco de hackeo de aircrak, para la captura de handshake y decifrado de contraseña la herramienta trabajara por si sola, con los datos que le proporciones.

Wifi-Reaver: Marco de hackeo a a redes wifi que tenga activado el WPS PIN en los routers uno de los metodos mas eficazes y faciles dde usar, ademas cuenta con pixiewps para decifrar el pin para asi obtener la contraseña WPA, WPA.

Wifi-Access-Point: Esta herramienta crea una red wifi donde se puedan conectar los usuarios para asi obtener su trafico de red usando la suite de wireshark.
Modo de uso:
Lo primero será poner nuestra tarjeta wireless en modo monitor, comprobaremos primero que ID tiene en Kali nuestra tarjeta, en mi caso una alfha.
![im1](https://user-images.githubusercontent.com/64449711/97355477-92918400-185c-11eb-8a69-3afd0b2a705a.jpg)

Una vez visto que es la wlan0 vamos a realizar lo dicho y en lo que podremos observar que nos encontramos con el primer problema, existen procesos que no lo permiten.
![im2](https://user-images.githubusercontent.com/64449711/97357023-c1105e80-185e-11eb-8483-1b7f5db55647.jpg)
Para «matar» estos y que nos permita activar el modo monitor podemos ejecutar el comando airmon-ng check kill de la suite aircrack  y a continuación activar de nuevo el modo.
![im3](https://user-images.githubusercontent.com/64449711/97357027-c2418b80-185e-11eb-8cc8-0e7b269dc02d.jpg)
Vamos a crear el wifiAP con el nombre WifiTSS y activarlo haciendo uso de airbase-ng
![im4](https://user-images.githubusercontent.com/64449711/97357031-c40b4f00-185e-11eb-8659-9073a3a55f1b.jpg)
El siguiente paso será enrutar a los clientes que se conecten a nuestro AP Falso para que dispongan de conexión a Internet a través de nuestra red, la interfaz eth0, y así poder capturar el tráfico con un sniffer por ejemplo. Haremos también uso de iptables limpiando la tabla y activar ip_forward, optaremos también por redirigir el tráfico que tenga como destino el puerto 80 pase por el 10000 donde podríamos hacer uso de sslstrip y capturar los paquetes. Configuraremos también la interfaz “puente” at0.
![im5](https://user-images.githubusercontent.com/64449711/97357036-c53c7c00-185e-11eb-92b3-203332ce36ef.jpg)

Para crear un servidor dhcp podemos instalar un servidor sencillito con el comando  apt-get install isc-dhcp-server y crear un archivo de configuración a la red de dhcp. Una vez instalado lo ejecutamos y dejamos en espera de conexiones.(crear un archivo dhcpd.conf con lo siguientes datos)
![im6](https://user-images.githubusercontent.com/64449711/97357039-c66da900-185e-11eb-9c6e-d4e62e39dde7.jpg)
![im7](https://user-images.githubusercontent.com/64449711/97357047-c9689980-185e-11eb-82f7-dbf6e5ecf3cf.jpg)
Configuraremos también un servidor DNS, usaremos dnsmasq incluido en kali
![im8](https://user-images.githubusercontent.com/64449711/97357054-cbcaf380-185e-11eb-9bc1-95299629f8be.jpg)

Con esto tendriamosmontado el punto de acceso falso donde los clientes se conectarían, tendrían su conexión a internet y poder evaluar la red wifi en nuestra auditoria o taller wifi.
![im9](https://user-images.githubusercontent.com/64449711/97357058-cd94b700-185e-11eb-9f80-c7ba904d125c.jpg)


