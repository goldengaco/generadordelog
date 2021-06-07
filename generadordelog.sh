#==================================================================#
# script para generar log                                          #
# Autor: Carlos Javier García Contreras - goldengaco               #
# Fecha : 06/06/2021                                               #
#==================================================================#


rutalog=/agregar/ruta/queserequiere/parael/log/
archivolog=archivo.log
rutafinal=$rutalog$archivolog 

#echo $rutafinal
palabraagregada01='error de prueba'
palabraagregada02='palabra1 a buscar o frase1 a buscar en log '
palabraagregada03='palabra2 a buscar o frase2 a buscar en log '

insertarlog() {

echo "#####################" >> $rutafinal
echo "Incio de proceso"
date >> $rutafinal
uptime >> $rutafinal
free -h >> $rutafinal
nproc >> $rutafinal
echo $palabraagregada01 >> $rutafinal
echo $palabraagregada02 >> $rutafinal
echo $palabraagregada03 >> $rutafinal
uname -a >> $rutafinal
echo "Final de proceso"
echo "#####################" >> $rutafinal
}

for  ((i=1; i<50; i++))
do
    insertarlog
done 

