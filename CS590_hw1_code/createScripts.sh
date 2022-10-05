echo "creating scripts"

name="default random"
echo $name
for i in 10 25 50 
do
mkdir -p output-default-random-$i
echo 'cd ..' >> output-default-random-$i/script-default-random-$i.sh
echo 'echo "'$name' '$i' working" ' >> output-default-random-$i/script-default-random-$i.sh
for j in 10000 25000 50000 100000 #250000 500000 1000000 2500000
do
for k in {1..10}
do 
echo 'timeout 6m ./hw1 '$j' '$i' 0 0 >> output-default-random-'$i'/default-random-insertion-sort-'$j'-'$i'.txt' >> output-default-random-$i/script-default-random-$i.sh
echo 'echo "'$name' '$i' '$j' done" '>> output-default-random-$i/script-default-random-$i.sh
done
done
#echo 'read -p "Press enter to continue"' >> output-default-random-$i/script-default-random-$i.sh
done
echo "Done"

name="default sorted"
echo $name
for i in 10 25 50
do
mkdir -p output-default-sorted-$i
echo 'cd ..' >> output-default-sorted-$i/script-default-sorted-$i.sh
echo 'echo "'$name' '$i' working" ' >> output-default-sorted-$i/script-default-sorted-$i.sh
for j in 10000 25000 50000 100000 250000 500000 1000000 2500000
do
for k in {1..10}
do 
echo 'timeout 6m ./hw1 '$j' '$i' 0 1 >> output-default-sorted-'$i'/default-sorted-insertion-sort-'$j'-'$i'.txt' >> output-default-sorted-$i/script-default-sorted-$i.sh
echo 'echo "'$name' '$i' '$j' done" '>> output-default-sorted-$i/script-default-sorted-$i.sh
done
done
#echo 'read -p "Press enter to continue"' >> output-default-sorted-$i/script-default-sorted-$i.sh
done

echo "Done"


echo 
name="default inverted"
echo $name
for i in 10 25 50 
do
mkdir -p output-default-inverted-$i
echo 'cd ..' >> output-default-inverted-$i/script-default-inverted-$i.sh
echo 'echo "'$name' '$i' working" ' >> output-default-inverted-$i/script-default-inverted-$i.sh
for j in 10000 25000 50000 100000 250000 #500000 1000000 2500000
do
for k in {1..10}
do 
echo 'timeout 6m ./hw1 '$j' '$i' 0 -1 >> output-default-inverted-'$i'/default-inverted-insertion-sort-'$j'-'$i'.txt' >> output-default-inverted-$i/script-default-inverted-$i.sh
echo 'echo "'$name' '$i' '$j' done" '>> output-default-inverted-$i/script-default-inverted-$i.sh
done
done
#echo 'read -p "Press enter to continue"' >> output-default-inverted-$i/script-default-inverted-$i.sh
done

echo "Done"


echo 
name="optimised random"
echo $name
for i in 10 25 50 
do
mkdir -p output-optimised-random-$i
echo 'cd ..' >> output-optimised-random-$i/script-optimised-random-$i.sh
echo 'echo "'$name' '$i' working" ' >> output-optimised-random-$i/script-optimised-random-$i.sh
for j in 10000 25000 50000 100000 250000 500000 1000000 #2500000
do
for k in {1..10}
do 
echo 'timeout 6m ./hw1 '$j' '$i' -1 0 >> output-optimised-random-'$i'/optimised-random-insertion-sort-'$j'-'$i'.txt' >> output-optimised-random-$i/script-optimised-random-$i.sh
echo 'echo "'$name' '$i' '$j' done" '>> output-optimised-random-$i/script-optimised-random-$i.sh
done
done
#echo 'read -p "Press enter to continue"' >> output-optimised-random-$i/script-optimised-random-$i.sh
done

echo "Done"

echo 
name="optimised sorted"
echo $name
for i in 10 25 50
do
mkdir -p output-optimised-sorted-$i
echo 'cd ..' >> output-optimised-sorted-$i/script-optimised-sorted-$i.sh
echo 'echo "'$name' '$i' working" ' >> output-optimised-sorted-$i/script-optimised-sorted-$i.sh
for j in 10000 25000 50000 100000 250000 500000 1000000 2500000
do
for k in {1..10}
do 
echo 'timeout 6m ./hw1 '$j' '$i' -1 1 >> output-optimised-sorted-'$i'/optimised-sorted-insertion-sort-'$j'-'$i'.txt' >> output-optimised-sorted-$i/script-optimised-sorted-$i.sh
echo 'echo "'$name' '$i' '$j' done" '>> output-optimised-sorted-$i/script-optimised-sorted-$i.sh
done
done
#echo 'read -p "Press enter to continue"' >> output-optimised-sorted-$i/script-optimised-sorted-$i.sh
done

echo "Done"

echo 
name="optimised inverted"
echo $name
for i in 10 25 50 
do
mkdir -p output-optimised-inverted-$i
echo 'cd ..' >> output-optimised-inverted-$i/script-optimised-inverted-$i.sh
echo 'echo "'$name' '$i' working" ' >> output-optimised-inverted-$i/script-optimised-inverted-$i.sh
for j in 10000 25000 50000 100000 250000 500000 1000000 2500000
do
for k in {1..10}
do 
echo 'timeout 6m ./hw1 '$j' '$i' -1 -1 >> output-optimised-inverted-'$i'/optimised-inverted-insertion-sort-'$j'-'$i'.txt' >> output-optimised-inverted-$i/script-optimised-inverted-$i.sh
echo 'echo "'$name' '$i' '$j' done" '>> output-optimised-inverted-$i/script-optimised-inverted-$i.sh
done
done
#echo 'read -p "Press enter to continue"' >> output-optimised-inverted-$i/script-optimised-inverted-$i.sh
done

echo "Done"




name="default sorted"
echo $name
for i in 100 1000
do
mkdir -p output-default-sorted-$i
echo 'cd ..' >> output-default-sorted-$i/script-default-sorted-$i.sh
echo 'echo "'$name' '$i' working" ' >> output-default-sorted-$i/script-default-sorted-$i.sh
for j in 10000 25000 50000 100000 250000 500000 1000000 2500000
do
for k in {1..10}
do 
echo 'timeout 6m ./hw1 '$j' '$i' 0 1 >> output-default-sorted-'$i'/default-sorted-insertion-sort-'$j'-'$i'.txt' >> output-default-sorted-$i/script-default-sorted-$i.sh
echo 'echo "'$name' '$i' '$j' done" '>> output-default-sorted-$i/script-default-sorted-$i.sh
done
done
#echo 'read -p "Press enter to continue"' >> output-default-sorted-$i/script-default-sorted-$i.sh
done

echo "Done"



echo 
name="optimised sorted"
echo $name
for i in 100 1000
do
mkdir -p output-optimised-sorted-$i
echo 'cd ..' >> output-optimised-sorted-$i/script-optimised-sorted-$i.sh
echo 'echo "'$name' '$i' working" ' >> output-optimised-sorted-$i/script-optimised-sorted-$i.sh
for j in 10000 25000 50000 100000 250000 500000 1000000 2500000
do
for k in {1..10}
do 
echo 'timeout 6m ./hw1 '$j' '$i' -1 1 >> output-optimised-sorted-'$i'/optimised-sorted-insertion-sort-'$j'-'$i'.txt' >> output-optimised-sorted-$i/script-optimised-sorted-$i.sh
echo 'echo "'$name' '$i' '$j' done" '>> output-optimised-sorted-$i/script-optimised-sorted-$i.sh
done
done
#echo 'read -p "Press enter to continue"' >> output-optimised-sorted-$i/script-optimised-sorted-$i.sh
done

echo "Done"