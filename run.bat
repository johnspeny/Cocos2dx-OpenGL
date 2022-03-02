@echo off
rem !!!Don't move this file
rem usage: run.bat <BUILD_CFG>
rem    BUILD_CFG could be Debug,Release,MinSizeRel,RelWithDebInfo
pushd %~dp0\Resources
echo The working directory is: %cd%

set APP_NAME=Cocos2dx-OpenGL
set BUILD_DIR=C:/Users/okker/Documents/cocos_project/Cocos2dx-OpenGL/build
set BUILD_CFG=%1

rem Determine which build config to run
if not defined BUILD_CFG set /p BUILD_CFG=< run.bat.txt
if not defined BUILD_CFG set /p BUILD_CFG=Please input Build config(Debug,Release,MinSizeRel,RelWithDebInfo):
if not defined BUILD_CFG set BUILD_CFG=Debug

rem Save run config to run.bat.txt
echo %BUILD_CFG%>run.bat.txt

start %BUILD_DIR%/bin/%APP_NAME%/%BUILD_CFG%/%APP_NAME%.exe
