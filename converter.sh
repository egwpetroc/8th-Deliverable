#! /bin/bash

echo    "Which e-book would you like to convert?
            a) How to build a car
            b) The life of Ayrton Senna
        Please type a or b to indicate your answer"

read choice

if [ "$choice" == "a" ]
then
    echo "How to build a car selected"
    echo "Type a for pdf, b for txt or c for html conversion"
    read choicetwo
    if [ "$choicetwo" == "a" ]
    then
        echo "converting how to build a car to pdf"
        pandoc -s htbac.epub -o htbac.pdf
        echo "conversion complete"
    elif [ "$choicetwo" == "b" ]
    then
        echo "converting how to build a car to txt"
        pandoc -s htbac.epub -o htbac.txt
        echo "conversion complete"
    elif [ "$choicetwo" == "c" ]
    then
        echo "converting how to build a car to html"
        pandoc -s htbac.epub -o htbac.html
        echo "conversion complete"
    fi

elif [ "$choice" == "b" ]
then
    echo "The life of Ayrton Senna selected"
    echo "Type a for pdf, b for txt or c for html conversion"
    read choicetwo
    if [ "$choicetwo" == "a" ]
    then
        echo "converting The life of Ayrton Senna to pdf"
        pandoc -s tlos.epub -o tlos.pdf
        echo "conversion complete"
    elif [ "$choicetwo" == "b" ]
    then
        echo "converting The life of Ayrton Senna to txt"
        pandoc -s tlos.epub -o tlos.txt
        echo "conversion complete"
    elif [ "$choicetwo" == "c" ]
    then
        echo "converting The life of Ayrton Senna to html"
        pandoc -s tlos.epub -o tlos.html
        echo "conversion complete"
    fi
fi
