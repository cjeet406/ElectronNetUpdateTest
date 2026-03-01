use MyDbOPD;


USE [MyDbOPD]
GO
/****** Object:  Table [common].[tbl_UserSettingConfiguration]    Script Date: 01-03-2026 16:23:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[common].[tbl_UserSettingConfiguration]') AND type in (N'U'))
DROP TABLE [common].[tbl_UserSettingConfiguration]
GO
/****** Object:  Table [common].[tbl_UserSettingConfiguration]    Script Date: 01-03-2026 16:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [common].[tbl_UserSettingConfiguration](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[userId] [bigint] NULL,
	[userCode] [nvarchar](200) NULL,
	[module] [nvarchar](200) NULL,
	[fieldName] [nvarchar](200) NULL,
	[defaultValue] [nvarchar](200) NULL,
	[createdOn] [datetime] NULL,
	[updatedOn] [datetime] NULL,
	[tabIndex] [int] NULL,
	[emptyText] [nvarchar](400) NULL,
	[setting] [nvarchar](100) NULL,
	[inputType] [nvarchar](100) NULL,
	[isValid] [bit] NULL,
	[HospitalId] [bigint] NULL,
	[ModuleFormId] [nvarchar](200) NULL,
	[Visited] [bit] NULL,
	[VisitedTabIndex] [int] NULL,
	[cStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [common].[tbl_UserSettingConfiguration] ON 
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (37, 1, N'EMP34', N'Consultation', N'.brand-onload', NULL, CAST(N'2025-04-15T22:00:16.180' AS DateTime), NULL, 0, NULL, N'tab', N'table', 1, 1, N'consultation', 0, 0, 0)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (38, 1, N'EMP34', N'Consultation', N'.content-onload', NULL, CAST(N'2025-04-15T22:00:16.180' AS DateTime), NULL, 0, NULL, N'tab', N'table', 1, 1, N'consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (39, 1, N'EMP34', N'Delivery Record', N'lang_select', N'243', CAST(N'2025-04-24T23:44:49.373' AS DateTime), NULL, 0, NULL, N'tab', N'select', 0, 1, N'menu7', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (40, 1, N'EMP34', N'Consultation', N'PastHistory', NULL, CAST(N'2025-05-01T22:31:05.920' AS DateTime), NULL, 1, N'----', N'tab', N'text', 0, 1, N'consultation', 0, 0, 0)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (41, 1, N'EMP34', N'AddPatient', N'toggleVillageCityButton', N'Village', CAST(N'2025-05-03T11:54:11.463' AS DateTime), NULL, 0, NULL, N'tab', N'button', 0, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (42, 1, N'EMP34', N'Delivery Record', N'toggleVillageCityButton', N'City', CAST(N'2025-05-03T12:04:50.990' AS DateTime), NULL, 0, NULL, N'tab', N'button', 0, 1, N'menu7', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (43, 1, N'EMP34', N'Delivery Record', N'toggleVillageCityButton', N'City', CAST(N'2025-05-03T12:06:57.433' AS DateTime), NULL, 0, NULL, N'tab', N'button', 0, 1, N'menu7', 1, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (44, 1, N'EMP34', N'AddPatient', N'PrimaryRelativeNameSuffix', NULL, CAST(N'2025-05-11T12:45:11.683' AS DateTime), NULL, 0, NULL, N'tab', N'select', 0, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (45, 1, N'EMP34', N'Delivery Record', N'FathersEducation', NULL, CAST(N'2025-05-11T12:49:59.490' AS DateTime), NULL, 0, NULL, N'tab', N'select', 0, 1, N'menu7', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (46, 1, N'EMP34', N'Delivery Record', NULL, N'B. Ed.', CAST(N'2025-05-11T12:51:11.490' AS DateTime), NULL, 0, NULL, N'tab', NULL, 1, 1, N'menu7', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (47, 1, N'EMP34', N'Patient Billing', N'submitinvoicebill #DocFeeRate', N'510', CAST(N'2025-08-25T22:51:54.307' AS DateTime), NULL, 1, NULL, N'tab', N'text', 1, 1, N'menu9', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (48, 1, N'EMP34', N'Patient Billing', N'submitinvoicebill #UsgFeeRate', N'600', CAST(N'2025-08-25T22:55:48.927' AS DateTime), NULL, 2, NULL, N'tab', N'text', 1, 1, N'menu9', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (49, 1, N'EMP34', N'Histolap', N'HistolapRemark', N'NA', CAST(N'2025-08-27T22:19:20.273' AS DateTime), NULL, 1, N'NA....', N'tab', N'text', 1, 1, N'menu6', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (50, 1, N'EMP34', N'Patient Discharge', N'Remark', N'NA.', CAST(N'2025-08-27T22:57:26.333' AS DateTime), NULL, 1, N'RE...', N'tab', N'text', 1, 1, N'menu10', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (51, 1, N'EMP34', N'AddPatient', N'ContactNo', NULL, CAST(N'2025-12-11T23:18:12.683' AS DateTime), NULL, 1, NULL, N'tab', N'text', 0, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (52, 1, N'EMP34', N'AddPatient', N'FirstName', NULL, CAST(N'2025-12-11T23:19:03.543' AS DateTime), NULL, 5, NULL, N'tab', N'text', 1, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (53, 1, N'EMP34', N'Delivery Record', N'ReligionId', N'136', CAST(N'2025-12-14T15:58:13.170' AS DateTime), NULL, 0, NULL, N'tab', N'select', 0, 1, N'menu7', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (54, 1, N'EMP34', N'Delivery Record', N'DeliveryTypeId', N'173', CAST(N'2025-12-14T15:59:49.193' AS DateTime), NULL, 0, NULL, N'tab', N'select', 0, 1, N'menu7', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (55, 1, N'EMP34', N'Delivery Record', N'Nationality', N'indian', CAST(N'2025-12-14T16:07:46.473' AS DateTime), NULL, 0, NULL, N'tab', N'text', 1, 1, N'menu7', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (56, 1, N'EMP34', N'AddPatient', N'PrimaryRelativeName', NULL, CAST(N'2025-12-15T22:48:49.653' AS DateTime), NULL, 10, NULL, N'tab', N'text', 1, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (57, 1, N'EMP34', N'AddPatient', N'LastName', NULL, CAST(N'2025-12-15T22:52:44.790' AS DateTime), NULL, 15, NULL, N'tab', N'text', 1, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (58, 1, N'EMP34', N'AddPatient', N'Landmark', NULL, CAST(N'2025-12-15T22:53:22.010' AS DateTime), NULL, 20, NULL, N'tab', N'text', 0, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (59, 1, N'EMP34', N'AddPatient', N'toggleVillageCityButton', N'City', CAST(N'2025-12-15T23:21:47.607' AS DateTime), NULL, 0, NULL, N'tab', N'button', 0, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (61, 1, N'EMP34', N'AddPatient', N'HouseNo', NULL, CAST(N'2025-12-15T23:40:14.220' AS DateTime), NULL, 25, NULL, N'tab', N'text', 0, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (62, 1, N'EMP34', N'Consultation', N'PastHistory', NULL, CAST(N'2025-12-17T22:30:49.283' AS DateTime), NULL, 0, N'Not Significant', N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (63, 1, N'EMP34', N'Consultation', N'PastHistory', NULL, CAST(N'2025-12-17T22:31:41.300' AS DateTime), NULL, 0, NULL, N'tab', N'text', 0, 1, N'Consultation', 1, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (64, 1, N'EMP34', N'Consultation', N'FamilyHistory', NULL, CAST(N'2025-12-17T22:45:47.993' AS DateTime), NULL, 0, N'Not Significant', N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (65, 1, N'EMP34', N'Consultation', N'PresentHistory', NULL, CAST(N'2025-12-17T22:48:37.290' AS DateTime), NULL, 0, N'Not Significant', N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (66, 1, N'EMP34', N'Consultation', N'UterusDays', NULL, CAST(N'2025-12-17T23:02:43.640' AS DateTime), NULL, 0, NULL, N'tab', N'text', 0, 1, N'Consultation', 1, 5, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (67, 1, N'EMP34', N'Consultation', N'Pulse', NULL, CAST(N'2025-12-17T23:03:04.440' AS DateTime), NULL, 0, NULL, N'tab', N'text', 0, 1, N'Consultation', 1, 10, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (68, 1, N'EMP34', N'Consultation', N'UterusDays', NULL, CAST(N'2025-12-18T00:01:19.390' AS DateTime), NULL, 5, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (70, 1, N'EMP34', N'Consultation', N'FTNDS_LiveM', NULL, CAST(N'2025-12-18T00:32:29.443' AS DateTime), NULL, 10, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (71, 1, N'EMP34', N'Consultation', N'FTNDS_LiveF', NULL, CAST(N'2025-12-18T00:33:11.400' AS DateTime), NULL, 15, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (72, 1, N'EMP34', N'Consultation', N'FTNDS_DeadM', NULL, CAST(N'2025-12-18T00:33:33.910' AS DateTime), NULL, 20, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (73, 1, N'EMP34', N'Consultation', N'FTNDS_DeadF', NULL, CAST(N'2025-12-18T00:33:53.873' AS DateTime), NULL, 25, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (74, 1, N'EMP34', N'Consultation', N'FTLSCS_LiveM', NULL, CAST(N'2025-12-18T00:34:26.537' AS DateTime), NULL, 30, NULL, N'tab', NULL, 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (75, 1, N'EMP34', N'Consultation', N'FTLSCS_LiveF', NULL, CAST(N'2025-12-18T00:34:45.700' AS DateTime), NULL, 35, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (76, 1, N'EMP34', N'Consultation', N'FTLSCS_DeadM', NULL, CAST(N'2025-12-18T00:35:10.257' AS DateTime), NULL, 40, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (77, 1, N'EMP34', N'Consultation', N'FTLSCS_DeadF', NULL, CAST(N'2025-12-18T00:35:34.970' AS DateTime), NULL, 45, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (78, 1, N'EMP34', N'Consultation', N'Pulse', NULL, CAST(N'2025-12-18T00:37:57.317' AS DateTime), NULL, 50, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (79, 1, N'EMP34', N'Consultation', N'StrDiagnosis', NULL, CAST(N'2025-12-18T22:27:02.673' AS DateTime), NULL, 60, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (80, 1, N'EMP34', N'Consultation', N'SystolicBloodPressure', NULL, CAST(N'2025-12-18T22:28:21.137' AS DateTime), NULL, 50, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (81, 1, N'EMP34', N'Consultation', N'DaistolicBloodPressure', NULL, CAST(N'2025-12-18T22:28:34.870' AS DateTime), NULL, 55, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (82, 1, N'EMP34', N'Consultation', N'Advice', NULL, CAST(N'2025-12-18T22:30:08.950' AS DateTime), NULL, 65, NULL, N'tab', N'text', 0, 1, N'Consultation', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (83, 1, N'EMP34', N'Consultation', N'StrDiagnosis', NULL, CAST(N'2025-12-18T23:11:59.610' AS DateTime), NULL, 0, NULL, N'tab', N'text', 0, 1, N'Consultation', 1, 25, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (84, 1, N'EMP34', N'Consultation', N'Advice', NULL, CAST(N'2025-12-18T23:12:21.460' AS DateTime), NULL, 0, NULL, N'tab', N'text', 0, 1, N'Consultation', 1, 30, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (85, 1, N'EMP34', N'Consultation', N'SystolicBloodPressure', NULL, CAST(N'2025-12-18T23:14:12.607' AS DateTime), NULL, 0, NULL, N'tab', N'text', 0, 1, N'Consultation', 1, 15, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (86, 1, N'EMP34', N'Consultation', N'DaistolicBloodPressure', NULL, CAST(N'2025-12-18T23:14:24.697' AS DateTime), NULL, 0, NULL, N'tab', N'text', 0, 1, N'Consultation', 1, 20, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (87, 1, N'EMP34', N'USG Form', N'UsgImageNo', NULL, CAST(N'2025-12-18T23:20:00.610' AS DateTime), NULL, 1, NULL, N'tab', N'text', 0, 1, N'menu2', 1, 1, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (88, 1, N'EMP34', N'USG Form', N'StrMTPIndication', N'216', CAST(N'2025-12-19T00:34:38.373' AS DateTime), NULL, 0, NULL, N'tab', N'select', 0, 1, N'menu2', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (89, 1, N'EMP34', N'USG Form', N'SonographyResult', NULL, CAST(N'2025-12-19T00:37:01.710' AS DateTime), NULL, 0, NULL, N'tab', N'combo select', 0, 1, N'menu2', 1, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (90, 1, N'EMP34', N'USG Form', N'StrMTPIndication', N'216', CAST(N'2025-12-20T09:57:52.713' AS DateTime), NULL, 0, NULL, N'tab', N'select', 0, 1, N'menu2', 1, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (91, 1, N'EMP34', N'AddPatient', N'Age', NULL, CAST(N'2026-01-18T17:22:50.570' AS DateTime), NULL, 3, NULL, N'tab', N'text', 0, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (92, 1, N'EMP34', N'AddPatient', N'SecondaryRelativeName', NULL, CAST(N'2026-01-18T17:24:04.020' AS DateTime), NULL, 16, NULL, N'tab', N'text', 0, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (93, 1, N'EMP34', N'AddPatient', N'StrPrimaryRelativeNameSuffix', NULL, CAST(N'2026-02-15T12:18:22.970' AS DateTime), NULL, 11, NULL, N'tab', N'text', 0, 1, N'patientForm', 0, 0, 1)
GO
INSERT [common].[tbl_UserSettingConfiguration] ([id], [userId], [userCode], [module], [fieldName], [defaultValue], [createdOn], [updatedOn], [tabIndex], [emptyText], [setting], [inputType], [isValid], [HospitalId], [ModuleFormId], [Visited], [VisitedTabIndex], [cStatus]) VALUES (94, 1, N'EMP34', N'AddPatient', N'StrSecondaryRelativeNameSuffix', NULL, CAST(N'2026-02-15T12:19:04.363' AS DateTime), NULL, 17, NULL, N'tab', N'text', 0, 1, N'patientForm', 0, 0, 1)
GO
SET IDENTITY_INSERT [common].[tbl_UserSettingConfiguration] OFF
GO
ALTER TABLE [common].[tbl_UserSettingConfiguration] ADD  DEFAULT (getdate()) FOR [createdOn]
GO
ALTER TABLE [common].[tbl_UserSettingConfiguration] ADD  DEFAULT ((0)) FOR [isValid]
GO
ALTER TABLE [common].[tbl_UserSettingConfiguration] ADD  CONSTRAINT [DF_tbl_UserSettingConfiguration_Visited]  DEFAULT ((0)) FOR [Visited]
GO
ALTER TABLE [common].[tbl_UserSettingConfiguration] ADD  DEFAULT ((1)) FOR [cStatus]
GO






update common.tbl_ModuleFields set Type = 'text'  WHERE ModuleName = 'AddPatient' AND FieldName like '%suff%'

declare @UserCode nvarchar(max) = '' , @UserId bigint = 0;

select top 1 @UserCode = UserCode , @UserId = UserId from hospital.tblHospitalUsers where UserId = 1

update common.tbl_UserSettingConfiguration set userCode = @UserCode , userId = @UserId


update common.tblEntityMaster set EntityName = 'Suffix' where EntityName like '%suffi%'
--------------------------------------------------------



GO
/****** Object:  Table [common].[tbl_ModuleFields]    Script Date: 01-03-2026 16:25:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[common].[tbl_ModuleFields]') AND type in (N'U'))
DROP TABLE [common].[tbl_ModuleFields]
GO
/****** Object:  Table [common].[tbl_ModuleFields]    Script Date: 01-03-2026 16:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [common].[tbl_ModuleFields](
	[fieldId] [bigint] IDENTITY(1,1) NOT NULL,
	[ModuleId] [bigint] NULL,
	[ModuleName] [nvarchar](400) NULL,
	[FieldLabelName] [nvarchar](200) NULL,
	[FieldName] [nvarchar](200) NULL,
	[Type] [nvarchar](200) NULL,
	[createdOn] [datetime] NULL,
	[isActive] [bit] NULL,
	[updatedOn] [datetime] NULL,
	[ModuleFormId] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[fieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [common].[tbl_ModuleFields] ON 
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (1, 1, N'AddPatient', N'First Name', N'FirstName', N'text', CAST(N'2024-12-10T21:22:25.330' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (2, 1, N'AddPatient', N'Last Name', N'LastName', N'text', CAST(N'2024-12-10T21:24:57.897' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (3, 1, N'AddPatient', N'Age', N'Age', N'text', CAST(N'2024-12-10T21:52:39.067' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (4, 1, N'AddPatient', N'Gender', N'Gender', N'select', CAST(N'2024-12-10T21:53:10.703' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (5, 1, N'AddPatient', N'Married', N'IsMarried', N'checkbox', CAST(N'2024-12-10T21:53:31.663' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (6, 1, N'AddPatient', N'ContactNo', N'ContactNo', N'text', CAST(N'2024-12-10T21:54:42.613' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (7, 1, N'AddPatient', N'Email', N'Email', N'text', CAST(N'2024-12-10T21:54:58.803' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (8, 1, N'AddPatient', N'Landmark', N'Landmark', N'text', CAST(N'2024-12-10T21:55:23.173' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (9, 1, N'AddPatient', N'Village', N'VillageCity', N'text', CAST(N'2024-12-10T21:55:57.723' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (10, 1, N'AddPatient', N'Taluka', N'Taluka', N'text', CAST(N'2024-12-10T21:56:20.007' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (11, 1, N'AddPatient', N'District', N'District', N'text', CAST(N'2024-12-10T21:56:35.050' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (12, 1, N'AddPatient', N'State', N'State', N'text', CAST(N'2024-12-10T21:56:47.927' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (13, 1, N'AddPatient', N'PinCode', N'PinCode', N'text', CAST(N'2024-12-10T21:57:12.443' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (14, 1, N'AddPatient', N'Date of OPD', N'OpdDate', N'text', CAST(N'2024-12-10T21:59:42.903' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (15, 1, N'AddPatient', N'Date of Birth', N'Dob', N'text', CAST(N'2024-12-10T21:59:58.990' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (16, 1, N'AddPatient', N'PrimaryRelation DropDown', N'PrimaryRelation', N'select', CAST(N'2024-12-10T22:01:58.623' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (17, 1, N'AddPatient', N'Primary Contact', N'PrimaryRelativeName', N'text', CAST(N'2024-12-10T22:02:35.490' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (18, 1, N'AddPatient', N'Primary Contact Sufix', N'StrPrimaryRelativeNameSuffix', N'select', CAST(N'2024-12-10T22:02:54.203' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (19, 1, N'AddPatient', N'SecondaryRelation DropDown', N'SecondaryRelation', N'select', CAST(N'2024-12-10T22:03:29.817' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (20, 1, N'AddPatient', N'Secondary Contact', N'SecondaryRelativeName', N'text', CAST(N'2024-12-10T22:04:06.070' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (21, 1, N'AddPatient', N'Secondary Contact Sufix', N'StrSecondaryRelativeNameSuffix', N'select', CAST(N'2024-12-10T22:04:24.423' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (22, 4, N'Referral', N'Indication/s for diagnostic procedure', N'Indications', N'combo select', CAST(N'2024-12-10T22:09:06.480' AS DateTime), 1, NULL, N'menu1')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (23, 4, N'USG Form', N'Mn. Sr. No.', N'SrNoAccMonth', N'text', CAST(N'2024-12-10T22:10:51.747' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (24, 4, N'USG Form', N'Yr. Sr. No.', N'SrNoAccYear', N'text', CAST(N'2024-12-10T22:11:17.570' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (25, 4, N'USG Form', N'Ref. by Dr.', N'RefByDoc', N'text', CAST(N'2024-12-10T22:11:50.830' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (26, 4, N'USG Form', N'Village/City', N'DocCenterVillageCity', N'text', CAST(N'2024-12-10T22:12:22.920' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (27, 4, N'USG Form', N'Doctor/Center Taluka', N'DocCenterTaluka', N'text', CAST(N'2024-12-10T22:14:00.123' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (28, 4, N'USG Form', N'Doctor/Center District', N'DocCenterDistrict', N'text', CAST(N'2024-12-10T22:14:26.337' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (29, 4, N'USG Form', N'Consent Date', N'ConsentDate', N'text', CAST(N'2024-12-10T22:15:11.750' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (30, 4, N'USG Form', N'Procedure Date', N'ProcedureDate', N'text', CAST(N'2024-12-10T22:15:29.720' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (31, 4, N'USG Form', N'Result of PDP was conveyed to', N'PDPResultConveyedTo', N'text', CAST(N'2024-12-10T22:16:32.700' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (32, 4, N'USG Form', N'any indication for MTP', N'StrMTPIndication', N'select', CAST(N'2024-12-10T22:16:59.660' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (33, 4, N'USG Form', N'MTP Done', N'MTPDone', N'select', CAST(N'2024-12-10T22:17:30.227' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (34, 4, N'USG Form', N'Sonography Date', N'SonographyDate', N'text', CAST(N'2024-12-10T22:17:59.587' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (35, 4, N'USG Form', N'USG Image No.', N'UsgImageNo', N'text', CAST(N'2024-12-10T22:18:51.670' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (36, 4, N'USG Form', N'Sonography Result', N'SonographyResult', N'combo select', CAST(N'2024-12-10T22:20:07.817' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (37, 4, N'USG Form', N'Any Other(Specify)', N'OtherSpecify', N'select', CAST(N'2024-12-10T22:20:57.977' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (38, 4, N'USG Form', N'Remark', N'USGRemark', N'text', CAST(N'2024-12-10T22:21:17.700' AS DateTime), 1, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (39, 7, N'MTP', N'Mn. Sr. No.', N'SrNoAccMonth', N'text', CAST(N'2024-12-11T00:05:03.070' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (40, 7, N'MTP', N'Yr. Sr. No.', N'SrNoAccYear', N'text', CAST(N'2024-12-11T00:05:20.267' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (41, 7, N'MTP', N'2nd RMP', N'RMP2', N'text', CAST(N'2024-12-11T00:06:05.373' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (42, 7, N'MTP', N'Live M/F', N'LiveMaleFemale', N'text', CAST(N'2024-12-11T00:06:33.163' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (43, 7, N'MTP', N'Admission Date', N'MTPAdmissionDate', N'text', CAST(N'2024-12-11T00:07:15.047' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (44, 7, N'MTP', N'Admi. Time', N'MTPAdmissionTime', N'text', CAST(N'2024-12-11T00:07:41.743' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (45, 7, N'MTP', N'Procedure Date', N'MTPProcedureDate', N'text', CAST(N'2024-12-11T00:08:08.217' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (46, 7, N'MTP', N'Discharge Date', N'MTPDischargeDate', N'text', CAST(N'2024-12-11T00:08:46.693' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (47, 7, N'MTP', N'Disc. Time', N'MTPDischargeTime', N'text', CAST(N'2024-12-11T00:09:09.983' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (48, 7, N'MTP', N'Remark', N'MTPRemark', N'text', CAST(N'2024-12-11T00:09:30.513' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (49, 3, N'USG Report', N'Report Date', N'ReportDate', N'text', CAST(N'2024-12-11T22:36:57.853' AS DateTime), 1, NULL, N'menu3')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (50, 3, N'USG Report', N'Report Time', N'ReportTime', N'text', CAST(N'2024-12-11T22:37:45.090' AS DateTime), 1, NULL, N'menu3')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (51, 3, N'USG Report', N'Remark', N'Remark', N'text', CAST(N'2024-12-11T22:38:00.153' AS DateTime), 1, NULL, N'menu3')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (52, 3, N'USG Report', N'No. of Foetus', N'NoOfFoetusRefId', N'select', CAST(N'2024-12-11T22:38:27.227' AS DateTime), 1, NULL, N'menu3')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (53, 3, N'USG Report', N'Cardiac Activity', N'CardiacActivityRefId', N'select', CAST(N'2024-12-11T22:38:51.150' AS DateTime), 1, NULL, N'menu3')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (54, 3, N'USG Report', N'Presentation', N'PresentationRefId', N'select', CAST(N'2024-12-11T22:39:19.487' AS DateTime), 1, NULL, N'menu3')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (55, 3, N'USG Report', N'Placental Location', N'PlacentalLocationRefId', N'select', CAST(N'2024-12-11T22:39:49.167' AS DateTime), 1, NULL, N'menu3')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (56, 3, N'USG Report', N'Liquar Amount', N'LiquarAmountRefId', N'select', CAST(N'2024-12-11T22:40:06.087' AS DateTime), 1, NULL, N'menu3')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (57, 3, N'USG Report', N'Anomalies', N'AnomaliesRefId', N'select', CAST(N'2024-12-11T22:40:42.977' AS DateTime), 1, NULL, N'menu3')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (58, 3, N'Ovulation Profile', N'Day', N'OPDay', N'select', CAST(N'2024-12-11T22:46:29.290' AS DateTime), 1, NULL, N'menu4')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (59, 3, N'Ovulation Profile', N'Date', N'OPDate', N'text', CAST(N'2024-12-11T22:48:26.117' AS DateTime), 1, NULL, N'menu4')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (60, 3, N'Ovulation Profile', N'Time', N'OPTime', N'text', CAST(N'2024-12-11T22:49:18.703' AS DateTime), 1, NULL, N'menu4')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (61, 3, N'Ovulation Profile', N'Ut. Blood Flow', N'UtBloodFlow', N'text', CAST(N'2024-12-11T22:50:07.757' AS DateTime), 1, NULL, N'menu4')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (62, 3, N'Ovulation Profile', N'Ovarian Blood Flow', N'OvarianBloodFlow', N'text', CAST(N'2024-12-11T22:50:26.397' AS DateTime), 1, NULL, N'menu4')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (63, 3, N'Ovulation Profile', N'Right overian follicle (cm)', N'RightOverianFollicle', N'numeric', CAST(N'2024-12-11T22:50:47.140' AS DateTime), 1, NULL, N'menu4')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (64, 3, N'Ovulation Profile', N'Left overian follicle (cm)', N'LeftOverianFollicle', N'numeric', CAST(N'2024-12-11T22:51:24.050' AS DateTime), 1, NULL, N'menu4')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (65, 3, N'Ovulation Profile', N'Endometrium (cm)', N'Endometrium', N'numeric', CAST(N'2024-12-11T22:51:47.710' AS DateTime), 1, NULL, N'menu4')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (66, 3, N'Ovulation Profile', N'Remark', N'OvulationProfileRemark', N'text', CAST(N'2024-12-11T22:52:48.913' AS DateTime), 1, NULL, N'menu4')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (67, 8, N'Histolap', N'Admission Date', N'AdmissionDate', N'text', CAST(N'2024-12-11T22:54:16.620' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (68, 8, N'Histolap', N'Admi. Time', N'AdmissionTime', N'text', CAST(N'2024-12-11T22:55:05.230' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (69, 8, N'Histolap', N'Procedure Name', N'ProcedureNameRefId', N'select', CAST(N'2024-12-11T22:55:25.703' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (70, 8, N'Histolap', N'Procedure Date', N'ProcedureDate', N'text', CAST(N'2024-12-11T22:55:51.990' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (71, 8, N'Histolap', N'Proc. Time', N'ProcedureTime', N'text', CAST(N'2024-12-11T22:56:14.403' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (72, 8, N'Histolap', N'Right Tube', N'RightTubeRefId', N'select', CAST(N'2024-12-11T22:56:55.443' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (73, 8, N'Histolap', N'Left Tube', N'LeftTubeRefId', N'select', CAST(N'2024-12-11T22:57:18.700' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (74, 8, N'Histolap', N'Uterus', N'UterusRefId', N'select', CAST(N'2024-12-11T22:57:40.643' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (75, 8, N'Histolap', N'POD', N'PODRefId', N'select', CAST(N'2024-12-11T22:57:56.453' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (76, 8, N'Histolap', N'Endo. Cavity', N'EndoCavityRefId', N'select', CAST(N'2024-12-11T22:58:21.863' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (77, 8, N'Histolap', N'Endo. Cavity', N'EndoCavityRefId', N'select', CAST(N'2024-12-11T22:58:22.493' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (78, 8, N'Histolap', N'Cervical Canal', N'CervicalCanalRefId', N'select', CAST(N'2024-12-11T22:58:44.297' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (79, 8, N'Histolap', N'Discharge Date', N'DischargeDate', N'select', CAST(N'2024-12-11T22:59:17.617' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (80, 8, N'Histolap', N'Disc. Time', N'DischargeTime', N'select', CAST(N'2024-12-11T22:59:39.760' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (81, 8, N'Histolap', N'Remark', N'HistolapRemark', N'text', CAST(N'2024-12-11T23:00:04.537' AS DateTime), 1, NULL, N'menu6')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (82, 9, N'Delivery Record', N'Baby No.', N'BabyNoRefId', N'select', CAST(N'2024-12-11T23:38:52.523' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (83, 9, N'Delivery Record', N'Serial. No.', N'SrNo', N'numaric', CAST(N'2024-12-11T23:39:39.453' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (84, 9, N'Delivery Record', N'Mn. Sr. No.', N'SrNoAccMonth', N'numaric', CAST(N'2024-12-11T23:40:04.650' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (85, 9, N'Delivery Record', N'Yr. Sr. No.', N'SrNoAccYear', N'numaric', CAST(N'2024-12-11T23:40:31.117' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (86, 9, N'Delivery Record', N'Birth Date', N'BirthDate', N'text', CAST(N'2024-12-11T23:41:08.963' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (87, 9, N'Delivery Record', N'Birth Time', N'BirthTime', N'text', CAST(N'2024-12-11T23:41:31.983' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (88, 9, N'Delivery Record', N'Child Name', N'ChildName', N'text', CAST(N'2024-12-11T23:42:00.473' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (89, 9, N'Delivery Record', N'Gender', N'ChildGenderRefId', N'select', CAST(N'2024-12-11T23:42:41.487' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (90, 9, N'Delivery Record', N'Weight', N'ChildWeight', N'text', CAST(N'2024-12-11T23:43:39.640' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (91, 9, N'Delivery Record', N'Religion', N'ReligionId', N'select', CAST(N'2024-12-11T23:44:03.650' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (92, 9, N'Delivery Record', N'Nationality', N'Nationality', N'text', CAST(N'2024-12-11T23:44:21.850' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (93, 9, N'Delivery Record', N'Episio By', N'EpisioBy', N'text', CAST(N'2024-12-11T23:44:42.457' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (94, 9, N'Delivery Record', N'Midwife', N'Dayan', N'text', CAST(N'2024-12-11T23:45:26.277' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (95, 9, N'Delivery Record', N'Del. Type', N'DeliveryTypeId', N'select', CAST(N'2024-12-11T23:45:59.913' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (96, 9, N'Delivery Record', N'Baby Status', N'BabyStatusRefId', N'select', CAST(N'2024-12-11T23:46:56.100' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (97, 9, N'Delivery Record', N'Mrg. Age', N'MarriageAge', N'select', CAST(N'2024-12-11T23:47:23.413' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (98, 9, N'Delivery Record', N'M. Cur. Age', N'MothersCurrentAge', N'select', CAST(N'2024-12-11T23:47:57.373' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (99, 9, N'Delivery Record', N'Preg. Wks.', N'PregWeeks', N'select', CAST(N'2024-12-11T23:48:18.360' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (100, 9, N'Delivery Record', N'Live m/F', N'LiveMaleFemale', N'text', CAST(N'2024-12-11T23:48:45.180' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (101, 9, N'Delivery Record', N'No. of Del.', N'DeliveryNoRefId', N'select', CAST(N'2024-12-11T23:49:04.867' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (102, 9, N'Delivery Record', N'Mother First Name', N'MotherFirstName', N'text', CAST(N'2024-12-11T23:49:48.470' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (103, 9, N'Delivery Record', N'Mother Last Name', N'MotherLastName', N'text', CAST(N'2024-12-11T23:50:04.740' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (104, 9, N'Delivery Record', N'Husband / Father', N'PrimaryContactName', N'text', CAST(N'2024-12-11T23:50:35.923' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (105, 9, N'Delivery Record', N'H.''s/G. Father', N'SecondaryContactName', N'text', CAST(N'2024-12-11T23:51:18.277' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (106, 9, N'Delivery Record', N'Patient Mobile', N'PatientMobile', N'text', CAST(N'2024-12-11T23:51:41.707' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (107, 9, N'Delivery Record', N'Father''s Education', N'FathersEducation', N'select', CAST(N'2024-12-11T23:52:31.577' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (108, 9, N'Delivery Record', N'Mother''s Education', N'MothersEducation', N'select', CAST(N'2024-12-11T23:52:57.420' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (109, 9, N'Delivery Record', N'Father''s Occupation', N'FathersOccupation', N'select', CAST(N'2024-12-11T23:53:22.920' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (110, 9, N'Delivery Record', N'Mother''s Occupation', N'MothersOccupation', N'select', CAST(N'2024-12-11T23:53:51.997' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (111, 9, N'Delivery Record', N'Landmark / Faliya', N'Landmark', N'text', CAST(N'2024-12-11T23:54:16.700' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (112, 9, N'Delivery Record', N'Village', N'VillageCity', N'text', CAST(N'2024-12-11T23:55:03.183' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (113, 9, N'Delivery Record', N'Taluka', N'Taluka', N'text', CAST(N'2024-12-11T23:56:25.507' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (114, 9, N'Delivery Record', N'District', N'District', N'text', CAST(N'2024-12-11T23:57:22.367' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (115, 9, N'Delivery Record', N'State', N'State', N'text', CAST(N'2024-12-11T23:58:10.490' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (116, 9, N'Delivery Record', N'Pin Code', N'PinCode', N'text', CAST(N'2024-12-11T23:58:34.427' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (117, 10, N'Indoor', N'Admission Date', N'AdmissionDate', N'text', CAST(N'2024-12-11T23:59:48.947' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (118, 10, N'Indoor', N'Admi. Time', N'AdmissionTime', N'text', CAST(N'2024-12-12T00:00:27.637' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (119, 10, N'Indoor', N'Indoor Date', N'IndoorDate', N'text', CAST(N'2024-12-12T00:01:03.573' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (120, 10, N'Indoor', N'Indoor Time', N'IndoorTime', N'text', CAST(N'2024-12-12T00:01:37.070' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (121, 10, N'Indoor', N'Temp.', N'TemperatureRefId', N'select', CAST(N'2024-12-12T00:02:04.320' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (122, 10, N'Indoor', N'Pulse', N'Pulse', N'numeric', CAST(N'2024-12-12T00:02:24.710' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (123, 10, N'Indoor', N'Sys. BP', N'SysBP', N'numeric', CAST(N'2024-12-12T00:02:43.497' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (124, 10, N'Indoor', N'Dias. BP', N'DaisBP', N'numeric', CAST(N'2024-12-12T00:03:03.587' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (125, 10, N'Indoor', N'SpO2(%)', N'SPO2', N'numeric', CAST(N'2024-12-12T00:03:25.340' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (126, 10, N'Indoor', N'Pallor', N'PallorRefId', N'select', CAST(N'2024-12-12T00:03:56.807' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (127, 10, N'Indoor', N'Icterus', N'IcterusRefId', N'select', CAST(N'2024-12-12T00:04:20.780' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (128, 10, N'Indoor', N'Oedema', N'OedemaRefId', N'select', CAST(N'2024-12-12T00:04:36.090' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (129, 10, N'Indoor', N'Resp. Sys.', N'RS', N'text', CAST(N'2024-12-12T00:04:59.970' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (130, 10, N'Indoor', N'CVS', N'CVS', N'text', CAST(N'2024-12-12T00:05:22.133' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (131, 10, N'Indoor', N'UT Weeks', N'UTWeeksRefId', N'select', CAST(N'2024-12-12T00:05:47.363' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (132, 10, N'Indoor', N'EB/PP', N'EBPPRefId', N'select', CAST(N'2024-12-12T00:06:13.800' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (133, 10, N'Indoor', N'FHS', N'FHSRefId', N'select', CAST(N'2024-12-12T00:06:31.490' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (134, 10, N'Indoor', N'Ut Cont.', N'UTContRefId', N'select', CAST(N'2024-12-12T00:07:06.570' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (135, 10, N'Indoor', N'P/S', N'PSRefId', N'select', CAST(N'2024-12-12T00:07:27.293' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (136, 10, N'Indoor', N'P/V', N'PVRefId', N'select', CAST(N'2024-12-12T00:07:57.380' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (137, 10, N'Indoor', N'Provisional Diagnosis', N'ProvisionalDiagnosisRefId', N'select', CAST(N'2024-12-12T00:08:30.810' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (138, 10, N'Indoor', N'Operation Name', N'OperationNameRefId', N'select', CAST(N'2024-12-12T00:08:56.427' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (139, 10, N'Indoor', N'OT Date', N'OTDate', N'text', CAST(N'2024-12-12T00:09:28.560' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (140, 10, N'Indoor', N'Diagnosis', N'DiagnosisRefId', N'select', CAST(N'2024-12-12T00:09:52.777' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (141, 10, N'Indoor', N'Discharge Date', N'DischargeDate', N'text', CAST(N'2024-12-12T00:10:17.233' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (142, 10, N'Indoor', N'Disc. Time', N'DischargeTime', N'text', CAST(N'2024-12-12T00:10:46.340' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (143, 10, N'Indoor', N'Advice Group', N'AdviceGroup', N'combo select', CAST(N'2024-12-12T00:12:54.800' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (144, 10, N'Indoor', N'add Advices', N'Advices', N'combo select', CAST(N'2024-12-12T00:14:07.250' AS DateTime), 1, NULL, N'menu8')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (145, 11, N'Patient Billing', N'Bill Date', N'BillDate', N'text', CAST(N'2024-12-12T00:15:59.480' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (146, 11, N'Patient Billing', N'Voucher Type', N'VoucherTypeRefId', N'select', CAST(N'2024-12-12T00:16:31.423' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (147, 11, N'Patient Billing', N'Amount', N'Amount', N'text', CAST(N'2024-12-12T00:17:10.270' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (148, 11, N'Patient Billing', N'Admission Date', N'submitinvoicebill #AdmissionDate', N'text', CAST(N'2024-12-12T00:19:11.177' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (149, 11, N'Patient Billing', N'Discharge Date', N'submitinvoicebill #DischargeDate', N'text', CAST(N'2024-12-12T00:19:33.290' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (150, 11, N'Patient Billing', N'OT Date', N'submitinvoicebill #OTDate', N'text', CAST(N'2024-12-12T00:20:01.110' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (151, 11, N'Patient Billing', N'Charges For', N'submitinvoicebill #ChargeForRefId', N'select', CAST(N'2024-12-12T00:20:23.063' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (152, 11, N'Patient Billing', N'Diagnosis', N'submitinvoicebill #DiagnosisRefId', N'select', CAST(N'2024-12-12T00:20:43.233' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (153, 11, N'Patient Billing', N'Procedure Name', N'submitinvoicebill #ProcedureNameRefId', N'select', CAST(N'2024-12-12T00:21:03.153' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (154, 11, N'Patient Billing', N'No. of Visit', N'submitinvoicebill #DocVisits', N'text', CAST(N'2024-12-12T00:21:32.013' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (155, 11, N'Patient Billing', N'Rs. per visit', N'submitinvoicebill #DocFeeRate', N'text', CAST(N'2024-12-12T00:22:06.000' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (156, 11, N'Patient Billing', N'Consulting Fee', N'submitinvoicebill #DocCharges', N'text', CAST(N'2024-12-12T00:22:31.023' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (157, 11, N'Patient Billing', N'No. of Usg', N'submitinvoicebill #UsgNo', N'text', CAST(N'2024-12-12T00:22:51.890' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (158, 11, N'Patient Billing', N'Rs. per USG', N'submitinvoicebill #UsgFeeRate', N'text', CAST(N'2024-12-12T00:23:11.030' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (159, 11, N'Patient Billing', N'USG Charges', N'submitinvoicebill #UsgCharges', N'text', CAST(N'2024-12-12T00:23:32.670' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (160, 11, N'Patient Billing', N'No. of Day', N'submitinvoicebill #RoomRentDays', N'text', CAST(N'2024-12-12T00:23:55.020' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (161, 11, N'Patient Billing', N'Rs. per Room', N'RoomFeeRate', N'text', CAST(N'2024-12-12T00:24:13.127' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (162, 11, N'Patient Billing', N'Room Type', N'submitinvoicebill #RoomTypeRefId', N'select', CAST(N'2024-12-12T00:24:37.007' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (163, 11, N'Patient Billing', N'Room Charges', N'submitinvoicebill #RoomCharges', N'text', CAST(N'2024-12-12T00:25:02.370' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (164, 11, N'Patient Billing', N'OT Charges', N'submitinvoicebill #OTCharges', N'text', CAST(N'2024-12-12T00:25:24.827' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (165, 11, N'Patient Billing', N'Medicine Charges', N'submitinvoicebill #MedicineCharges', N'text', CAST(N'2024-12-12T00:25:53.190' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (166, 11, N'Patient Billing', N'No. of Day', N'NursingDays', N'text', CAST(N'2024-12-12T00:26:15.317' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (167, 11, N'Patient Billing', N'Rs. per Day', N'NursingFeeRate', N'text', CAST(N'2024-12-12T00:26:32.490' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (168, 11, N'Patient Billing', N'Nursing Charges', N'submitinvoicebill #NursingCharges', N'text', CAST(N'2024-12-12T00:27:06.520' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (169, 11, N'Patient Billing', N'Charge Name', N'submitinvoicebill #OtherChargeNameRefId', N'select', CAST(N'2024-12-12T00:27:29.630' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (170, 11, N'Patient Billing', N'Other Charges', N'submitinvoicebill #OtherCharges', N'text', CAST(N'2024-12-12T00:28:01.303' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (171, 11, N'Patient Billing', N'Payment Type', N'submitinvoicebill #PaymentTypeRefId', N'select', CAST(N'2024-12-12T00:28:20.453' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (172, 11, N'Patient Billing', N'Total Charges', N'submitinvoicebill #TotalAmount', N'text', CAST(N'2024-12-12T00:28:46.373' AS DateTime), 1, NULL, N'menu9')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (173, 12, N'Patient Discharge', N'Admission Dt.', N'AdmissionDate', N'text', CAST(N'2024-12-12T00:29:14.460' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (174, 12, N'Patient Discharge', N'Admi. Time', N'AdmissionTime', N'text', CAST(N'2024-12-12T00:31:47.383' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (175, 12, N'Patient Discharge', N'Delivery No.', N'DeliveryNo', N'text', CAST(N'2024-12-12T00:32:08.070' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (177, 12, N'Patient Discharge', N'Complain Of', N'ComplainOfRefId', N'select', CAST(N'2024-12-12T00:33:29.960' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (178, 12, N'Patient Discharge', N'Diagnosis', N'DiagnosisRefId', N'select', CAST(N'2024-12-12T00:33:56.437' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (179, 12, N'Patient Discharge', N'Operation', N'OperationRefId', N'select', CAST(N'2024-12-12T00:34:13.773' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (180, 12, N'Patient Discharge', N'OT Date', N'OTDate', N'text', CAST(N'2024-12-12T00:34:34.417' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (181, 12, N'Patient Discharge', N'OT Time', N'OTTime', N'text', CAST(N'2024-12-12T00:34:56.430' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (182, 12, N'Patient Discharge', N'Treatment Given', N'TreatmentRefId', N'select', CAST(N'2024-12-12T00:36:14.570' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (183, 12, N'Patient Discharge', N'Advice', N'AdviceRefId', N'select', CAST(N'2024-12-12T00:36:43.697' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (184, 12, N'Patient Discharge', N'Any History', N'HistoryRefId', N'select', CAST(N'2024-12-12T00:37:09.457' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (185, 12, N'Patient Discharge', N'Assisted', N'AssistedRefId', N'select', CAST(N'2024-12-12T00:37:34.150' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (186, 12, N'Patient Discharge', N'Discharge Date', N'DischargeDate', N'text', CAST(N'2024-12-12T00:38:02.587' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (187, 12, N'Patient Discharge', N'Disc. Time', N'DischargeTime', N'text', CAST(N'2024-12-12T00:38:47.133' AS DateTime), 1, NULL, N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (189, 7, N'MTP', N'Religion', N'ReligionRefId', N'select', CAST(N'2024-12-19T23:51:57.157' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (190, 7, N'MTP', N'Reason For MTP', N'MtpReasonRefId', N'select', CAST(N'2024-12-19T23:52:18.393' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (191, 7, N'MTP', N'Contraception', N'Contraception', N'select', CAST(N'2024-12-19T23:52:42.453' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (192, 7, N'MTP', N'MTP Complication', N'MtpComplicationRefId', N'select', CAST(N'2024-12-19T23:53:01.673' AS DateTime), 1, NULL, N'menu5')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (193, 2, N'Consultation', N'Present History', N'PresentHistory', N'text', CAST(N'2024-12-20T21:49:39.917' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (194, 2, N'Consultation', N'Family History', N'FamilyHistory', N'text', CAST(N'2024-12-20T21:50:11.337' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (195, 2, N'Consultation', N'Past History', N'PastHistory', N'text', CAST(N'2024-12-20T21:50:30.120' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (196, 2, N'Consultation', N'Temp.', N'Temperature', N'select', CAST(N'2024-12-20T21:50:57.230' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (197, 2, N'Consultation', N'RR/min.', N'RespiratoryRate', N'text', CAST(N'2024-12-20T21:51:22.663' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (198, 2, N'Consultation', N'SpO2(%)', N'SPO2', N'text', CAST(N'2024-12-20T21:51:44.610' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (199, 2, N'Consultation', N'Pallor', N'Pallor', N'select', CAST(N'2024-12-20T21:52:05.017' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (200, 2, N'Consultation', N'Icterus', N'Icterus', N'select', CAST(N'2024-12-20T21:52:24.650' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (201, 2, N'Consultation', N'Oedema', N'Oedema', N'select', CAST(N'2024-12-20T21:52:45.057' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (202, 2, N'Consultation', N'RS', N'RespiratorySystem', N'text', CAST(N'2024-12-20T21:53:05.290' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (203, 2, N'Consultation', N'CVS', N'CardiovascularSystem', N'text', CAST(N'2024-12-20T21:53:22.457' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (204, 2, N'Consultation', N'Breast', N'Breast', N'text', CAST(N'2024-12-20T21:53:35.783' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (205, 2, N'Consultation', N'Mrg. Life', N'MarriedLife', N'text', CAST(N'2024-12-20T21:54:01.860' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (206, 2, N'Consultation', N'Patient Type', N'PatientType', N'select', CAST(N'2024-12-20T21:54:42.263' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (207, 2, N'Consultation', N'History Of', N'HistoryOf', N'select', CAST(N'2024-12-20T21:55:03.363' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (208, 2, N'Consultation', N'Complain Of', N'ComplainOf', N'select', CAST(N'2024-12-20T21:55:28.667' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (209, 2, N'Consultation', N'Pulse', N'Pulse', N'text', CAST(N'2024-12-20T21:55:48.410' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (210, 2, N'Consultation', N'Sys. BP', N'SystolicBloodPressure', N'text', CAST(N'2024-12-20T21:56:12.700' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (211, 2, N'Consultation', N'Dias. BP', N'DaistolicBloodPressure', N'text', CAST(N'2024-12-20T21:56:31.627' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (212, 2, N'Consultation', N'P/S', N'PerSpeculum', N'select', CAST(N'2024-12-20T21:57:03.467' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (213, 2, N'Consultation', N'P/V', N'StrPerVaginum', N'text', CAST(N'2024-12-20T21:57:32.320' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (214, 2, N'Consultation', N'Ut. Weeks', N'StrUterusWeeks', N'text', CAST(N'2024-12-20T21:58:01.977' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (215, 2, N'Consultation', N'Ut. Days', N'UterusDays', N'text', CAST(N'2024-12-20T21:58:37.373' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (216, 2, N'Consultation', N'Advice', N'Advice', N'text', CAST(N'2024-12-20T21:59:16.867' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (217, 2, N'Consultation', N'F/U Days', N'FollowupDays', N'text', CAST(N'2024-12-20T21:59:35.747' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (218, 2, N'Consultation', N'F/U Date', N'FollowupDate', N'text', CAST(N'2024-12-20T21:59:54.650' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (219, 2, N'Consultation', N'Remark', N'Remark', N'text', CAST(N'2024-12-20T22:00:14.783' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (220, 2, N'Consultation', N'HB-gm%', N'Investigation_HomeBloodGlucoseMonitoring', N'text', CAST(N'2024-12-20T22:00:48.130' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (221, 2, N'Consultation', N'Blood Group', N'Investigation_BloodGroup', N'text', CAST(N'2024-12-20T22:01:08.473' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (222, 2, N'Consultation', N'Urine Sugar', N'Investigation_UrineSugar', N'select', CAST(N'2024-12-20T22:01:38.907' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (223, 2, N'Consultation', N'Urine Protein', N'Investigation_UrineProtein', N'select', CAST(N'2024-12-20T22:01:58.030' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (224, 2, N'Consultation', N'HIV', N'Investigation_HIV', N'select', CAST(N'2024-12-20T22:02:19.243' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (225, 2, N'Consultation', N'HBsAg', N'Investigation_HepatitisBsurfaceAntigen', N'select', CAST(N'2024-12-20T22:02:35.867' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (226, 2, N'Consultation', N'TSH', N'Investigation_ThyroidStimuatingHormone', N'select', CAST(N'2024-12-20T22:02:56.293' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (227, 2, N'Consultation', N'VDRL', N'Investigation_VenerealDiseaseResearchLaboratory', N'select', CAST(N'2024-12-20T22:03:22.847' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (228, 2, N'Consultation', N'Other', N'Investigation_Other', N'text', CAST(N'2024-12-20T22:04:02.663' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (229, 1, N'AddPatient', N'Reg.No/Mobile Number', N'patientsearchkey', N'text', CAST(N'2025-01-21T23:11:18.390' AS DateTime), 1, NULL, N'dvPatientsList')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (230, 4, N'USG Form', N'Sonography Result(2)', N'SonographyResult2', N'text', CAST(N'2025-01-29T21:32:58.673' AS DateTime), 0, NULL, N'menu2')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (231, 1, N'AddPatient', N'House / Building No.', N'HouseNo', N'text', CAST(N'2025-02-27T00:12:54.313' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (233, 1, N'AddPatient', N'Area', N'Area', N'text', CAST(N'2025-02-27T00:14:20.783' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (234, 1, N'AddPatient', N'Change', N'toggleVillageCityButton', N'button', CAST(N'2025-02-27T22:40:48.943' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (235, 9, N'Delivery Record', N'House / Building No.', N'HouseNo', N'text', CAST(N'2025-03-01T12:54:22.897' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (236, 9, N'Delivery Record', N'Society / Building Name', N'Society', N'text', CAST(N'2025-03-01T12:54:53.853' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (237, 9, N'Delivery Record', N'Area', N'Area', N'text', CAST(N'2025-03-01T12:55:20.400' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (238, 9, N'Delivery Record', N'Change Village/City', N'toggleVillageCityButton', N'button', CAST(N'2025-03-01T12:56:17.067' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (239, 2, N'Consultation', N'table-Brand Name', N'.brand-onload', N'table', CAST(N'2025-04-15T22:23:35.637' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (240, 2, N'Consultation', N'table-Generic Name', N'.content-onload', N'table', CAST(N'2025-04-15T22:57:22.213' AS DateTime), 1, NULL, N'consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (241, 9, N'Delivery Record', N'Language Select', N'lang_select', N'select', CAST(N'2025-04-24T23:42:25.803' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (242, 12, N'Patient Discharge', N'Remark', N'Remark', N'text', CAST(N'2025-08-27T22:56:52.453' AS DateTime), 1, CAST(N'2025-08-27T22:56:52.453' AS DateTime), N'menu10')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (243, 2, N'Consultation', N'FTND/S Live M', N'FTNDS_LiveM', N'text', CAST(N'2025-12-18T00:27:18.540' AS DateTime), 1, NULL, N'Consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (244, 2, N'Consultation', N'FTND/S Live F', N'FTNDS_LiveF', N'text', CAST(N'2025-12-18T00:27:18.540' AS DateTime), 1, NULL, N'Consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (245, 2, N'Consultation', N'FTND/S Dead M', N'FTNDS_DeadM', N'text', CAST(N'2025-12-18T00:27:18.540' AS DateTime), 1, NULL, N'Consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (246, 2, N'Consultation', N'FTND/S Dead F', N'FTNDS_DeadF', N'text', CAST(N'2025-12-18T00:27:18.540' AS DateTime), 1, NULL, N'Consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (247, 2, N'Consultation', N'FTLSCS/S Live M', N'FTLSCS_LiveM', N'text', CAST(N'2025-12-18T00:28:31.453' AS DateTime), 1, NULL, N'Consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (248, 2, N'Consultation', N'FTLSCS/S Live F', N'FTLSCS_LiveF', N'text', CAST(N'2025-12-18T00:28:31.453' AS DateTime), 1, NULL, N'Consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (249, 2, N'Consultation', N'FTLSCS/S Dead M', N'FTLSCS_DeadM', N'text', CAST(N'2025-12-18T00:28:31.453' AS DateTime), 1, NULL, N'Consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (250, 2, N'Consultation', N'FTLSCS/S Dead F', N'FTLSCS_DeadF', N'text', CAST(N'2025-12-18T00:28:31.453' AS DateTime), 1, NULL, N'Consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (251, 2, N'Consultation', N'Pro.Diagnosis', N'StrDiagnosis', N'text', CAST(N'2025-12-18T22:26:05.633' AS DateTime), 1, NULL, N'Consultation')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (252, 9, N'Delivery Record', N'Primary Contact Sufix', N'StrPrimaryContactNameSuffix', N'select', CAST(N'2026-02-25T21:04:14.217' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (253, 9, N'Delivery Record', N'Secondary Contact Sufix', N'StrSecondaryContactNameSuffix', N'select', CAST(N'2026-02-25T21:04:54.197' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (254, 1, N'AddPatient', N'Society / Building', N'Society', N'text', CAST(N'2026-02-26T23:22:23.190' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (255, 1, N'AddPatient', N'Area', N'Area', N'text', CAST(N'2026-02-26T23:22:27.317' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (256, 1, N'AddPatient', N'City', N'City', N'text', CAST(N'2026-02-26T23:22:31.950' AS DateTime), 1, NULL, N'patientForm')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (257, 9, N'Delivery Record', N'Society / Building', N'Society', N'text', CAST(N'2026-02-26T23:24:34.583' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (258, 9, N'Delivery Record', N'Area', N'Area', N'text', CAST(N'2026-02-26T23:24:37.987' AS DateTime), 1, NULL, N'menu7')
GO
INSERT [common].[tbl_ModuleFields] ([fieldId], [ModuleId], [ModuleName], [FieldLabelName], [FieldName], [Type], [createdOn], [isActive], [updatedOn], [ModuleFormId]) VALUES (259, 9, N'Delivery Record', N'City', N'City', N'text', CAST(N'2026-02-26T23:24:41.590' AS DateTime), 1, NULL, N'menu7')
GO
SET IDENTITY_INSERT [common].[tbl_ModuleFields] OFF
GO
ALTER TABLE [common].[tbl_ModuleFields] ADD  DEFAULT (getdate()) FOR [createdOn]
GO
ALTER TABLE [common].[tbl_ModuleFields] ADD  DEFAULT ((1)) FOR [isActive]
GO

