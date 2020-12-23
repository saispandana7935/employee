isPresent=1
isAbsent=0
check=$((RANDOM%2))
if [ check -eq isPresent ]
then
  echo "Employee is Present "
else
  echo " Employee is Absent "
 fi
