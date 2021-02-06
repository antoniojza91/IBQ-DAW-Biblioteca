
# Trabajamos en un fichero temporal
cd /tmp
# Descargamos el código de la aplicación de GitHub
git clone https://github.com/javiermmIBQ/Biblioteca

# Movemos carpetas y ficheros para generar la estructura estandar de un WAR
cd Biblioteca
cd build
mv classes ../WebContent/WEB-INF
cd ..
cd src
mv META-INF/* ../WebContent/WEB-INF/classes/
cd ..

cd WebContent

# Creamos el fichero WAR en la carpeta webapps de Tomcat
#
# "password" es la password del usuario de Ubuntu para poder ejecutar sudo
# cambiarla por la vuestra.
echo "profesor" | sudo -S jar -cvf /opt/tomcat/webapps/Biblioteca.war *

# Borramos todo para dejar la carpeta temporal limpia
echo "profesor" | sudo -S rm -rf /tmp/biblioteca-DAWEB
