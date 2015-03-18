-- delete Membership Provider tables
delete from dbo.aspnet_Membership
delete from dbo.aspnet_UsersInRoles
delete from dbo.aspnet_Users
delete from dbo.aspnet_Roles
delete from dbo.aspnet_Applications

-- delete SwmEasy tables
delete from dbo.SeminarWorkApplication
delete from dbo.SeminarWorkFile
delete from dbo.SeminarWork
delete from dbo.Professor
delete from dbo.Student