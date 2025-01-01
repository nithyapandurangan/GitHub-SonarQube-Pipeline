@echo off
setlocal

set SOURCE_DIR=src
set OUTPUT_DIR=bin

:: Create bin directory if it doesn't exist
if not exist %OUTPUT_DIR% mkdir %OUTPUT_DIR%

:: Compile the Java source code
javac -d %OUTPUT_DIR% %SOURCE_DIR%\*.java

:: Run the Java program
java -cp %OUTPUT_DIR% Main

endlocal
