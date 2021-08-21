## About
This is a sample automation mobile project developed with Robot framework.

**This was tested in a device with the language set in Spanish (Argentina)**

## Install
* You need to be able to run "pip" command, see: https://pip.pypa.io/en/stable/installation/
* To install the dependencies you need to run this command
  * pip install -r requirements.txt

## RUN
### Local - Android
robot --variable environment:local --variable platform:android -d .\report\ .\tests\

### Browserstack - Android
robot --variable environment:browserstack --variable platform:android -d .\report\ .\tests\
### Browserstack - iOS
robot --variable environment:browserstack --variable platform:ios -d .\report\ .\tests\

### With tags
robot --variable environment:local --variable platform:android --include=smoke -d .\report\ .\tests\

## Configuration
### Variables
* environment
  * local
  * browserstack
* platform
  * android
  * ios

### Tags
* smoke
* fail

## Output
### Report
Report is located after each run on ./report/report.html

### Log
Log is located after each run on ./report/log.html