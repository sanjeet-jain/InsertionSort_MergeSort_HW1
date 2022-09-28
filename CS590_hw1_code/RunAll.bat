
start bash default-random-test.sh
timeout /t 5 /nobreak

start bash optimised-inverted-test.sh
timeout /t 5 /nobreak
 
start bash optimised-sorted-test.sh 
timeout /t 5 /nobreak
 
start bash default-inverted-test.sh 
timeout /t 5 /nobreak
 
start bash default-sorted-test.sh 
timeout /t 5 /nobreak
 
start bash optimised-random-test.sh 
timeout /t 5 /nobreak

pause
 