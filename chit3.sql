/*Write a PL/SQL block for following requirement and handle the exceptions.
 
Roll no. of student will be entered by user. Attendance of roll no. entered by user will be checked in Stud table. If
attendance is less than 75% then display the message “Term not granted” and set the status in studtable as “D”. Otherwise
 
display message “Term granted” and set the status in stud table as “ND”*/



create table stud1(roll_no number(5),attendance number(5),status varchar(7));
select * from stud1;
set serveroutput on;

declare
roll number(10);
att number(10); 
begin
roll:=&roll;
select attendance into att from stud1 where
roll_no=roll; 
if att<75 then
dbms_output.put_line(roll||'is detained');
update stud1 set status='D' where roll_no=roll;
else
dbms_output.put_line(roll||'is not detained');
update stud1 set status='ND' where roll_no=roll;
end if;
exception
when no_data_found then
dbms_output.put_line(roll||'not found');
end;

/Enter value for roll: 102
 
old 5: roll:=&roll;
 
new 5: roll:=102;
 
102is detained/
 
select * from stud1;


