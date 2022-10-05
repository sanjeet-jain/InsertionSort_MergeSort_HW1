@echo OFF
FOR %%i IN (10,25,50) DO (
    cd output-default-sorted-%%i/
    wt --title defaultSorted bash script-default-sorted-%%i.sh
    cd ./..
)

@REM FOR %%i IN (10,25,50) DO (
@REM     cd output-default-random-%%i/
@REM     wt --title defaultRandom bash script-default-random-%%i.sh
@REM     cd ./..
@REM )

@REM FOR %%i IN (10,25,50) DO (
@REM     cd output-default-inverted-%%i/
@REM     wt --title defaultInverted bash script-default-inverted-%%i.sh
@REM     cd ./..
@REM )



FOR %%i IN (10,25,50) DO (
    cd output-optimised-sorted-%%i/
    wt --title optimisedSorted bash script-optimised-sorted-%%i.sh
    cd ./..
)

@REM FOR %%i IN (10,25,50) DO (
@REM     cd output-optimised-random-%%i/
@REM     wt --title optimisedRandom bash script-optimised-random-%%i.sh
@REM     cd ./..
@REM )

@REM FOR %%i IN (10,25,50) DO (
@REM     cd output-optimised-inverted-%%i/
@REM     wt --title optimisedInverted bash script-optimised-inverted-%%i.sh
@REM     cd ./..
@REM )



@REM FOR %%i IN (100,1000) DO (
@REM     cd output-default-sorted-%%i/
@REM     wt --title defaultSorted bash script-default-sorted-%%i.sh
@REM     cd ./..
@REM )

@REM FOR %%i IN (100,1000) DO (
@REM     cd output-optimised-sorted-%%i/
@REM     wt --title optimisedSorted bash script-optimised-sorted-%%i.sh
@REM     cd ./..
@REM )

PAUSE