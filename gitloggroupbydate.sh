usage()
{
cat << EOF

Uso: $0 <options>

Este script transforma todas las imagenes de una cierta carpeta al formato
PGM, y las guarda en un subdirectorio llamado pgm/ dentro de la carpeta
mencionada.

OPCIONES:
	-h	Imprime este mensaje de ayuda de uso
	-d	Carpeta donde estan las imagenes a transformar
	-e	Extension de los archivos a transformar
	-t	Carpeta destino de imagenes transformadas (default: pgm)
	-r	Argumento -resize usado por ImageMagick (default: 100%)

EOF
}

while getopts "hs:u:a:" opt; do
	case $opt in
		h)
			usage
			;;
		s)
			SINCE=$OPTARG
			;;
		u)
			UNTIL=$OPTARG
			;;
		a)
			AUTHOR=$OPTARG
			;;
	esac
done

FORMAT="	*	%s"

#VALORES POR DEFECTO
if [ -z "$SINCE" ]; then SINCE="1 week ago"; fi
if [ -z "$UNTIL" ]; then UNTIL="now"; fi
if [ -z "$AUTHOR" ]; then
	AUTHOR="%*"
	FORMAT="	* [%an]	%s"
fi

echo "CHANGELOG"
echo ----------------------
git log --author="$AUTHOR" --no-merges --format="%cd" --date=short --since="$SINCE" --until="$UNTIL"  | sort -u | while read DATE ; do
    echo
    echo "\033[40m\033[36m[$DATE]\033[0m"
    GIT_PAGER=cat git log --author="$AUTHOR" --no-merges --format="$FORMAT" --since="$DATE 00:00:00" --until="$DATE 24:00:00"
done
