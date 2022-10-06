@echo OFF

FOR %%i IN (10,25,50) DO (
    cd output-optimised-sorted-%%i/
    wt --title optimisedSorted bash script-optimised-sorted-%%i.sh
    cd ./..
)

FOR %%i IN (10,25,50) DO (
    cd output-optimised-random-%%i/
    wt --title optimisedRandom bash script-optimised-random-%%i.sh
    cd ./..
)

FOR %%i IN (10,25,50) DO (
    cd output-optimised-inverted-%%i/
    wt --title optimisedInverted bash script-optimised-inverted-%%i.sh
    cd ./..
)

@REM FOR %%i IN (100,1000) DO (
@REM     cd output-optimised-sorted-%%i/
@REM     wt --title optimisedSorted bash script-optimised-sorted-%%i.sh
@REM     cd ./..
@REM )

PAUSE