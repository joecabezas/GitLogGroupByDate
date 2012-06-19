usage()
{
cat << EOF

GitLogGroupByDate
=================

a shell script to show commits grouped by date, using date range and author defined by user with default values

USAGE
-----

* ./gitloggroupbydate.sh [-s <SINCE DATE>] [-u <UNTIL DATE>] [-a <AUTHOR>]

-h	show this help page

-s	since date (default "1 week ago")
	date to begin log, see DATE EXAMPLES

-u	until date (default "now")
	date to end log, see DATE EXAMPLES

-a	author name
	filter commits by author (can be a partial name)

DATE EXAMPLES
-------------

	"2012-06-11", "11 jun", "yesterday", "1 week ago"

USAGE EXAMPLES
--------------

Shows commits between jun 11th and jun 15th

	./gitloggroupbydate.sh -s "2012-06-11" -u "2012-06-15"

Shows commits made by "joe", since jun 11th until today

	./gitloggroupbydate.sh -s "11 jun" -u "today" -a "joe"

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
