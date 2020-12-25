#! /bin/bash -x
isPresent=1
isAbsent=0
wagePerHr=20
fullDay=8
check=$((RANDOM%2))
if [ $check -eq $isPresent ]
then
  echo "Employee is Present "
   Salary=$(( $wagePerHr*$fullDay ))
else
  echo " Employee is Absent "
   Salary=0
 fi
