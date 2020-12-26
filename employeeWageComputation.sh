#! /bin/bash -x
isFullTime=1;
isPartTime=2;
wagePerHr=20;
workingDays=0;
totalWorkHrs=100;
totalWorkDays=20;
totalWorkingHrs=0

function getWorkingHrs(){
	empCheck=$1
	case $empCheck in
        	$isFullTime)
        		workingHrs=8 ;;
        	$isPartTime )
        		workingHrs=4 ;;
        	*)
        		workingHrs=0 ;;

	esac
		echo $workingHrs
}

while [[ $totalWorkingHrs -le $totalWorkHrs && $workingDays -le $totalWorkDays ]]

do
	workingDays=$((workingDays+1))
	workingHrs="$(getWorkingHrs $((RANDOM%3)) )"
	totalWorkingHrs=$((totalWorkingHrs+workingHrs))

done
	Salary=$(( $wagePerHr*$totalWorkingHrs ))
