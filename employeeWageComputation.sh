#! /bin/bash -x
isFullTime=1;
workingHrs=0
isPartTime=2;
wagePerHr=20;
workingDays=0;
totalWorkHrs=100;
totalWorkDays=20;
totalSalary=0;
while [[ $workingHrs -le $totalWorkHrs && $workingDays -lt $totalWorkDays ]]

do
	workingDays=$((workingDays+1))
	empCheck=$((RANDOM % 3));

	case $empCheck in
        	$isFullTime)
        	workingHrs=8 ;;
        	$isPartTime )
        	workingHrs=4 ;;
        	*)
        	workingHrs=0 ;;

	esac
	workingHrs+=$(($workingHrs))


done
	Salary=$(( $wagePerHr*$workingHrs ))
