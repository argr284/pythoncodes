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
