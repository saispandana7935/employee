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

while [[ $totalWorkingHrs -le $totalWorkHrs && $workingDays -lt $totalWorkDays ]]

do
	workingDays=$((workingDays+1))
	days[$workingDays]=$workingDays
	workingHrs="$(getWorkingHrs $((RANDOM%3)) )"
	totalWorkingHrs=$((totalWorkingHrs+workingHrs))
	dailyWage[$workingDays]=$((workingHrs*wagePerHr))

done
	Salary=$(( $wagePerHr*$totalWorkingHrs ))
	echo ${days[@]}
	echo ${dailyWage[@]}
