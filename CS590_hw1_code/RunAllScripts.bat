@echo OFF
FOR %%i IN (10,25,50) DO (
    cd output-default-sorted-%%i/
    wt --title defaultSorted bash script-default-sorted-%%i.sh
    cd ./..
)

FOR %%i IN (10,25,50) DO (
    cd output-default-random-%%i/
    wt --title defaultRandom bash script-default-random-%%i.sh
    cd ./..
)

FOR %%i IN (10,25,50) DO (
    cd output-default-inverted-%%i/
    wt --title defaultInverted bash script-default-inverted-%%i.sh
    cd ./..
)



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

PAUSE