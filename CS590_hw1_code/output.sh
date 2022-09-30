var=$(pwd)
basename $(pwd)
mydir="$(basename $PWD)"
grep -E -o "[0-9]+ms real" *.txt |  grep -oe '\([0-9.]*\)' >>$mydir.txt