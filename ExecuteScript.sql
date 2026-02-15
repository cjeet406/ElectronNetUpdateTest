use MyDbOPD;

update common.tbl_ModuleFields set Type = 'text'  WHERE ModuleName = 'AddPatient' AND FieldName like '%suff%'

declare @UserCode nvarchar(max) = '' , @UserId bigint = 0;

select top 1 @UserCode = UserCode , @UserId = UserId from hospital.tblHospitalUsers where UserId = 1

update common.tbl_UserSettingConfiguration set userCode = @UserCode , userId = @UserId
