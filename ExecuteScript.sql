USE [MyDbOPD]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Manage_PatientVisits]    Script Date: 13-02-2026 00:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ============
 ALTER PROC [dbo].[Usp_Manage_PatientVisits]  
   @Command varchar(200) 
  , @PatientId bigint=NULL 
  , @VisitId bigint=NULL 
  , @CaseId bigint=NULL 
  , @OpdDate varchar(50)=NULL 
  , @OpdTime time=NULL 
  , @PatientType nvarchar(50)=NULL 
  , @PresentHistory nvarchar(2000)=NULL 
  , @FamilyHistory nvarchar(2000)=NULL 
  , @PastHistory nvarchar(2000)=NULL 
  , @MarriedLife int=NULL 
  , @FTNDS_LiveM int=NULL 
  , @FTNDS_LiveF int=NULL 
  , @FTNDS_DeadM int=NULL 
  , @FTNDS_DeadF int=NULL 
  , @FTLSCS_LiveM int=NULL 
  , @FTLSCS_LiveF int=NULL 
  , @FTLSCS_DeadM int=NULL 
  , @FTLSCS_DeadF int=NULL 
  , @Temperature nvarchar(50)=NULL 
  , @RespiratoryRate int=NULL 
  , @SPO2 int=NULL 
  , @Pallor nvarchar(50)=NULL 
  , @Icterus nvarchar(50)=NULL 
  , @Oedema nvarchar(50)=NULL 
  , @RespiratorySystem nvarchar(500)=NULL 
  , @CardiovascularSystem nvarchar(500)=NULL 
  , @Breast nchar(10)=NULL 
  , @LMPDate varchar(50)=NULL 
  , @EDD varchar(50)=NULL 
  , @MensturalHistoryDays nvarchar(100)=NULL 
  , @MensturalDays int=NULL 
  , @MensturalSeverity nvarchar(100)=NULL 
  , @HistoryOf nvarchar(1000)=NULL 
  , @ComplainOf nvarchar(1000)=NULL 
  , @Pulse int=NULL 
  , @SystolicBloodPressure int=NULL 
  , @DaistolicBloodPressure int=NULL 
  , @PerAbdomen nvarchar(500)=NULL 
  , @PerSpeculum nvarchar(500)=NULL 
  , @PerVaginum nvarchar(500)=NULL 
  , @Diagnosis nvarchar(500)=NULL 
  , @Advice nvarchar(500)=NULL 
  , @Remark nvarchar(500)=NULL 
  , @FollowupDays int=NULL 
  , @FollowupDate datetime=NULL 
  , @Parity nvarchar(100)=NULL 
  , @PreviousDeliveryType nvarchar(100)=NULL 
  , @PossibleLMP varchar(50)=NULL 
  , @WeeksAccordingLMP decimal=NULL 
  , @PossibleEDD varchar(50)=NULL 
  , @WeeksAccordingFirstEDD decimal=NULL 
  , @FirstEDDAccordingUSG varchar(50)=NULL
  , @PreviousMH int=NULL
  , @IsPAUtSelected bit=NULL 
  , @PAUtValue nvarchar(50)=NULL 
  , @UterusDays int=NULL 
  , @UterusWeeks int=NULL 
  , @ExternalBallottementPresentingPart nvarchar(50)=NULL 
  , @FetalHeartSound nvarchar(50)=NULL 
  , @UterusCondition nvarchar(50)=NULL
  , @PrescribedMedicines varchar(MAX)=NULL
  , @IsLatestVisit bit=NULL 
  , @IsActive bit=NULL 
  , @IsEdited bit=NULL 
  , @EntryDate varchar(50)=NULL 
  , @UpdatedDate varchar(50)=NULL 
  , @CreatedBy bigint=NULL 
  , @UpdatedBy bigint=NULL 
  , @Edit bit=NULL 
  , @SearchType varchar(200)=NULL
  , @SearchKey varchar(1000)=NULL
  , @SortBy varchar(200)='CategoryName'
  , @SortOrder varchar(5)='Asc'
  , @PageNo int=1
  , @PageSize int=10  
  , @outIsSuccess bit = NULL OUTPUT
  , @outIdentity bigint = NULL OUTPUT
  , @outMessage VARCHAR(MAX) = NULL OUTPUT
  , @outCustomMessage VARCHAR(MAX) = NULL OUTPUT
  , @SubCommand varchar(200) = NULL  

  
, @InvestigationId int=NULL 
, @HomeBloodGlucoseMonitoring  varchar(200) = NULL  
, @BloodGroup  varchar(200) = NULL  
, @UrineSugar  varchar(200) = NULL  
, @UrineProtein  varchar(200) = NULL  
, @HIV  varchar(200) = NULL  
, @HepatitisBsurfaceAntigen  varchar(200) = NULL  
, @ThyroidStimuatingHormone  varchar(200) = NULL  
, @VenerealDiseaseResearchLaboratory  varchar(200) = NULL  
, @Other  varchar(200) = NULL  
  
, @PerSpeculumId int = null

,@UterusWeeksPA int = null

, @Gync_LiveM int=NULL 
, @Gync_LiveF int=NULL 

 AS 
  BEGIN 
   SET NOCOUNT ON;        
	   
  DECLARE @v_IsSuccess bit=0, @v_Identity as bigint=0, @v_Message varchar(MAX)='', @v_CustomMessage varchar(MAX)=''
	   , @BaseQry varchar(MAX), @WhereQry varchar(MAX), @Qry varchar(8000), @StartRow int=0, @StopRow int=0
  
   IF @Command='UPDATE' 
    BEGIN 
      UPDATE patient.tblPatientVisits 
	  -- CaseId=@CaseId 
       -- OpdDate=@OpdDate 
        --OpdTime=@OpdTime 
       SET PatientType=@PatientType 
        , PresentHistory=@PresentHistory 
        , FamilyHistory=@FamilyHistory 
        , PastHistory=@PastHistory 
        , MarriedLife=@MarriedLife 
        , FTNDS_LiveM=@FTNDS_LiveM 
        , FTNDS_LiveF=@FTNDS_LiveF 
        , FTNDS_DeadM=@FTNDS_DeadM 
        , FTNDS_DeadF=@FTNDS_DeadF 
        , FTLSCS_LiveM=@FTLSCS_LiveM 
        , FTLSCS_LiveF=@FTLSCS_LiveF 
        , FTLSCS_DeadM=@FTLSCS_DeadM 
        , FTLSCS_DeadF=@FTLSCS_DeadF 
        , Temperature=@Temperature 
        , RespiratoryRate=@RespiratoryRate 
        , SPO2=@SPO2 
        , Pallor=@Pallor 
        , Icterus=@Icterus 
        , Oedema=@Oedema 
        , RespiratorySystem=@RespiratorySystem 
        , CardiovascularSystem=@CardiovascularSystem 
        , Breast=@Breast 
        , LMPDate=@LMPDate 
        , EDD=@EDD 
        , MensturalHistoryDays=@MensturalHistoryDays 
        , MensturalDays=@MensturalDays 
        , MensturalSeverity=@MensturalSeverity 
        , HistoryOf=@HistoryOf 
        , ComplainOf=@ComplainOf 
        , Pulse=@Pulse 
        , SystolicBloodPressure=@SystolicBloodPressure 
        , DaistolicBloodPressure=@DaistolicBloodPressure 
        , PerAbdomen=@PerAbdomen 
        , PerSpeculum=@PerSpeculum 
        , PerVaginum=@PerVaginum 
        , Diagnosis=@Diagnosis 
        , Advice=@Advice 
        , Remark=@Remark 
        , FollowupDays=@FollowupDays 
        , FollowupDate=@FollowupDate 
        , Parity=@Parity 
        , PreviousDeliveryType=@PreviousDeliveryType 
        , PossibleLMP=@PossibleLMP 
        , WeeksAccordingLMP=@WeeksAccordingLMP 
        , PossibleEDD=@PossibleEDD 
        , WeeksAccordingFirstEDD=@WeeksAccordingFirstEDD 
        , FirstEDDAccordingUSG=@FirstEDDAccordingUSG
		, PreviousMH=@PreviousMH
        , IsPAUtSelected=@IsPAUtSelected 
        , PAUtValue=@PAUtValue 
        , UterusDays=@UterusDays 
        , UterusWeeks=@UterusWeeks 
        , ExternalBallottementPresentingPart=@ExternalBallottementPresentingPart 
        , FetalHeartSound=@FetalHeartSound 
        , UterusCondition=@UterusCondition
		, PrescribedMedicines=@PrescribedMedicines
       -- , IsLatestVisit=@IsLatestVisit 
        , IsActive=@IsActive 
        , IsEdited=@IsEdited 
       -- , EntryDate=@EntryDate 
        , UpdatedDate=@UpdatedDate 
      --  , CreatedBy=@CreatedBy 
        , UpdatedBy=@UpdatedBy 

		, UterusWeeksPA = @UterusWeeksPA
		, Gync_LiveM = @Gync_LiveM
		, Gync_LiveF = @Gync_LiveF
         WHERE VisitId=@VisitId     

		
		IF @@ERROR=0
		Begin               

				If Not Exists (select top 1 InvestigationId from patient.tblInvestigation with (nolock) where CaseId=@CaseId)
				Begin
					Insert into patient.tblInvestigation (PatientId, CaseId, VisitId, HomeBloodGlucoseMonitoring, BloodGroup, 
					UrineSugar, UrineProtein, HIV, HepatitisBsurfaceAntigen, ThyroidStimuatingHormone, VenerealDiseaseResearchLaboratory, Other, CreatedBy)
					Values (@PatientId, @CaseId, @VisitId, @HomeBloodGlucoseMonitoring, @BloodGroup
					, @UrineSugar, @UrineProtein, @HIV, @HepatitisBsurfaceAntigen, @ThyroidStimuatingHormone, @VenerealDiseaseResearchLaboratory, @Other, @CreatedBy)

				End
				Else
				Begin
						Update patient.tblInvestigation
						SET HomeBloodGlucoseMonitoring=@HomeBloodGlucoseMonitoring
							, BloodGroup=@BloodGroup
							, UrineSugar=@UrineSugar
							, UrineProtein=@UrineProtein
							, HIV=@HIV
							, HepatitisBsurfaceAntigen=@HepatitisBsurfaceAntigen
							, ThyroidStimuatingHormone=@ThyroidStimuatingHormone
							, VenerealDiseaseResearchLaboratory=@VenerealDiseaseResearchLaboratory
							, Other=@Other
							, IsEdited=1
							, UpdatedDate=@UpdatedDate
							, UpdatedBy = @UpdatedBy
							WHERE CaseId=@CaseId
				End

			

			SELECT @v_IsSuccess=1, @v_Identity = @VisitId, @v_Message='success',  @v_CustomMessage = 'Saved successfully!'
		End
		Else
		Begin
			SELECT @v_IsSuccess=0, @v_Identity = @VisitId, @v_Message=ERROR_MESSAGE(),  @v_CustomMessage = 'Save failed!'
		End             
		
		SELECT @outIsSuccess=@v_IsSuccess , @outIdentity=@v_Identity, @outMessage=@v_Message, @outCustomMessage = @v_CustomMessage
    END 
     
    ELSE IF @Command='SELECT' 
    BEGIN 
		If @SubCommand = 'PreviousVisit'
		Begin

		
		select top 1 @CaseId =  CaseId from patient.tblPatientVisits where VisitId = @VisitId

		 declare @IsFirstVisit int = 0

				declare @P_patientId bigint = 0, @C_caseId bigint = 0, @C_OpdDate datetime = getdate();

				select @P_patientId = PatientId, @C_caseId = CaseId, @C_OpdDate = OpdDate from patient.tblPatientVisits where VisitId = @VisitId

				select @IsFirstVisit = (case when COUNT(VisitId) > 1 then 1 else 0 end) from patient.tblPatientVisits where PatientId = @P_patientId
										and CaseId = @C_caseId


				declare @CountOfVisits bigint = 0;

				select @CountOfVisits =  COUNT( VisitId) from patient.tblPatientVisits where CaseId = @C_caseId and PatientId = @P_patientId and cast(OpdDate as date) <= CAST(isnull(@C_OpdDate, GETDATE()) as date)



			SELECT top 1 pv.VisitId, pv.CaseId, OpdDate, OpdTime , @CountOfVisits as VisitNo
			  , PatientType, PresentHistory, FamilyHistory, PastHistory, MarriedLife
			  , FTNDS_LiveM, FTNDS_LiveF, FTNDS_DeadM, FTNDS_DeadF
			  , FTLSCS_LiveM, FTLSCS_LiveF, FTLSCS_DeadM, FTLSCS_DeadF
			  , Temperature, temp.RecordName as TemperatureText
			  , RespiratoryRate, SPO2
			  , Pallor, pal.RecordName as PallorText
			  , Icterus, ict.RecordName as IcterusText
			  , Oedema, oed.RecordName as OedemaText
			  , RespiratorySystem, CardiovascularSystem
			  , Breast, brst.RecordName as BreastText
			  , LMPDate, EDD, MensturalHistoryDays, MensturalDays
			  
			  , MensturalSeverity
			  
			  --, MensturalSeverity.RecordName as MensturalSeverityText
			  
			  ,case 
					when isnull(MensturalSeverity.RecordName,'') = '' and isnull(MensturalSeverity.RecordName,'') = '' 
					then MensturalSeverity 
					else MensturalSeverity.RecordName
					end 
			    as MensturalSeverityText

			  , HistoryOf
			  ,Gync_LiveM
			  ,Gync_LiveF
			  --, his.RecordName as HistoryOfText

			   ,case when isnull(his.RecordName,'') = '' and isnull(his.RecordName,'') = '' then HistoryOf end as HistoryOfText

			  , ComplainOf
			  --, comp.RecordName as ComplainOfText

			   ,case when isnull(comp.RecordName,'') = '' and isnull(comp.RecordName,'') = '' then ComplainOf end as ComplainOfText

			  , Pulse, SystolicBloodPressure, DaistolicBloodPressure
			  , PerAbdomen
			  
			  --, prab.RecordName as PerAbdomenText
			  ,case when isnull(prsp.RecordName,'') = '' and isnull(prsp.RecordName,'') = '' then PerSpeculum end as PerSpeculumText
			  
			  , PerSpeculum
			  
			  --, prsp.RecordName as PerSpeculumText
			  ,case when isnull(comp.RecordName,'') = '' and isnull(comp.RecordName,'') = '' then PerAbdomen end as PerAbdomenText

			  , PerVaginum, prvg.RecordName as PerVaginumText
			  , Diagnosis, Advice, Remark
			  , FollowupDays, FollowupDate
			  , Parity, PreviousDeliveryType
			  , PossibleLMP, WeeksAccordingLMP, PossibleEDD, WeeksAccordingFirstEDD, FirstEDDAccordingUSG, PreviousMH
			  , IsPAUtSelected, PAUtValue, UterusDays, UterusWeeks

			  , ExternalBallottementPresentingPart
			  
			  --, ebpp.RecordName as ExternalBallottementPresentingPartText
			  ,case when isnull(ebpp.RecordName,'') = '' and isnull(ebpp.RecordName,'') = '' then ExternalBallottementPresentingPart end as ExternalBallottementPresentingPartText
			  
			  , FetalHeartSound, fhs.RecordName as FetalHeartSoundText
			  , UterusCondition, utrs.RecordName as UterusConditionText
			  
			  ,@IsFirstVisit as IsFirstVisit
			  
			  , PrescribedMedicines
			  , pv.IsLatestVisit, pv.IsActive, pv.IsEdited, pv.EntryDate, pv.UpdatedDate, pv.CreatedBy, pv.UpdatedBy 	  
			  , inv.InvestigationId, inv.PatientId, inv.CaseId, inv.VisitId
			  , inv.HomeBloodGlucoseMonitoring
			  , inv.BloodGroup, inv.BloodGroup, bg.RecordName as BloodGroupText
			  , inv.UrineSugar, inv.UrineProtein, inv.HIV
			  , inv.HepatitisBsurfaceAntigen, inv.ThyroidStimuatingHormone, inv.VenerealDiseaseResearchLaboratory, inv.Other
			  , UterusWeeksPA
			  FROM  patient.tblPatientVisits pv with(nolock)
			  LEFT JOIN patient.tblInvestigation inv with(nolock) ON pv.VisitId=inv.VisitId	  

			   LEFT JOIN common.tblEntityRecords temp with(nolock) on pv.Temperature = temp.EntityRecordId
			  LEFT JOIN common.tblEntityRecords pal with(nolock) on pv.Pallor = pal.EntityRecordId
			  LEFT JOIN common.tblEntityRecords ict with(nolock) on pv.Icterus = ict.EntityRecordId
			  LEFT JOIN common.tblEntityRecords oed with(nolock) on pv.Oedema = oed.EntityRecordId
			  LEFT JOIN common.tblEntityRecords brst with(nolock) on pv.Breast = brst.EntityRecordId
			    --LEFT JOIN common.tblEntityRecords his with(nolock) on pv.HistoryOf = his.EntityRecordId

			--LEFT JOIN common.tblEntityRecords MensturalSeverity with(nolock) on pv.MensturalSeverity = MensturalSeverity.EntityRecordId

			 LEFT JOIN common.tblEntityRecords MensturalSeverity with(nolock) on CASE 
							WHEN TRY_CAST(pv.MensturalSeverity AS INT) IS NOT NULL THEN TRY_CAST(pv.MensturalSeverity AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = MensturalSeverity.EntityRecordId


			    LEFT JOIN common.tblEntityRecords his with(nolock) on CASE 
							WHEN TRY_CAST(pv.HistoryOf AS INT) IS NOT NULL THEN TRY_CAST(pv.HistoryOf AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = his.EntityRecordId


			  --LEFT JOIN common.tblEntityRecords comp with(nolock) on pv.ComplainOf = comp.EntityRecordId
			  LEFT JOIN common.tblEntityRecords comp with(nolock) on CASE 
							WHEN TRY_CAST(pv.ComplainOf AS INT) IS NOT NULL THEN TRY_CAST(pv.ComplainOf AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = comp.EntityRecordId
			  
			  --LEFT JOIN common.tblEntityRecords prab with(nolock) on pv.PerAbdomen = prab.EntityRecordId
			  LEFT JOIN common.tblEntityRecords prab with(nolock) on CASE 
							WHEN TRY_CAST(pv.PerAbdomen AS INT) IS NOT NULL THEN TRY_CAST(pv.PerAbdomen AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = prab.EntityRecordId
			  
			  --LEFT JOIN common.tblEntityRecords prsp with(nolock) on pv.PerSpeculum = prsp.EntityRecordId

			  LEFT JOIN common.tblEntityRecords prsp with(nolock) on CASE 
							WHEN TRY_CAST(pv.PerSpeculum AS INT) IS NOT NULL THEN TRY_CAST(pv.PerSpeculum AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END = prsp.EntityRecordId
			  
			  LEFT JOIN common.tblEntityRecords prvg with(nolock) on pv.PerVaginum = prvg.EntityRecordId

			 -- LEFT JOIN common.tblEntityRecords ebpp with(nolock) on pv.ExternalBallottementPresentingPart = ebpp.EntityRecordId
			 
			  LEFT JOIN common.tblEntityRecords ebpp with(nolock) on CASE 
							WHEN TRY_CAST( pv.ExternalBallottementPresentingPart AS INT) IS NOT NULL THEN TRY_CAST( pv.ExternalBallottementPresentingPart AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END = ebpp.EntityRecordId

			 LEFT JOIN common.tblEntityRecords fhs with(nolock) on pv.FetalHeartSound = fhs.EntityRecordId
			  LEFT JOIN common.tblEntityRecords utrs with(nolock) on pv.UterusCondition = utrs.EntityRecordId

			  LEFT JOIN common.tblEntityRecords bg with(nolock) on inv.BloodGroup = bg.EntityRecordId



			  WHERE pv.CaseId= @CaseId And pv.IsActive=1 And IsLatestVisit=0
			  --Order By pv.VisitId desc
			   Order By pv.EntryDate asc
			

			 --SELECT top 1 pv.VisitId, pv.CaseId, OpdDate, OpdTime
			 -- , PatientType, PresentHistory, FamilyHistory, PastHistory, MarriedLife
			 -- , FTNDS_LiveM, FTNDS_LiveF, FTNDS_DeadM, FTNDS_DeadF
			 -- , FTLSCS_LiveM, FTLSCS_LiveF, FTLSCS_DeadM, FTLSCS_DeadF
			 -- , Temperature, temp.RecordName as TemperatureText
			 -- , RespiratoryRate, SPO2
			 -- , Pallor, pal.RecordName as PallorText
			 -- , Icterus, ict.RecordName as IcterusText
			 -- , Oedema, oed.RecordName as OedemaText
			 -- , RespiratorySystem, CardiovascularSystem
			 -- , Breast, brst.RecordName as BreastText
			 -- , LMPDate, EDD, MensturalHistoryDays, MensturalDays, MensturalSeverity
			 -- , HistoryOf, his.RecordName as HistoryOfText
			 -- , ComplainOf, comp.RecordName as ComplainOfText
			 -- , Pulse, SystolicBloodPressure, DaistolicBloodPressure
			 -- , PerAbdomen, prab.RecordName as PerAbdomenText
			 -- , PerSpeculum, prsp.RecordName as PerSpeculumText
			 -- , PerVaginum, prvg.RecordName as PerVaginumText
			 -- , Diagnosis, Advice, Remark
			 -- , FollowupDays, FollowupDate
			 -- , Parity, PreviousDeliveryType
			 -- , PossibleLMP, WeeksAccordingLMP, PossibleEDD, WeeksAccordingFirstEDD, FirstEDDAccordingUSG, PreviousMH
			 -- , IsPAUtSelected, PAUtValue, UterusDays, UterusWeeks

			 -- , ExternalBallottementPresentingPart, ebpp.RecordName as ExternalBallottementPresentingPartText
			 -- , FetalHeartSound, fhs.RecordName as FetalHeartSoundText
			 -- , UterusCondition, utrs.RecordName as UterusConditionText

			 -- , PrescribedMedicines
			 -- , pv.IsLatestVisit, pv.IsActive, pv.IsEdited, pv.EntryDate, pv.UpdatedDate, pv.CreatedBy, pv.UpdatedBy 	  
			 -- , inv.InvestigationId, inv.PatientId, inv.CaseId, inv.VisitId
			 -- , inv.HomeBloodGlucoseMonitoring
			 -- , inv.BloodGroup, inv.BloodGroup, bg.RecordName as BloodGroupText
			 -- , inv.UrineSugar, inv.UrineProtein, inv.HIV
			 -- , inv.HepatitisBsurfaceAntigen, inv.ThyroidStimuatingHormone, inv.VenerealDiseaseResearchLaboratory, inv.Other
			 -- , UterusWeeksPA
			 -- FROM  patient.tblPatientVisits pv with(nolock)
			 -- LEFT JOIN patient.tblInvestigation inv with(nolock) ON pv.VisitId=inv.VisitId	  

			 --  LEFT JOIN common.tblEntityRecords temp with(nolock) on pv.Temperature = temp.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords pal with(nolock) on pv.Pallor = pal.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords ict with(nolock) on pv.Icterus = ict.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords oed with(nolock) on pv.Oedema = oed.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords brst with(nolock) on pv.Breast = brst.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords his with(nolock) on pv.HistoryOf = his.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords comp with(nolock) on pv.ComplainOf = comp.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords prab with(nolock) on pv.PerAbdomen = prab.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords prsp with(nolock) on pv.PerSpeculum = prsp.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords prvg with(nolock) on pv.PerVaginum = prvg.EntityRecordId

			 --  LEFT JOIN common.tblEntityRecords ebpp with(nolock) on pv.ExternalBallottementPresentingPart = ebpp.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords fhs with(nolock) on pv.FetalHeartSound = fhs.EntityRecordId
			 -- LEFT JOIN common.tblEntityRecords utrs with(nolock) on pv.UterusCondition = utrs.EntityRecordId

			 -- LEFT JOIN common.tblEntityRecords bg with(nolock) on inv.BloodGroup = bg.EntityRecordId



			 -- WHERE pv.CaseId=@CaseId And pv.IsActive=1 And IsLatestVisit=0
			 -- Order By pv.VisitId desc
		End

		Else If @VisitId > 0
		Begin
				

			   declare @IsFirstVisit1 int = 0

				declare @P_patientId1 bigint = 0, @C_caseId1 bigint = 0, @C_OpdDate1 datetime = getdate();

				select @P_patientId1 = PatientId, @C_caseId1 = CaseId, @C_OpdDate1 = OpdDate from patient.tblPatientVisits where VisitId = @VisitId

				select @IsFirstVisit1 = (case when COUNT(VisitId) > 1 then 1 else 0 end) from patient.tblPatientVisits where PatientId = @P_patientId1
										and CaseId = @C_caseId1


				declare @CountOfVisits1 bigint = 0;

				select @CountOfVisits1 =  COUNT( VisitId) from patient.tblPatientVisits where CaseId = @C_caseId1 and PatientId = @P_patientId1 and cast(OpdDate as date) <= CAST(isnull(@C_OpdDate1, GETDATE()) as date)

			   SELECT pv.VisitId, pv.CaseId, OpdDate, OpdTime , @CountOfVisits1 as VisitNo
			  , PatientType,
			 
			  replace(PresentHistory,'Not Significant','') as PresentHistory, 
			  replace(FamilyHistory,'Not Significant','') as FamilyHistory, 
			  replace(PastHistory,'Not Significant','') as PastHistory, 

			  MarriedLife
			  , FTNDS_LiveM, FTNDS_LiveF, FTNDS_DeadM, FTNDS_DeadF
			  , FTLSCS_LiveM, FTLSCS_LiveF, FTLSCS_DeadM, FTLSCS_DeadF
			  , Temperature, temp.RecordName as TemperatureText
			  , RespiratoryRate, SPO2
			  , Pallor, pal.RecordName as PallorText
			  , Icterus, ict.RecordName as IcterusText
			  , Oedema, oed.RecordName as OedemaText
			  , RespiratorySystem, CardiovascularSystem
			  , Breast, brst.RecordName as BreastText
			  , LMPDate, EDD, MensturalHistoryDays, MensturalDays
			  
			  , MensturalSeverity
			  
			  -- , MensturalSeverity.RecordName as MensturalSeverityText
			  
			   ,case 
					when isnull(MensturalSeverity.RecordName,'') = '' and isnull(MensturalSeverity.RecordName,'') = '' 
					then MensturalSeverity 
					else MensturalSeverity.RecordName
					end 
			    as MensturalSeverityText

			  --, HistoryOf, his.RecordName as HistoryOfText
			  
			  , HistoryOf 
			  ,Gync_LiveM
			  ,Gync_LiveF
			  ,case when isnull(his.RecordName,'') = ''  then HistoryOf else his.RecordName end as HistoryOfText
			  
			  , ComplainOf 
			  
			  --,comp.RecordName as ComplainOfText
			  --,case when isnull(comp.RecordName,'') = '' and isnull(comp.RecordName,'') = '' then ComplainOf end as ComplainOfText

			  ,case when isnull(comp.RecordName,'') = ''  then ComplainOf else  comp.RecordName end as ComplainOfText

			  , Pulse, SystolicBloodPressure, DaistolicBloodPressure
			  , PerAbdomen
			  
			  --, prab.RecordName as PerAbdomenText

			  ,case when isnull(prab.RecordName,'') = '' then PerAbdomen else prab.RecordName end as PerAbdomenText

			  , PerSpeculum
			  
			  --, prsp.RecordName as PerSpeculumText

			  ,case when isnull(prsp.RecordName,'') = '' then PerSpeculum else prsp.RecordName end as PerSpeculumText

			  , PerVaginum
			  
			  --, prvg.RecordName as PerVaginumText
			   ,case when isnull(prvg.RecordName,'') = '' then PerVaginum else prvg.RecordName end as PerVaginumText

			  , Diagnosis, Advice, Remark
			  , FollowupDays, FollowupDate
			  , Parity, PreviousDeliveryType
			  , PossibleLMP, WeeksAccordingLMP, PossibleEDD, WeeksAccordingFirstEDD, FirstEDDAccordingUSG, PreviousMH
			  , IsPAUtSelected, PAUtValue, UterusDays, UterusWeeks

			  , ExternalBallottementPresentingPart
			  --, ebpp.RecordName as ExternalBallottementPresentingPartText
			   ,case when isnull(ebpp.RecordName,'') = '' then ExternalBallottementPresentingPart else ebpp.RecordName end as ExternalBallottementPresentingPartText
			  
			  , FetalHeartSound
			  --, fhs.RecordName as FetalHeartSoundText
			  ,case when isnull(FHS.RecordName,'') = '' then FetalHeartSound else FHS.RecordName end 
					as FetalHeartSoundText

			  , UterusCondition
			  --, utrs.RecordName as UterusConditionText
			  ,case when isnull(utrs.RecordName,'') = '' then UterusCondition else utrs.RecordName end 
					as UterusConditionText
			  
			  , PrescribedMedicines
			  , pv.IsLatestVisit
			  
			  ,@IsFirstVisit1 as IsFirstVisit

			  , pv.IsActive, pv.IsEdited, pv.EntryDate, pv.UpdatedDate, pv.CreatedBy, pv.UpdatedBy 	  
			  , inv.InvestigationId, inv.PatientId, inv.CaseId, inv.VisitId
			  , isnull(inv.HomeBloodGlucoseMonitoring , '0') as HomeBloodGlucoseMonitoring
			  , isnull(inv.BloodGroup , '') as BloodGroup
			  , bg.RecordName as BloodGroupText
			  , inv.UrineSugar, inv.UrineProtein, inv.HIV
			  , inv.HepatitisBsurfaceAntigen, inv.ThyroidStimuatingHormone, inv.VenerealDiseaseResearchLaboratory, inv.Other
			  , UterusWeeksPA
			  FROM  patient.tblPatientVisits pv with(nolock)
			  LEFT JOIN patient.tblInvestigation inv with(nolock) ON 
			  pv.CaseId = inv.CaseId
			  --pv.VisitId=inv.VisitId	
			  
			  LEFT JOIN common.tblEntityRecords temp with(nolock) on pv.Temperature = temp.EntityRecordId
			  LEFT JOIN common.tblEntityRecords pal with(nolock) on pv.Pallor = pal.EntityRecordId
			  LEFT JOIN common.tblEntityRecords ict with(nolock) on pv.Icterus = ict.EntityRecordId
			  LEFT JOIN common.tblEntityRecords oed with(nolock) on pv.Oedema = oed.EntityRecordId
			  LEFT JOIN common.tblEntityRecords brst with(nolock) on pv.Breast = brst.EntityRecordId

			  --LEFT JOIN common.tblEntityRecords MensturalSeverity with(nolock) on pv.MensturalSeverity = MensturalSeverity.EntityRecordId
			  
			  --LEFT JOIN common.tblEntityRecords his with(nolock) on pv.HistoryOf = his.EntityRecordId

			  LEFT JOIN common.tblEntityRecords MensturalSeverity with(nolock) on CASE 
							WHEN TRY_CAST(pv.MensturalSeverity AS INT) IS NOT NULL THEN TRY_CAST(pv.MensturalSeverity AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = MensturalSeverity.EntityRecordId

			  LEFT JOIN common.tblEntityRecords his with(nolock) on CASE 
							WHEN TRY_CAST(pv.HistoryOf AS INT) IS NOT NULL THEN TRY_CAST(pv.HistoryOf AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = his.EntityRecordId


			  --LEFT JOIN common.tblEntityRecords comp with(nolock) on pv.ComplainOf = comp.EntityRecordId
			  LEFT JOIN common.tblEntityRecords comp with(nolock) on CASE 
							WHEN TRY_CAST(pv.ComplainOf AS INT) IS NOT NULL THEN TRY_CAST(pv.ComplainOf AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = comp.EntityRecordId
			  
			  --LEFT JOIN common.tblEntityRecords prab with(nolock) on pv.PerAbdomen = prab.EntityRecordId
			  LEFT JOIN common.tblEntityRecords prab with(nolock) on CASE 
							WHEN TRY_CAST(pv.PerAbdomen AS INT) IS NOT NULL THEN TRY_CAST(pv.PerAbdomen AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = prab.EntityRecordId
			  
			  --LEFT JOIN common.tblEntityRecords prsp with(nolock) on pv.PerSpeculum = prsp.EntityRecordId

			  LEFT JOIN common.tblEntityRecords prsp with(nolock) on CASE 
							WHEN TRY_CAST(pv.PerSpeculum AS INT) IS NOT NULL THEN TRY_CAST(pv.PerSpeculum AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END = prsp.EntityRecordId
			  
			  --LEFT JOIN common.tblEntityRecords prvg with(nolock) on pv.PerVaginum = prvg.EntityRecordId
			  LEFT JOIN common.tblEntityRecords prvg with(nolock) on CASE 
							WHEN TRY_CAST( pv.PerVaginum AS INT) IS NOT NULL THEN TRY_CAST( pv.PerVaginum AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END = prvg.EntityRecordId


			 -- LEFT JOIN common.tblEntityRecords ebpp with(nolock) on pv.ExternalBallottementPresentingPart = ebpp.EntityRecordId
			 
			  LEFT JOIN common.tblEntityRecords ebpp with(nolock) on CASE 
							WHEN TRY_CAST( pv.ExternalBallottementPresentingPart AS INT) IS NOT NULL THEN TRY_CAST( pv.ExternalBallottementPresentingPart AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END = ebpp.EntityRecordId


			LEFT JOIN common.tblEntityRecords FHS with(nolock) on CASE 
							WHEN TRY_CAST( pv.FetalHeartSound AS INT) IS NOT NULL THEN TRY_CAST( pv.FetalHeartSound AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END = FHS.EntityRecordId


			-- LEFT JOIN common.tblEntityRecords fhs with(nolock) on pv.FetalHeartSound = fhs.EntityRecordId


			LEFT JOIN common.tblEntityRecords utrs with(nolock) on CASE 
							WHEN TRY_CAST( pv.UterusCondition AS INT) IS NOT NULL THEN TRY_CAST( pv.UterusCondition AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END = utrs.EntityRecordId

			 --LEFT JOIN common.tblEntityRecords utrs with(nolock) on pv.UterusCondition = utrs.EntityRecordId

			  LEFT JOIN common.tblEntityRecords bg with(nolock) on inv.BloodGroup = bg.EntityRecordId

			  WHERE pv.VisitId=@VisitId 


		End

		ELSE IF @SubCommand = 'PreviousDataLoad'
		BEGIN
			
			--select @PatientId
			--///  Previous visit data on load
			declare @IsFirstVisit_Prev int = 0

				declare @P_patientId_Prev bigint = 0, @C_caseId_Prev bigint = 0
				select top 1  @C_caseId_Prev = CaseId from patient.tblPatientVisits where PatientId = @PatientId

				select @IsFirstVisit = (case when COUNT(VisitId) > 1 then 1 else 0 end) from patient.tblPatientVisits where PatientId = @PatientId
				and CaseId = @C_caseId_Prev

		    declare @PreviousData_visitid bigint = 0
			select top 1 @PreviousData_visitid = VisitId from patient.tblPatientVisits 
			where CaseId = @C_caseId_Prev order by EntryDate asc

			--declare  @IsFirstVisit bigint	= 0
			  SELECT pv.VisitId, pv.CaseId, OpdDate, OpdTime
			  , PatientType,
			  --PresentHistory, 
			  --FamilyHistory, 
			  --PastHistory,

			   replace(PresentHistory,'Not Significant','') as PresentHistory, 
			  replace(FamilyHistory,'Not Significant','') as FamilyHistory, 
			  replace(PastHistory,'Not Significant','') as PastHistory, 

			  MarriedLife
			  , FTNDS_LiveM, FTNDS_LiveF, FTNDS_DeadM, FTNDS_DeadF
			  , FTLSCS_LiveM, FTLSCS_LiveF, FTLSCS_DeadM, FTLSCS_DeadF
			  , Temperature, temp.RecordName as TemperatureText
			  , RespiratoryRate, SPO2
			  , Pallor, pal.RecordName as PallorText
			  , Icterus, ict.RecordName as IcterusText
			  , Oedema, oed.RecordName as OedemaText
			  , RespiratorySystem, CardiovascularSystem
			  , Breast, brst.RecordName as BreastText
			  , LMPDate, EDD, MensturalHistoryDays, MensturalDays
			  
			  , MensturalSeverity
			  --, MensturalSeverity.RecordName as MensturalSeverityText
			  ,case 
					when isnull(MensturalSeverity.RecordName,'') = '' and isnull(MensturalSeverity.RecordName,'') = '' 
					then MensturalSeverity 
					else MensturalSeverity.RecordName
					end 
			    as MensturalSeverityText

			  , HistoryOf, his.RecordName as HistoryOfText
			  , ComplainOf 
			  
			  --,comp.RecordName as ComplainOfText
			  ,case when isnull(comp.RecordName,'') = '' and isnull(comp.RecordName,'') = '' then ComplainOf end as ComplainOfText

			  , Pulse, SystolicBloodPressure, DaistolicBloodPressure
			  , PerAbdomen
			  
			  --, prab.RecordName as PerAbdomenText

			  ,case when isnull(comp.RecordName,'') = '' and isnull(comp.RecordName,'') = '' then PerAbdomen end as PerAbdomenText

			  , PerSpeculum
			  
			  --, prsp.RecordName as PerSpeculumText

			  ,case when isnull(prsp.RecordName,'') = '' and isnull(prsp.RecordName,'') = '' then PerSpeculum end as PerSpeculumText

			  , PerVaginum, prvg.RecordName as PerVaginumText
			  , Diagnosis, Advice, Remark
			  , FollowupDays, FollowupDate
			  , Parity, PreviousDeliveryType
			  , PossibleLMP, WeeksAccordingLMP, PossibleEDD, WeeksAccordingFirstEDD, FirstEDDAccordingUSG, PreviousMH
			  , IsPAUtSelected, PAUtValue, UterusDays, UterusWeeks

			  , ExternalBallottementPresentingPart
			  --, ebpp.RecordName as ExternalBallottementPresentingPartText
			   ,case when isnull(ebpp.RecordName,'') = '' and isnull(ebpp.RecordName,'') = '' then ExternalBallottementPresentingPart end as ExternalBallottementPresentingPartText
			  
			  , FetalHeartSound, fhs.RecordName as FetalHeartSoundText
			  , UterusCondition, utrs.RecordName as UterusConditionText
			  
			  , PrescribedMedicines
			  , pv.IsLatestVisit
			  ,Gync_LiveM
			  ,Gync_LiveF

			  ,@IsFirstVisit as IsFirstVisit

			  , pv.IsActive, pv.IsEdited, pv.EntryDate, pv.UpdatedDate, pv.CreatedBy, pv.UpdatedBy 	  
			  , inv.InvestigationId, inv.PatientId, inv.CaseId, inv.VisitId
			  , inv.HomeBloodGlucoseMonitoring
			  , inv.BloodGroup, bg.RecordName as BloodGroupText
			  , inv.UrineSugar, inv.UrineProtein, inv.HIV
			  , inv.HepatitisBsurfaceAntigen, inv.ThyroidStimuatingHormone, inv.VenerealDiseaseResearchLaboratory, inv.Other
			  , UterusWeeksPA
			  FROM  patient.tblPatientVisits pv with(nolock)
			  LEFT JOIN patient.tblInvestigation inv with(nolock) ON 
			  pv.CaseId = inv.CaseId
			  --pv.VisitId=inv.VisitId	
			  
			  LEFT JOIN common.tblEntityRecords temp with(nolock) on pv.Temperature = temp.EntityRecordId
			  LEFT JOIN common.tblEntityRecords pal with(nolock) on pv.Pallor = pal.EntityRecordId
			  LEFT JOIN common.tblEntityRecords ict with(nolock) on pv.Icterus = ict.EntityRecordId
			  LEFT JOIN common.tblEntityRecords oed with(nolock) on pv.Oedema = oed.EntityRecordId
			  LEFT JOIN common.tblEntityRecords brst with(nolock) on pv.Breast = brst.EntityRecordId
			  LEFT JOIN common.tblEntityRecords his with(nolock) on pv.HistoryOf = his.EntityRecordId

			   --LEFT JOIN common.tblEntityRecords MensturalSeverity with(nolock) on pv.MensturalSeverity = MensturalSeverity.EntityRecordId

			    LEFT JOIN common.tblEntityRecords MensturalSeverity with(nolock) on CASE 
							WHEN TRY_CAST(pv.MensturalSeverity AS INT) IS NOT NULL THEN TRY_CAST(pv.MensturalSeverity AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = MensturalSeverity.EntityRecordId

			  --LEFT JOIN common.tblEntityRecords comp with(nolock) on pv.ComplainOf = comp.EntityRecordId
			  LEFT JOIN common.tblEntityRecords comp with(nolock) on CASE 
							WHEN TRY_CAST(pv.ComplainOf AS INT) IS NOT NULL THEN TRY_CAST(pv.ComplainOf AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = comp.EntityRecordId
			  
			  --LEFT JOIN common.tblEntityRecords prab with(nolock) on pv.PerAbdomen = prab.EntityRecordId
			  LEFT JOIN common.tblEntityRecords prab with(nolock) on CASE 
							WHEN TRY_CAST(pv.PerAbdomen AS INT) IS NOT NULL THEN TRY_CAST(pv.PerAbdomen AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END  = prab.EntityRecordId
			  
			  --LEFT JOIN common.tblEntityRecords prsp with(nolock) on pv.PerSpeculum = prsp.EntityRecordId

			  LEFT JOIN common.tblEntityRecords prsp with(nolock) on CASE 
							WHEN TRY_CAST(pv.PerSpeculum AS INT) IS NOT NULL THEN TRY_CAST(pv.PerSpeculum AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END = prsp.EntityRecordId
			  
			  LEFT JOIN common.tblEntityRecords prvg with(nolock) on pv.PerVaginum = prvg.EntityRecordId

			 -- LEFT JOIN common.tblEntityRecords ebpp with(nolock) on pv.ExternalBallottementPresentingPart = ebpp.EntityRecordId
			 
			  LEFT JOIN common.tblEntityRecords ebpp with(nolock) on CASE 
							WHEN TRY_CAST( pv.ExternalBallottementPresentingPart AS INT) IS NOT NULL THEN TRY_CAST( pv.ExternalBallottementPresentingPart AS INT)
							ELSE NULL -- Handle invalid data gracefully
						END = ebpp.EntityRecordId

			 LEFT JOIN common.tblEntityRecords fhs with(nolock) on pv.FetalHeartSound = fhs.EntityRecordId
			  LEFT JOIN common.tblEntityRecords utrs with(nolock) on pv.UterusCondition = utrs.EntityRecordId

			  LEFT JOIN common.tblEntityRecords bg with(nolock) on inv.BloodGroup = bg.EntityRecordId

			  WHERE pv.VisitId=@PreviousData_visitid
				--///  Previous visit data on load
		END

		Else
		Begin
				
			   SELECT pv.VisitId, pv.CaseId, OpdDate, OpdTime
			  , PatientType, PresentHistory, FamilyHistory, PastHistory, MarriedLife
			  , FTNDS_LiveM, FTNDS_LiveF, FTNDS_DeadM, FTNDS_DeadF
			  , FTLSCS_LiveM, FTLSCS_LiveF, FTLSCS_DeadM, FTLSCS_DeadF
			  , Temperature, temp.RecordName as TemperatureText
			  , RespiratoryRate, SPO2
			  , Pallor, pal.RecordName as PallorText
			  , Icterus, ict.RecordName as IcterusText
			  , Oedema, oed.RecordName as OedemaText
			  , RespiratorySystem, CardiovascularSystem
			  , Breast, brst.RecordName as BreastText
			  , LMPDate, EDD, MensturalHistoryDays, MensturalDays, MensturalSeverity

			  , MensturalSeverity.RecordName as MensturalSeverityText

			  , HistoryOf, his.RecordName as HistoryOfText
			  
			  , ComplainOf
			  , comp.RecordName as ComplainOfText

			  , Pulse, SystolicBloodPressure, DaistolicBloodPressure
			  , PerAbdomen, prab.RecordName as PerAbdomenText
			  , PerSpeculum, prsp.RecordName as PerSpeculumText
			  , PerVaginum, prvg.RecordName as PerVaginumText
			  , Diagnosis, Advice, Remark
			  , FollowupDays, FollowupDate
			  , Parity, PreviousDeliveryType
			  , PossibleLMP, WeeksAccordingLMP, PossibleEDD, WeeksAccordingFirstEDD, FirstEDDAccordingUSG, PreviousMH
			  , IsPAUtSelected, PAUtValue, UterusDays, UterusWeeks

			  , ExternalBallottementPresentingPart, ebpp.RecordName as ExternalBallottementPresentingPartText
			  , FetalHeartSound, fhs.RecordName as FetalHeartSoundText
			  , UterusCondition, utrs.RecordName as UterusConditionText
			  
			  , PrescribedMedicines
			  , pv.IsLatestVisit, pv.IsActive, pv.IsEdited, pv.EntryDate, pv.UpdatedDate, pv.CreatedBy, pv.UpdatedBy 	  
			  , inv.InvestigationId, inv.PatientId, inv.CaseId, inv.VisitId
			  , inv.HomeBloodGlucoseMonitoring
			  , inv.BloodGroup, inv.BloodGroup, bg.RecordName as BloodGroupText
			  , inv.UrineSugar, inv.UrineProtein, inv.HIV
			  , inv.HepatitisBsurfaceAntigen, inv.ThyroidStimuatingHormone, inv.VenerealDiseaseResearchLaboratory, inv.Other
			  , UterusWeeksPA
			  ,Gync_LiveM
			  ,Gync_LiveF
			  FROM  patient.tblPatientVisits pv with(nolock)
			  LEFT JOIN patient.tblInvestigation inv with(nolock) ON pv.VisitId=inv.VisitId	  

			   LEFT JOIN common.tblEntityRecords temp with(nolock) on pv.Temperature = temp.EntityRecordId

			    LEFT JOIN common.tblEntityRecords MensturalSeverity with(nolock) on pv.MensturalSeverity = MensturalSeverity.EntityRecordId

			  LEFT JOIN common.tblEntityRecords pal with(nolock) on pv.Pallor = pal.EntityRecordId
			  LEFT JOIN common.tblEntityRecords ict with(nolock) on pv.Icterus = ict.EntityRecordId
			  LEFT JOIN common.tblEntityRecords oed with(nolock) on pv.Oedema = oed.EntityRecordId
			  LEFT JOIN common.tblEntityRecords brst with(nolock) on pv.Breast = brst.EntityRecordId
			  LEFT JOIN common.tblEntityRecords his with(nolock) on pv.HistoryOf = his.EntityRecordId
			  LEFT JOIN common.tblEntityRecords comp with(nolock) on pv.ComplainOf = comp.EntityRecordId
			  LEFT JOIN common.tblEntityRecords prab with(nolock) on pv.PerAbdomen = prab.EntityRecordId
			  LEFT JOIN common.tblEntityRecords prsp with(nolock) on pv.PerSpeculum = prsp.EntityRecordId
			  LEFT JOIN common.tblEntityRecords prvg with(nolock) on pv.PerVaginum = prvg.EntityRecordId

			  LEFT JOIN common.tblEntityRecords ebpp with(nolock) on pv.ExternalBallottementPresentingPart = ebpp.EntityRecordId
			  LEFT JOIN common.tblEntityRecords fhs with(nolock) on pv.FetalHeartSound = fhs.EntityRecordId
			  LEFT JOIN common.tblEntityRecords utrs with(nolock) on pv.UterusCondition = utrs.EntityRecordId

			  LEFT JOIN common.tblEntityRecords bg with(nolock) on inv.BloodGroup = bg.EntityRecordId

			  WHERE pv.CaseId=@CaseId And pv.IsActive=1 And IsLatestVisit=1
		End


     
    END 
     
    ELSE IF @Command='DELETE' 
    BEGIN 
      DELETE FROM patient.tblPatientVisits WHERE VisitId=@VisitId 
    
		IF @@ERROR=0
		Begin               
			SELECT @v_IsSuccess=1, @v_Identity = @VisitId, @v_Message='success'
		End
		Else
		Begin
			SELECT @v_IsSuccess=0, @v_Identity = 0, @v_Message=ERROR_MESSAGE()
		End
             
		SELECT @v_IsSuccess AS IsSuccess, @v_IsSuccess as IdentityValue, @v_Message as ProcessMessage
    
    END 

   SET NOCOUNT OFF; 

  END;  
 
---------------------------------------------------------------------------------------


USE [MyDbOPD]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Manage_VillageCity]    Script Date: 13-02-2026 01:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ============
 ALTER PROC [dbo].[Usp_Manage_VillageCity]  
   @Command varchar(200) 
  , @VillageCityId int=NULL 
  , @VillageCity nvarchar(200)=NULL 
  , @Language nvarchar(50)=NULL 
  , @TalukaId int=NULL 
  , @IsActive bit=NULL 
  , @IsEdited bit=NULL 
  , @EntryDate datetime=NULL 
  , @UpdatedDate datetime=NULL 
  , @CreatedBy bigint=NULL 
  , @UpdatedBy bigint=NULL 
  , @Edit bit=NULL 
  , @SearchType varchar(200)=NULL
  , @SearchKey varchar(1000)=NULL
  , @SortBy varchar(200)='VillageCity'
  , @SortOrder varchar(5)='Asc'
  , @PageNo int=1
  , @PageSize int=10  
  , @outIsSuccess bit = NULL OUTPUT
  , @outIdentity bigint = NULL OUTPUT
  , @outMessage VARCHAR(MAX) = NULL OUTPUT
  , @outCustomMessage VARCHAR(MAX) = NULL OUTPUT
  , @SubCommand varchar(200) = NULL,

  --New Added
  @MultipleDeleteIds nvarchar(max) = null
  --New Added

  , @Taluka nvarchar(200) = ''
  , @State nvarchar(200) = ''
  , @District nvarchar(200) = ''

  , @Society nvarchar(200) = ''
  , @SocietyId bigint = 0
  , @Area nvarchar(200) = null
  , @AreaId bigint = 0
  , @City nvarchar(200) = null

   
 AS 
  BEGIN 
   SET NOCOUNT ON;        
	   
  DECLARE @v_IsSuccess bit=0, @v_Identity as bigint=0, @v_Message varchar(MAX)='', @v_CustomMessage varchar(MAX)=''
	   , @BaseQry varchar(MAX), @WhereQry varchar(MAX), @Qry varchar(8000), @StartRow int=0, @StopRow int=0, @v_PagingQry varchar(2000)=''
  
    IF @Command='INSERT' 
    BEGIN 

	If Not Exists (select top 1 VillageCityId from location.tblVillageCity with (nolock) where VillageCity=@VillageCity and TalukaId=@TalukaId and Language=@Language)
		Begin
				INSERT INTO location.tblVillageCity  
				 (VillageCity, Language, TalukaId, IsActive, IsEdited, EntryDate, UpdatedDate, CreatedBy, UpdatedBy , taluka , State , District
				 , Society , Area , City , AreaId , SocietyId , isvillageCity ) 
			   VALUES (@VillageCity, @Language, @TalukaId, @IsActive, @IsEdited, @EntryDate, @UpdatedDate, @CreatedBy, @UpdatedBy , @Taluka , @State , @District , @Society , @Area , @City , @AreaId , @SocietyId , 1)  
        
				IF @@ERROR=0
				Begin               
					SELECT @v_IsSuccess=1, @v_Identity = SCOPE_IDENTITY(), @v_Message='success',  @v_CustomMessage = 'Saved successfully!'
				End
				Else
				Begin
					SELECT @v_IsSuccess=0, @v_Identity = 0, @v_Message=ERROR_MESSAGE(),  @v_CustomMessage = 'Save failed!'
				End
		End
		Else
		Begin
			SELECT  @v_IsSuccess=0, @v_Identity = 0, @v_Message='error', @v_CustomMessage='Duplication error. Village/City and Taluka combination with this name already exists!'
		End                  

		SELECT @outIsSuccess=@v_IsSuccess , @outIdentity=@v_Identity, @outMessage=@v_Message, @outCustomMessage = @v_CustomMessage

    END 
     
    ELSE IF @Command='UPDATE' 
    BEGIN 

	If not Exists (select top 1 VillageCityId from location.tblVillageCity with (nolock) where VillageCity=@VillageCity and TalukaId=@TalukaId and Language=@Language and VillageCityId!=@VillageCityId)
			Begin				
				 UPDATE location.tblVillageCity SET 
				  VillageCity=@VillageCity 
				, Language=@Language 
				--, TalukaId=@TalukaId 
				, IsActive=@IsActive 
				, IsEdited=@IsEdited 			
				, UpdatedDate=@UpdatedDate
				, UpdatedBy=@UpdatedBy 
				,State = @State
				,District = @District
				,taluka = @taluka
				,City = @City
				,AreaId = @AreaId
				, Society = @Society
				,Area = @Area
				, SocietyId = @SocietyId
				 WHERE VillageCityId=@VillageCityId   
		 
					IF @@ERROR=0
					Begin               
						SELECT @v_IsSuccess=1, @v_Identity = @VillageCityId, @v_Message='success',  @v_CustomMessage = 'Saved successfully!'
					End
					Else
					Begin
						SELECT @v_IsSuccess=0, @v_Identity = @VillageCityId, @v_Message=ERROR_MESSAGE(),  @v_CustomMessage = 'Save failed!'
					End 
			End
			Else
			Begin
				SELECT @v_IsSuccess=0, @v_Identity = @VillageCityId, @v_Message='error', @v_CustomMessage='Duplication error. Village/City and Taluka combination with this name already exists!'
			End                 
		
			SELECT @outIsSuccess=@v_IsSuccess , @outIdentity=@v_Identity, @outMessage=@v_Message, @outCustomMessage = @v_CustomMessage
    END 
     
    ELSE IF @Command='SELECT' 
    BEGIN      

	  If @SubCommand = 'SelectSingle'
		Begin
			 SELECT VillageCityId, VillageCity, vc.Language, vc.IsActive, vc.IsEdited, vc.EntryDate, vc.UpdatedDate, vc.CreatedBy, vc.UpdatedBy
			, t.TalukaId, t.Taluka
			, d.DistrictId, d.District
			, s.StateId, s.State			
			FROM location.tblVillageCity vc with(nolock)
			INNER JOIN location.tblTaluka t with(nolock) on vc.TalukaId=t.TalukaId
			INNER JOIN location.tblDistrict d with(nolock) on t.DistrictId=d.DistrictId
			INNER JOIN location.tblState s with(nolock) ON d.StateId=s.StateId
			WHERE VillageCityId=@VillageCityId 
		End

		Else if @SubCommand='GetAllList' 
		Begin
			Set @StartRow = ((@PageNo-1)*@PageSize) + 1		
			Set @StopRow = (@PageNo*@PageSize)
    
			if @PageSize > 0
			begin
				set @v_PagingQry = ' Where CTE.RowId Between '+CONVERT(varchar(30),@StartRow) +' And '+ CONVERT(varchar(30),@StopRow)
			end

			SET @WhereQry = ' 1=1 '		
			
			If ISNULL(@Language,'')!=''
				SET @WhereQry += ' And t.Language = ''' + @Language + ''''		
			
			If ISNULL(@SearchKey,'')!=''
			Begin
				SET @WhereQry = @WhereQry + ' AND ' 
					+ CASE @SearchType
					 When 'VillageCity'
						Then 'vc.VillageCity = ''' + Convert(varchar, @SearchKey) + ''''
					 When 'Taluka'
						Then 't.Taluka = ''' + Convert(varchar, @SearchKey) + ''''
					 When 'TalukaId'
						Then 't.TalukaId = ' + Convert(varchar, @SearchKey) 
					 When 'District'
						Then 'd.District = ''' + Convert(varchar, @SearchKey) + ''''
					 When 'DistrictId'
						Then 'd.DistrictId = ' + Convert(varchar, @SearchKey) 
					 When 'State'
						Then 's.State = ''' + Convert(varchar, @SearchKey) + ''''	
					 When 'StateId'
						Then 's.StateId = ' + Convert(varchar, @SearchKey) 
					 When 'FreeSearch'
						Then '(vc.VillageCity like ''%' + @SearchKey + '%'' Or t.Taluka like ''%' + @SearchKey + '%'' Or d.District like ''%' + @SearchKey + '%'' Or s.State like ''%' + @SearchKey + '%'' Or vc.Language like ''%' + @SearchKey + '%'')' 
					 End
			End		
			
			--print @WhereQry	
			
			set @BaseQry = '
				With CTE AS (
					Select VillageCityId, Row_Number() Over (Order by SortBy ' + @SortOrder + ') as RowId From
					(
						Select vc.VillageCityId, ' + @SortBy + ' as SortBy
						 FROM 
						 location.tblVillageCity vc with (nolock)
						 left JOIN location.tblTaluka t with (nolock) ON vc.TalukaId=t.TalukaId
						 left JOIN location.tblDistrict d with(nolock) ON t.DistrictId=d.DistrictId
						 left JOIN location.tblState s with(nolock) ON d.StateId=s.StateId
						WHERE ' + @WhereQry + ' 
					) A
				) Select distinct 
				CTE.RowId
				--, (select Count(RowId) from CTE) as TotalCount
				--, (select Ceiling(Cast(Count(RowId) as Float)/' + CONVERT(varchar(30),@PageSize) + ') from CTE) as PageCount
				, vc.VillageCityId, vc.VillageCity, vc.Language
				, ISNULL(t.TalukaId , 0) as TalukaId, ISNULL(t.Taluka,'''') as Taluka
				, ISNULL(d.DistrictId, 0) as DistrictId, ISNULL(d.District,'''') as District
				, ISNULL(s.StateId,0) as StateId ,ISNULL( vc.State , '''') as State

				, vc.IsActive, vc.IsEdited, vc.EntryDate, vc.UpdatedDate, vc.CreatedBy, vc.UpdatedBy ,
				  ISNULL(vc.Area,'''') as Area, ISNULL(vc.City , '''') as City  , ISNULL(vc.Society,'''') as Society , SocietyId								  
				  From CTE
				  left JOIN location.tblVillageCity vc with (nolock) ON CTE.VillageCityId=vc.VillageCityId
				  left JOIN location.tblTaluka t with(nolock) ON vc.TalukaId=t.TalukaId
				  left JOIN location.tblDistrict d with(nolock) ON t.DistrictId=d.DistrictId
				  left JOIN location.tblState s with(nolock) ON d.StateId=s.StateId 

		
				  ' + @v_PagingQry + 
				  ' Order by RowId	'	
				
		
			print '--@WhereQry' + @WhereQry			
			print '--@BaseQry' + @BaseQry			
			Exec (@BaseQry)
		End

		-- New Logic of Get tokenized autosuggest
		ELSE IF @SubCommand = 'GetTokenize'
		BEGIN
				set @Language  = case when isnull(@Language,'') = '' then 'english' else @Language end

				;With CTE AS (
					Select * From
					(
						Select * 
						 FROM 
						 location.tblVillageCity vc with (nolock)
						WHERE  1=1   and Language = @Language  and IsVillageCity = 1
					) A
				) Select distinct 
				
				 --vc.VillageCityId,
				 vc.VillageCity, vc.Language
				 ,vc.Taluka
				, vc.District
				, vc.State
				, vc.IsActive
				, vc.IsEdited
				--, vc.EntryDate, vc.UpdatedDate, vc.CreatedBy, vc.UpdatedBy									  
				From CTE vc 
				where isnull(VillageCity,'') <> ''
				and isnull(District,'') <> ''
				and isnull(taluka,'') <> ''
		END
		-- New Logic of Get tokenized autosuggest
		ELSE IF @SubCommand = 'GetTokenizeArea'
		BEGIN
				set @Language  = case when isnull(@Language,'') = '' then 'english' else @Language end

					;With CTE AS (
					Select * From
					(
						Select * 
						 FROM 
						 location.tblVillageCity vc with (nolock)
						WHERE  1=1   and Language = @Language and IsActive = 1
					) A
				) Select distinct 
				
				 vc.VillageCityId
				 , vc.VillageCity
				 , vc.Language
				 ,vc.Taluka
				, vc.District
				, vc.State
				,vc.Area
				,vc.Society
				, vc.IsActive, vc.IsEdited, vc.EntryDate, vc.UpdatedDate, vc.CreatedBy, vc.UpdatedBy									  
				From CTE vc 
		END
		-- New Logic of Get tokenized autosuggest


		IF @SubCommand = 'GetTokenizeSocietyFullList'
		BEGIN
			set @Language  = case when isnull(@Language,'') = '' then 'english' else @Language end

				;With CTE AS (
					Select * From
					(
						Select * 
						 FROM 
						 location.tblVillageCity vc with (nolock)
						WHERE  1=1   and Language = @Language and IsActive = 1 and IsVillageCity = 0
					) A
				) Select distinct 
				
				--vc.VillageCityId,
				vc.VillageCity,
				vc.Language,
				vc.SocietyId,
				 vc.Society,

				 ss.StateId,
				 vc.State,

				 vc.AreaId,
				 vc.Area,

				 vc.City,
				 c.cityid,
				 
				 vc.IsActive 
				 --vc.IsEdited,
				 --vc.EntryDate, 
				 --vc.UpdatedDate, 
				 --vc.CreatedBy, 
				 --vc.UpdatedBy
				 
				From CTE vc 
				inner join location.tblArea a on a.AreaId = vc.AreaId
				inner join location.TblCity c on c.CityId = a.CityId
				inner join location.tblState ss on ss.StateId = c.StateId
		END


		ELSE IF @SubCommand = 'GetTokenizeAreaList'
		BEGIN
				set @Language  = case when isnull(@Language,'') = '' then 'english' else @Language end

				--	;With CTE AS (
				--	Select * From
				--	(
				--		select area , societyid , society , s.isActive from location.tblarea a
				--		inner join location.tblsociety s on s.areaid = a.areaid
				--		where 1 = 1 and s.language = @Language and 
				--		(
				--			(isnull(@Society, '') = ''  and 1 = 1 )
				--			or
				--			(s.society = @Society)
						
				--		)
				--	) A
				--) Select distinct 
				
				--vc.area
				--,vc.SocietyId
				--, vc.society
				--,vc.isActive
				--From CTE vc
				
				;With CTE AS (
					Select * From
					(
						select distinct Area ,IsActive from location.tblVillageCity 
						where 1 = 1 and language = @Language and 
						--where 1 = 1 and language = 'English' and 
						(
							(isnull(@VillageCity, '') = ''  and 1 = 1 )
							or
							(VillageCity = @VillageCity)
						
						)
					) A
				) Select distinct 
				
				vc.Area as Area,
				IsActive as IsActive
				From CTE vc


		END
		-- New Logic of Get tokenized autosuggest
		ELSE IF @SubCommand = 'GetTokenizeCityList'
		BEGIN
				set @Language  = case when isnull(@Language,'') = '' then 'english' else @Language end

				
				
				;With CTE AS (
					Select * From
					(
						--select distinct CityName as City ,IsActive from location.TblCity 
						--where 1 = 1 and language = @Language and 
						select s.StateId, State , CityId , CityName as City , c.IsActive , c.language from location.TblCity c
						inner join location.tblState s on s.StateId = c.StateId
						where 1 = 1 and c.language = @Language and 
						(
							(isnull(@State, '') = ''  and 1 = 1 )
							or
							(State = @State)
						
						)
					) A
				) Select distinct 
				vc.State ,
				vc.StateId ,
				vc.Language ,
				vc.City as City,
				IsActive as IsActive
				From CTE vc


		END



    END 
     
    ELSE IF @Command='DELETE' 
    BEGIN 
		IF @SubCommand = 'Multiple'
		BEGIN
			
			DELETE FROM location.tblVillageCity WHERE VillageCityId in (select value from string_split(@MultipleDeleteIds,','))
		END
		ELSE
		BEGIN
			DELETE FROM location.tblVillageCity WHERE VillageCityId=@VillageCityId 
		END
			
    
		IF @@ERROR=0
		Begin               
			SELECT @v_IsSuccess=1, @v_Identity = @VillageCityId, @v_Message='success'
		End
		Else
		Begin
			SELECT @v_IsSuccess=0, @v_Identity = 0, @v_Message=ERROR_MESSAGE()
		End
             
		SELECT @v_IsSuccess AS IsSuccess, @v_IsSuccess as IdentityValue, @v_Message as ProcessMessage
    
    END 

   SET NOCOUNT OFF; 

  END  
 

