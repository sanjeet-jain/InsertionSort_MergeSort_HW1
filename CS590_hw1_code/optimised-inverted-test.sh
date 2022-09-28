echo "Starting Testing Script"
echo "using makefile to build project"
make
echo

for i in 10 25 50 
do
mkdir -p output-optimised-inverted-$i
for j in 10000 25000 50000 100000 250000 500000 1000000 2500000
do
echo "test $j, $i optimised-inverted"
timeout 6m ./hw1 $j $i -1 -1 >> output-optimised-inverted-$i/optimised-inverted_insertion_sort-$j-$i.txt
echo "Done"
done
done


# sudo mkdir -p output-optimised-inverted
# echo
# echo "test 10000, 10 optimised-inverted"
# timeout 6m ./hw1 10000 10 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_10000_10.txt
# echo "Done"
# echo "test 10000, 25 optimised-inverted"
# timeout 6m ./hw1 10000 25 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_10000_25.txt
# echo "Done"
# echo "test 10000, 50 optimised-inverted"
# timeout 6m ./hw1 10000 50 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_10000_50.txt
# echo "Done"

# echo "test 25000, 10 optimised-inverted"
# timeout 6m ./hw1 25000 10 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_25000_10.txt
# echo "Done"
# echo "test 25000, 25 optimised-inverted"
# timeout 6m ./hw1 25000 25 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_25000_25.txt
# echo "Done"
# echo "test 25000, 50 optimised-inverted"
# timeout 6m ./hw1 25000 50 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_25000_50.txt
# echo "Done"


# echo "test 50000, 10 optimised-inverted"
# timeout 6m ./hw1 50000 10 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_50000_10.txt
# echo "Done"
# echo "test 50000, 25 optimised-inverted"
# timeout 6m ./hw1 50000 25 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_50000_25.txt
# echo "Done"
# echo "test 50000, 50 optimised-inverted"
# timeout 6m ./hw1 50000 50 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_50000_50.txt
# echo "Done"

# echo "test 100000, 10 optimised-inverted"
# timeout 6m ./hw1 100000 10 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_100000_10.txt
# echo "Done"
# echo "test 100000, 25 optimised-inverted"
# timeout 6m ./hw1 100000 25 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_100000_25.txt
# echo "Done"
# echo "test 100000, 50 optimised-inverted"
# timeout 6m ./hw1 100000 50 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_100000_50.txt
# echo "Done"


# echo "test 250000, 10 optimised-inverted"
# timeout 6m ./hw1 250000 10 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_250000_10.txt
# echo "Done"
# echo "test 250000, 25 optimised-inverted"
# timeout 6m ./hw1 250000 25 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_250000_25.txt
# echo "Done"
# echo "test 250000, 50 optimised-inverted"
# timeout 6m ./hw1 250000 50 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_250000_50.txt
# echo "Done"


# echo "test 500000, 10 optimised-inverted"
# timeout 6m ./hw1 500000 10 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_500000_10.txt
# echo "Done"
# echo "test 500000, 25 optimised-inverted"
# timeout 6m ./hw1 500000 25 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_500000_25.txt
# echo "Done"
# echo "test 500000, 50 optimised-inverted"
# timeout 6m ./hw1 500000 50 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_500000_50.txt
# echo "Done"


# echo "test 1000000, 10 optimised-inverted"
# timeout 6m ./hw1 1000000 10 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_1000000_10.txt
# echo "Done"
# echo "test 1000000, 25 optimised-inverted"
# timeout 6m ./hw1 1000000 25 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_1000000_25.txt
# echo "Done"
# echo "test 1000000, 50 optimised-inverted"
# timeout 6m ./hw1 1000000 50 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_1000000_50.txt
# echo "Done"

# echo "test 1250000, 10 optimised-inverted"
# timeout 6m ./hw1 1250000 10 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_1250000_10.txt
# echo "Done"
# echo "test 1250000, 25 optimised-inverted"
# timeout 6m ./hw1 1250000 25 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_1250000_25.txt
# echo "Done"
# echo "test 1250000, 50 optimised-inverted"
# timeout 6m ./hw1 1250000 50 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_1250000_50.txt
# echo "Done"


# echo "test 2500000, 10 optimised-inverted"
# timeout 6m ./hw1 2500000 10 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_2500000_10.txt
# echo "Done"
# echo "test 2500000, 25 optimised-inverted"
# timeout 6m ./hw1 2500000 25 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_2500000_25.txt
# echo "Done"
# echo "test 2500000, 50 optimised-inverted"
# timeout 6m ./hw1 2500000 50 -1 -1 >> output-optimised-inverted/optimised-inverted_insertion_sort_2500000_50.txt
# echo "Done"
