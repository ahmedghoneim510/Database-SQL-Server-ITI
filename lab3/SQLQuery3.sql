use Company_SD
------------
select Dname,Dnum,ssn as 'manger_id' ,fname +' '+lname as Manger_name
from Employee e , Departments s
where s.Dnum=e.Dno

------------
select Dname,Pname
from Employee e , Departments s , Works_for w,Project p
where s.Dnum=e.Dno and w.ESSn=e.SSN and w.Pno=p.Pnumber


---------------------------------
select e.Fname +' '+ e.lname as Fullname,d.* from  Employee e left outer join Dependent d on d.ESSN=e.SSN
----------------------------------------
select * from Project where city in ('alex','cairo')
------------------------------------------
select * from Project where Pname like 'a%';

-------------------------------------

select e.* from Employee e ,Departments d where  d.Dnum=30 and e.Salary between 1000 and 1200

------------------------------------------------
select e.* from Employee e inner join Departments d on e.Dno= d.Dnum
join Works_for f on e.SSN= f.ESSn 
join Project p on p.Pnumber=f.Pno
where f.Hours >=10 and p.Pname='AL Rabwah';

------------------------------------------
select x.Fname +' '+ x.Fname as fullname from Employee x , Employee y
where y.ssn=x.Superssn and y.Fname='Kamel  'and y.Lname='Mohamed'

---------------------------------
select e.Fname +' '+ e.Fname as fullname , p.Pname from Employee e inner join Works_for w on e.SSN=w.ESSn
left outer  join Project p on w.Pno=p.Pnumber 
order by p.Dnum

---------------------------
select p.Pnumber ,e.Lname,e.Address,e.Bdate  from Employee e inner join Departments d on d.MGRSSN=e.SSN
inner join Works_for w on e.SSN=w.ESSn inner join Project p on p.Pnumber =w.Pno
and p.City='Cairo' 
-----------------------------------------
select * from Employee e , Departments d where d.MGRSSN=e.SSN

------------------------------------------------
select * from Employee e  left outer join  Dependent d on e.SSN=d.ESSN

--------------------------------------
insert into Employee (Dno,SSN,Superssn,Salary) values(30,102672,112233,3000)

-------------------------------------------------

insert into Employee (Dno,SSN) values(30,102660)

-------------------------------
update Employee 
	set Employee.Salary= Employee.Salary + 0.2*Employee.Salary where ssn=102672 

----------------------------------------------








