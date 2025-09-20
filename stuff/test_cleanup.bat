@echo off
:: Cleanup

set "TestPathTxt=C:\Users\%username%\Documents\test_cleanup.txt"

if exist "%TestPathTxt%" (
    del /f /q "%TestPathTxt%"
)
