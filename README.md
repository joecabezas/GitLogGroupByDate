GitLogGroupByDate
=================

a shell script to show commits grouped by date, using date range and author defined by user with default values

USAGE
-----

* ./gitloggroupbydate.sh [-s <SINCE DATE>] [-u <UNTIL DATE>] [-a <AUTHOR>]

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
