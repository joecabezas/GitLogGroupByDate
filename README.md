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

SAMPLE OUTPUTS
--------------

$ sh gitloggroupbydate.sh -s "2012-06-11" -u "2012-06-12"

	CHANGELOG
	----------------------

	[2012-06-11]
		* [ATAKAMALABS\ntroncoso]	TBYM-302 Fix for attack while building.
		* [ATAKAMALABS\alexis]	Added images to tribes
		* [ATAKAMALABS\alexis]	Added tribe avatar on the list and map also applied the control for show 3 tribes
		* [ATAKAMALABS\alexis]	Added tribe avatar on the list and map also applied the control for show 3 tribes
		* [ATAKAMALABS\javier]	Fix bug TBYM-289
		* [ATAKAMALABS\alexis]	Added WM functionality .
		* [ATAKAMALABS\ntroncoso]	TBYM-281 Resolved
		* [ATAKAMALABS\ntroncoso]	TYBM-282 Replaced Click for Tap
		* [ATAKAMALABS\ntroncoso]	Added more guidance
		* [ATAKAMALABS\javier]	Fix TBYM-152. Delete some spaces.
		* [ATAKAMALABS\javier]	Delete spaces
		* [ATAKAMALABS\javier]	Remove extra 10000 of Shiny!
		* [ATAKAMALABS\javier]	Delete some spaces
		* [ATAKAMALABS\javier]	Delete some spaces
		* [ATAKAMALABS\javier]	Delete some spaces

	[2012-06-12]
		* [ATAKAMALABS\alexis]	Fixed few bugs in the WM base about the render of the buildings
		* [ATAKAMALABS\ntroncoso]	Map button is disabled if no maproom
		* [ATAKAMALABS\javier]	Fix speed up timeout for resource producer an hatchery
		* [ATAKAMALABS\javier]	Remove spaces
		* [ATAKAMALABS\alexis]	Added update and save button to DebugLayer
		* [ATAKAMALABS\alexis]	Fixed delete buildings bug when the user moves to AttackMode also added new remote method updatesaved
		* [ATAKAMALABS\ntroncoso]	Fixed conflicts
		* [ATAKAMALABS\javier]	Add Tick method in GLOBAL. Tick is executed periodically to do some checks, in particular, it removes speed ups when timeout is reached.
		* [ATAKAMALABS\javier]	Fix name on Building selector window!
		* [ATAKAMALABS\javier]	Remove spaces
		* [ATAKAMALABS\javier]	Delete spaces
		* [ATAKAMALABS\javier]	Change Monster Housing name in order to fix bug TBYM-254
		* [ATAKAMALABS\joe]	Added Pagination Class, also deleted trailing spaces in Button,js
		* [ATAKAMALABS\joe]	Added menu animations
		* [ATAKAMALABS\joe]	Added items positions in Layouts, and update functions now accepts boolean parameter to make setPositions or not
		* [ATAKAMALABS\joe]	deleted trailing spaces
		* [ATAKAMALABS\joe]	WIP: moving menu button
		* [ATAKAMALABS\ntroncoso]	Better TUTORIAL blockout. fix for TBYM-100
		* [ATAKAMALABS\ntroncoso]	Cleand up white space
		* [ATAKAMALABS\ntroncoso]	Added attack steps functions
		* [ATAKAMALABS\alexis]	Fixed an exception, added a control to storeData attribute

sh gitloggroupbydate.sh -u "2 days ago" -a "joe"

	CHANGELOG
	----------------------

	[2012-06-14]
		*	WindowBuildingSelect is now using full implemented Pagination system, still needs art
		*	paginator in building select working, still needs implementation
		*	deleted trailing spaces
		*	Refactoring PagesCollection, now it is PagesFactory
		*	Finalized implementation of Paginator, PagesCollection, and LinearPagesCollection
		*	deleted trailing whitespaces in Main.js
		*	Fixed size in WindowsMonsterLocker, now adaps to device's screen
		*	Added PagesCollection and an useful example extension to it: LinearPagesCollection
