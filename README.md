#  LogStoreDevelopment

A simple app to facilitate development of the LogStore package to make log output accessible from within an iOS app.

Based on Appendix 1. Debugging on the Go, of Build Location-Based Projects for iOS, by Dominik Hauser.


### Usage: 
This app generates a couple log entries at startup.  To view the log knock the left side of your phone (display up) against your left palm.  The log will pop up in a modal view.  Dismiss it by dragging down from the top.  There is an "Email Log" button at the bottom of the log that will email the log as "LogStore log.json".

The log is stored in the iOS file area of the app.  Currently there is no way to clear the log file other than deleting or replacing the app.
