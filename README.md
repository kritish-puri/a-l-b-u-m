## Overview
I have created a controller class which handles all three pages. Since add and edit page have exact requirements (2 TextEditingControllers), I have added them in HomeController itself. This same thing can be done with multiple controllers also.

## Assumptions
1. GetX for state management.
2. No usage of named routes, since project is very small.
3. Single controller for all three pages.

## What’s Left To Do
1. Named routing, if needed.

## Anything Else
I have passed homeController as a parameter to AlbumListItem since finding/getting controller for each child item is very expensise and takes time also.

## Steps to run
Open command prompt and run the following commands

1. git clone https://github.com/kritishpuri/a-l-b-u-m.git
2. cd a-l-b-u-m
3. flutter run
