# Tracker App

Simple time tracking app that just keeps track of daily tasks, not hourly.  For example, keep track of the days that you walk the dog.

## Page: Home

List of calendars, i.e.

* Walk Mason
* Walk Ringo

## Page: Selected Calendar

Split view that shows current calendar month on top half, "selected" days in list view on bottom half.  Nav header has left icon to go back to home page.  Button (somewhere) to export list view (maybe email CSV). Swipe left/right to advance months.  Play musical note each time date is selected/unselected (maybe A for Sunday, B for Monday, etc, different keys for different weeks).

Save data via apple cloud??  Go/Redis API??  Keep it local with [Realm](http://realm.io)??

## Potential 3rd Party Libraries

* calendar - [CustomCalendar](https://github.com/micazeve/CustomCalendar)
* data store - [Realm](https://github.com/realm/realm-cocoa)
* musical notes - [SoundBankPlayer](https://github.com/hollance/SoundBankPlayer)

