#! /bin/bash 

check_correct_guess()
{
total_no_files=`ls -rlt $current_dir|wc -l`
if [ $guess -eq $total_no_files ]
then
echo "Congratulation! Your answer is correct . "
echo ""
result=0
fi
if [ $guess -gt $total_no_files ]
then
echo "Wrong! Your answer is incorrect .You have entered a greater number . "
echo ""
result=1
fi
if [ $guess -lt $total_no_files ]
then
echo "Wrong! Your answer is incorrect .You have entered a lesser number ."
echo ""
result=1
fi
return $result
}
result=1
while [ $result -ne 0 ]
do
current_dir=`pwd`
echo "Hello ! How many files are in $current_dir ?"
read guess
check_correct_guess
result=`echo $?` 

done



