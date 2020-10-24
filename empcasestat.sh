#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
Attendance=$((RANDOM%2))
if [ $Attendance -eq 1 ]
then
    echo "Employee is Present"
else
    echo "Employee is Absent"
fi

isPartTime=0
isFullTime=1
isPartTime=1
isFullTime=2
empRatePerHr=20

empCheck=$((RANDOM%2))

if [ $isFullTime -eq $empCheck ]
then
    empHrs=8;
else
    empHrs=4;
fi
empCheck=$((RANDOM%3))

case $empCheck in
       $isFullTime)
              empHrs=8;
              ;;
       $isPartTime)
              empHrs=4;
              ;;
       *)
              empHrs=0;
              ;;
esac

dailyWage=$(($empHrs*$empRatePerHr))
