echo -n "input your exam score: "
read examscore

if ! [[ "$examscore" =~ ^[0-9]+$ ]] || [ "$examscore" -lt 0 ] || [ "$examscore" -gt 100 ]; then
    echo "Please enter a valid score "
    exit 1
fi

if [ "$examscore" -ge 90 ]; then
    gradescore="A"
elif [ "$examscore" -ge 80 ]; then
    gradescore="B"
elif [ "$examscore" -ge 70 ]; then
    gradescore="C"
elif [ "$examscore" -ge 60 ]; then
    gradescore="D"
else
    gradescore="F"
fi

echo "Your grade is $gradescore"