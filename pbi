

===================
date table: 

DateTable = 
ADDCOLUMNS(
    CALENDAR(DATE(2024, 7, 1), DATE(2024, 9, 30)),
    "Year", YEAR([Date]),
    "Month", MONTH([Date]),
    "Month Name", FORMAT([Date], "MMMM"),
    "Short Month", FORMAT([Date], "MMM"),
    "Week Number", WEEKNUM([Date]),                              -- Standard Week Number
    "ISO Week Number", WEEKNUM([Date], 21),                      -- ISO Week Number (week starts on Monday)
    "Day", DAY([Date]),                                          -- Day of the month
    "Weekday", WEEKDAY([Date]),                                  -- Weekday number (1 for Sunday, 7 for Saturday)
    "Day Name", FORMAT([Date], "dddd")                           -- Day name (e.g., Monday)
)


=========================
Formated Selected Metric = 
SWITCH(
    TRUE(),
    SELECTEDVALUE('disconnected table'[metric]) = "Campaign Sent", FORMAT([Campaign Sent], "#,0"),
    SELECTEDVALUE('disconnected table'[metric]) = "Click Rate", FORMAT([Click Rate], "0.00%"),
    SELECTEDVALUE('disconnected table'[metric]) = "Conversion Rate", FORMAT([Conversion Rate], "0.00%"),
    SELECTEDVALUE('disconnected table'[metric]) = "Open Rate", FORMAT([Open Rate], "0.00%"),
    SELECTEDVALUE('disconnected table'[metric]) = "Bounce Rate", FORMAT([Bounce Rate], "0.00%"),
    SELECTEDVALUE('disconnected table'[metric]) = "Unsubscribed Rate", FORMAT([Unsubscribed Rate], "0.00%"),
    BLANK()  
)
