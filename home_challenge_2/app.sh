#!/bin/bash

title(){
echo -e "\t\t$1\n=================================\n";
}

press_any(){
echo -e "\n\n";
read -p "::=> Press Enter To Continue:";
clear;
}

clear;
press_any;


title "a";
touch file{1..3}.txt;
echo -e "\n::=>Files Generated:\n";
ls *.txt;

press_any

title "b";
mv file2.txt file999.txt;
echo -e "\n::=>file2.txt file name changed.\n";
echo -e "Files:\n";
ls *.txt;

press_any

title "c";
echo -e "\n::=>Iterating Over Files:";

for file_name in *.txt;
        do
                echo "my name is $file_name" > $file_name;
                        echo -e "\n\t::=> $file_name was changed";
                cat $file_name
        done

press_any

title "d";
echo -e "\n::=>Copying file 3";
cp file3.txt file3_copy.txt
echo -e "\n::=> Files:\n"
ls *.txt

press_any

title "e";
echo -e "\n::=>Removing file1";
rm file1.txt
echo -e "\n::=>file1 was Removed";
ls *.txt

press_any

title "\n::=> content of files:"
for file in *.txt;
do
        echo -e "\n::=> $file :\n";
        cat $file;
done;

press_any;

