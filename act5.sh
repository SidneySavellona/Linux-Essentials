#task 1
number=1
while [ "$number" -le 10 ]; do
   echo "$number"
   number=$((number + 1))
done

#task 2
for i in {1..10}; do
    if (( i % 2 != 0 )); then
        echo "$i"
    fi
done

#task 3
for file in *.jpg; do
    new_name="${file%.jpg}.png"
    mv "$file" "$new_name"
    echo "Renamed File: $file to $new_name"
done