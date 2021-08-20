# RUN
## Install
* You need to be able to run "pip" command, see: https://pip.pypa.io/en/stable/installation/
* To install the dependencies you need to run this command
  * pip install -r requirements.txt

## Local
robot --variable environment:local --variable platform:android -d .\report\ .\tests\

## With tags
robot --variable environment:local --variable platform:android --include=smoke -d .\report\ .\tests\

## Variables
* environment
  * local
  * browserstack
* platform
  * android
  * ios

## Tags
* smoke

## Report
Report is located after each run on ./report/report.html

## Log
Log is located after each run on ./report/log.html