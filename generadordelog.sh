#==================================================================#
# script para generar log                                          #
# Autor: Carlos Javier García Contreras - goldengaco               #
# Fecha : 06/06/2021                                               #
#==================================================================#


rutalog=/home/syscarlos/script/jbossfuse/log/
archivolog=fuse.log
rutafinal=$rutalog$archivolog 

#echo $rutafinal
palabraagregada01='error de prueba'
#palabraagregada02='BeanFactory not initialized or already closed'
palabraagregada02='palabra a buscar o frases a buscar en log '


insertarlog() {

date >> $rutafinal
uptime >> $rutafinal
echo "#######" >> $rutafinal
free -h >> $rutafinal
nproc >> $rutafinal
echo $palabraagregada01 >> $rutafinal
echo $palabraagregada02 >> $rutafinal
uname -a >> $rutafinal
}

for  ((i=1; i<40; i++))
do
    insertarlog
done 

