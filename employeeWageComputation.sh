#! /bin/bash -x
isFullTime=1;
isPartTime=2;
randomCheck=$((RANDOM % 3));
wagePerHr=20;
case $randomCheck in
        $isFullTime)
        workingHrs=8 ;;
        $isPartTime )
        workingHrs=4 ;;
        *)
        workingHrs=0 ;;

esac
Salary=$(( $wagePerHr*$workingHrs));
