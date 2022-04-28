search_dir=./TestSuites/FinalTestSuites/
for entry in "$search_dir"/*
do
    echo "Running test suite: $entry"
    python3 main.py -i $entry
    echo "-----------------------------------------"
done