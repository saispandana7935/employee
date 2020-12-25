#! /bin/bash -x
isFullTime=1;
isPartTime=2;
randomCheck=$((RANDOM % 3));
wagePerHr=20;
if [ $isFullTime -eq $randomCheck ];
then
        workingHrs=8;
elif [ $isPartTime -eq $randomCheck ];
then
        workingHrs=4;
else
        workingHrs=0;

fi
Salary=$(( $wagePerHr*$workingHrs));

echo "salary received by employee is" $Salary
