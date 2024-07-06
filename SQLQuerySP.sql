use AddressBookDB;
--Procedure to find contactperson with firstname
create proc spContactPersonWithFirstname
@FirstName varchar(20)
As
Begin
set NOCOUNT ON;
Select * from ContactPerson where FirstName=@FirstName;
End
Go

--SP to insert a record in contact person
create proc spInsertContactPerson
@FirstName varchar(20),
@Lastname varchar(20),
@Address varchar(40),
@PhoneNumber varchar(10),
@Email varchar(20),
@ZipCode int,
@City varchar(20),
@State varchar(20),
@Country varchar(20)
As
Begin
INSERT INTO ContactPerson
(FirstName,LastName,Address,PhoneNumber,Email,ZipCode,City,State,Country)
Values
(@FirstName,@LastName,@Address,@PhoneNumber,@Email,@ZipCode,@City,@State,@Country);
End
Go

--SP to update LastName
create proc spUpdateLastName
@FirstName varchar(20),
@LastName varchar(20)
as
Begin
Update ContactPerson set LastName=@LastName where FirstName=@FirstName;
End
Go
--SP to update Address
create proc spUpdateAddress
@FirstName varchar(20),
@Address varchar(20)
as
Begin
Update ContactPerson set Address=@Address where FirstName=@FirstName;
End
Go
--SP to update PhoneNumber
create proc spUpdatePhoneNumber
@FirstName varchar(20),
@PhoneNumber varchar(10)
as
Begin
Update ContactPerson set PhoneNumber=@PhoneNumber where FirstName=@FirstName;
End
Go
--SP to update Email
create proc spUpdateEmail
@FirstName varchar(20),
@Email varchar(10)
as
Begin
Update ContactPerson set Email=@Email where FirstName=@FirstName;
End
Go
--SP to update ZipCode
create proc spUpdateZipCode
@FirstName varchar(20),
@ZipCode int
as
Begin
Update ContactPerson set ZipCode=@ZipCode where FirstName=@FirstName;
End
Go
--SP to update City
create proc spUpdateCity
@FirstName varchar(20),
@City varchar(20)
as
Begin
Update ContactPerson set City=@City where FirstName=@FirstName;
End
Go
--SP to update State
create proc spUpdateState
@FirstName varchar(20),
@State varchar(20)
as
Begin
Update ContactPerson set State=@State where FirstName=@FirstName;
End
Go
--SP to update Country
create proc spUpdateCountry
@FirstName varchar(20),
@Country varchar(20)
as
Begin
Update ContactPerson set Country=@Country where FirstName=@FirstName;
End
Go

--SP to Delete a contact person
create proc spDeleteContactPerosn
@FirstName varchar(20)
as
Begin
Delete From ContactPerson where FirstName=@FirstName; 
End

--SP to get all contact person
create proc spgetAllContactPerson
as
Begin
Select * from ContactPerson
End

--SP to get all contact person based on city
create proc spgetAllContactPersonBasedOnCity
@City varchar(20)
as
Begin
Select * from ContactPerson where City=@City;
End

--SP to get all contact person based on State
create proc spgetAllContactPersonBasedOnState
@State varchar(20)
as
Begin
Select * from ContactPerson where State=@State;
End