#! /bin/bash -x
isFullTime=1;
isPartTime=2;
randomCheck=$((RANDOM % 3));
wagePerHr=20;
workingDays=20;
totalSalary=0;
for (( day=1; day<=$workingDays; day++ ))
do
	randomCheck=$((RANDOM % 3));

	case $randomCheck in
        	$isFullTime)
        	workingHrs=8 ;;
        	$isPartTime )
        	workingHrs=4 ;;
        	*)
        	workingHrs=0 ;;

	esac
	Salary=$(( $wagePerHr*$workingHrs ))
	totalSalary=$(( $Salary+$totalSalary ))
done
