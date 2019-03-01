__HEADER([Josef Kubin], [2018/09/18], [proverbs])

define([AUTHOR], [Karel Hrubý])

# define counter to address buffers
define([BUFFER_IDX], defn([COUNT_UP]))

# init counter
BUFFER_IDX(1)

# indices for description (not used yet)
define([DESCRIPTION_HDR],	BUFFER_IDX)
define([DESCRIPTION_HDR_END],	BUFFER_IDX)

# indices for html, xml, ....
define([START_INDEX_HDR],	BUFFER_IDX)
#
# nothing in between
#
define([JANUARY_HDR],	BUFFER_IDX)
define([FEBRUARY_HDR],	BUFFER_IDX)
define([MARCH_HDR],	BUFFER_IDX)
define([APRIL_HDR],	BUFFER_IDX)
define([MAY_HDR],	BUFFER_IDX)
define([JUNE_HDR],	BUFFER_IDX)
define([JULY_HDR],	BUFFER_IDX)
define([AUGUST_HDR],	BUFFER_IDX)
define([SEPTEMBER_HDR],	BUFFER_IDX)
define([OCTOBER_HDR],	BUFFER_IDX)
define([NOVEMBER_HDR],	BUFFER_IDX)
define([DECEMBER_HDR],	BUFFER_IDX)

define([AFTER_MONTHS],	BUFFER_IDX)

define([SPRING_HDR],	BUFFER_IDX)
define([SUMMER_HDR],	BUFFER_IDX)
define([AUTUMN_HDR],	BUFFER_IDX)
define([WINTER_HDR],	BUFFER_IDX)

define([AFTER_SEASONS],	BUFFER_IDX)

define([FARM_HDR],	BUFFER_IDX)

define([DECLARATIONS],	BUFFER_IDX)

define([CLOSE_NAVIG],	BUFFER_IDX)

define([JANUARY_ABC],	BUFFER_IDX)
define([JANUARY_ABC_END],	BUFFER_IDX)
define([JANUARY_SCN],	BUFFER_IDX)
define([JANUARY_SCN_END],	BUFFER_IDX)
define([FEBRUARY_ABC],	BUFFER_IDX)
define([FEBRUARY_ABC_END],	BUFFER_IDX)
define([FEBRUARY_SCN],	BUFFER_IDX)
define([FEBRUARY_SCN_END],	BUFFER_IDX)
define([MARCH_ABC],	BUFFER_IDX)
define([MARCH_ABC_END],	BUFFER_IDX)
define([MARCH_SCN],	BUFFER_IDX)
define([MARCH_SCN_END],	BUFFER_IDX)
define([APRIL_ABC],	BUFFER_IDX)
define([APRIL_ABC_END],	BUFFER_IDX)
define([APRIL_SCN],	BUFFER_IDX)
define([APRIL_SCN_END],	BUFFER_IDX)
define([MAY_ABC],	BUFFER_IDX)
define([MAY_ABC_END],	BUFFER_IDX)
define([MAY_SCN],	BUFFER_IDX)
define([MAY_SCN_END],	BUFFER_IDX)
define([JUNE_ABC],	BUFFER_IDX)
define([JUNE_ABC_END],	BUFFER_IDX)
define([JUNE_SCN],	BUFFER_IDX)
define([JUNE_SCN_END],	BUFFER_IDX)
define([JULY_ABC],	BUFFER_IDX)
define([JULY_ABC_END],	BUFFER_IDX)
define([JULY_SCN],	BUFFER_IDX)
define([JULY_SCN_END],	BUFFER_IDX)
define([AUGUST_ABC],	BUFFER_IDX)
define([AUGUST_ABC_END],	BUFFER_IDX)
define([AUGUST_SCN],	BUFFER_IDX)
define([AUGUST_SCN_END],	BUFFER_IDX)
define([SEPTEMBER_ABC],	BUFFER_IDX)
define([SEPTEMBER_ABC_END],	BUFFER_IDX)
define([SEPTEMBER_SCN],	BUFFER_IDX)
define([SEPTEMBER_SCN_END],	BUFFER_IDX)
define([OCTOBER_ABC],	BUFFER_IDX)
define([OCTOBER_ABC_END],	BUFFER_IDX)
define([OCTOBER_SCN],	BUFFER_IDX)
define([OCTOBER_SCN_END],	BUFFER_IDX)
define([NOVEMBER_ABC],	BUFFER_IDX)
define([NOVEMBER_ABC_END],	BUFFER_IDX)
define([NOVEMBER_SCN],	BUFFER_IDX)
define([NOVEMBER_SCN_END],	BUFFER_IDX)
define([DECEMBER_ABC],	BUFFER_IDX)
define([DECEMBER_ABC_END],	BUFFER_IDX)
define([DECEMBER_SCN],	BUFFER_IDX)
define([DECEMBER_SCN_END],	BUFFER_IDX)

define([SPRING_ABC],	BUFFER_IDX)
define([SPRING_ABC_END],	BUFFER_IDX)
define([SPRING_SCN],	BUFFER_IDX)
define([SPRING_SCN_END],	BUFFER_IDX)
define([SUMMER_ABC],	BUFFER_IDX)
define([SUMMER_ABC_END],	BUFFER_IDX)
define([SUMMER_SCN],	BUFFER_IDX)
define([SUMMER_SCN_END],	BUFFER_IDX)
define([AUTUMN_ABC],	BUFFER_IDX)
define([AUTUMN_ABC_END],	BUFFER_IDX)
define([AUTUMN_SCN],	BUFFER_IDX)
define([AUTUMN_SCN_END],	BUFFER_IDX)
define([WINTER_ABC],	BUFFER_IDX)
define([WINTER_ABC_END],	BUFFER_IDX)
define([WINTER_SCN],	BUFFER_IDX)
define([WINTER_SCN_END],	BUFFER_IDX)

define([FARM_ABC],	BUFFER_IDX)
define([FARM_ABC_END],	BUFFER_IDX)
define([FARM_SCN],	BUFFER_IDX)
define([FARM_SCN_END],	BUFFER_IDX)

# indices for array of pointers
define([START_INDEX_PTR],	BUFFER_IDX)
#
# nothing in between
#
define([JANUARY_PTR],	BUFFER_IDX)
define([FEBRUARY_PTR],	BUFFER_IDX)
define([MARCH_PTR],	BUFFER_IDX)
define([APRIL_PTR],	BUFFER_IDX)
define([MAY_PTR],	BUFFER_IDX)
define([JUNE_PTR],	BUFFER_IDX)
define([JULY_PTR],	BUFFER_IDX)
define([AUGUST_PTR],	BUFFER_IDX)
define([SEPTEMBER_PTR],	BUFFER_IDX)
define([OCTOBER_PTR],	BUFFER_IDX)
define([NOVEMBER_PTR],	BUFFER_IDX)
define([DECEMBER_PTR],	BUFFER_IDX)

define([SPRING_PTR],	BUFFER_IDX)
define([SUMMER_PTR],	BUFFER_IDX)
define([AUTUMN_PTR],	BUFFER_IDX)
define([WINTER_PTR],	BUFFER_IDX)

define([FARM_PTR],	BUFFER_IDX)

define([LAST_BUFFER],	BUFFER_IDX)

# forget unused macros (if you want to be perfect ...)
undefine(

	[BUFFER_IDX],

)

# define short codes for items
define([JANUARY_CODE],		[jan])
define([FEBRUARY_CODE],		[feb])
define([MARCH_CODE],		[mar])
define([APRIL_CODE],		[apr])
define([MAY_CODE],		[may])
define([JUNE_CODE],		[jun])
define([JULY_CODE],		[jul])
define([AUGUST_CODE],		[aug])
define([SEPTEMBER_CODE],	[sep])
define([OCTOBER_CODE],		[oct])
define([NOVEMBER_CODE],		[nov])
define([DECEMBER_CODE],		[dec])

define([SPRING_CODE],		[spr])
define([SUMMER_CODE],		[sum])
define([AUTUMN_CODE],		[aut])
define([WINTER_CODE],		[wint])

define([FARM_CODE],		[farm])

# xml wrapping tags
define([JANUARY_WRAP],		[month])
define([FEBRUARY_WRAP],		defn([JANUARY_WRAP]))
define([MARCH_WRAP],		defn([JANUARY_WRAP]))
define([APRIL_WRAP],		defn([JANUARY_WRAP]))
define([MAY_WRAP],		defn([JANUARY_WRAP]))
define([JUNE_WRAP],		defn([JANUARY_WRAP]))
define([JULY_WRAP],		defn([JANUARY_WRAP]))
define([AUGUST_WRAP],		defn([JANUARY_WRAP]))
define([SEPTEMBER_WRAP],	defn([JANUARY_WRAP]))
define([OCTOBER_WRAP],		defn([JANUARY_WRAP]))
define([NOVEMBER_WRAP],		defn([JANUARY_WRAP]))
define([DECEMBER_WRAP],		defn([JANUARY_WRAP]))

define([SPRING_WRAP],		[season])
define([SUMMER_WRAP],		defn([SPRING_WRAP]))
define([AUTUMN_WRAP],		defn([SPRING_WRAP]))
define([WINTER_WRAP],		defn([SPRING_WRAP]))

define([FARM_WRAP],		[farm])
