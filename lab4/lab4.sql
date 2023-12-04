select * from Employee

-----------------------------------

select Fname,Lname,Salary,Dno from Employee
-----------------------------------

select Pname,Plocation,Dnum from Project
---------------------------------
select CONCAT(Fname,' ',Lname) as Full_Name, (Salary*12+(Salary*12)*0.1) as Annual_Salary from Employee

------------------------------------
select ssn,CONCAT(Fname,' ',Lname) as Full_Name from Employee
where Salary >1000

--------------------------------------

select ssn,CONCAT(Fname,'',Lname) as Full_Name from Employee
where (Salary*12+(Salary*12)*0.1) >10000

--------------------------------------
select CONCAT(Fname,' ',Lname) as Full_Name from Employee 
where sex='F'

---------------------------------------
select Dnum,Dname from Departments where MGRSSN=968574

----------------------------------------
select Pnumber , Pname,  Plocation from Project
where Dnum=10

-------------------------10---------------
select  min(salary) as Min_Salary , MAX(Salary) as Max_Salary ,AVG(salary) as Average_Salary ,d.Dname
from Departments d,Employee e
where e.Dno=d.Dnum
group by d.Dnum , d.Dname
-----------------10.1----
select  min(salary) as Min_Salary , MAX(Salary) as Max_Salary ,AVG(salary) as Average_Salary 
from Departments d,Employee e
where e.Dno=d.Dnum
group by d.Dnum


----------------------
insert into Employee (Fname,Lname,SSN,Superssn,Salary,Dno) values('ahmed','ghoneim',102671,112233,3000,30)

--------------------------------------

insert into Employee (Fname,Lname,SSN,Dno) values('mohamed','talaat',102660,30)
-----------------------------------------------------------------------------
update Employee set Salary=Salary*1.2 where Employee.SSN=102671




