[![Code Climate](https://codeclimate.com/github/GusVilla303/bball_games/badges/gpa.svg)](https://codeclimate.com/github/GusVilla303/bball_games)
[![Test Coverage](https://codeclimate.com/github/GusVilla303/bball_games/badges/coverage.svg)](https://codeclimate.com/github/GusVilla303/bball_games)


B-Ball Games
===========

Work In Progress -- Self-directed project

Live Project Link: 


B-Ball Games is an individual side project, which is currently in its early stages.  The app is able to retrieve location information for all Denver Recreation Centers (via http://data.denvergov.org) by running a `rake task` command through the terminal. 

To retrieve the most up-to-date Denver Rec Center locations information, run the following command: 
```shell
rake locations:generate
```
A user authenticates by using Oauth (Twitter) to gain access to his/her dashboard.  The user will be able to send a notification regarding when and where their next basketball game will take place to a group of selected friends. 

A 'nice to have' will be to embed mapping capabilities (via Google maps) to make the app more convenient for the user and his/her friends.  
