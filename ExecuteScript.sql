use MyDbOPD;


GO
/****** Object:  Table [common].[tbl_UserSettingConfiguration]    Script Date: 15-02-2026 15:53:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[common].[tbl_UserSettingConfiguration]') AND type in (N'U'))
DROP TABLE [common].[tbl_UserSettingConfiguration]
GO
/****** Object:  Table [common].[tbl_UserSettingConfiguration]    Script Date: 15-02-2026 15:53:28 ******/
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


----------------------------------------------------------------------------------


 ALTER PROCEDURE [dbo].[Usp_Manage_Patients]  
   @Command varchar(200) 
  , @PatientId bigint=NULL 
  , @HospitalId int=NULL 
  , @FirstName nvarchar(100)=NULL 
  , @LastName nvarchar(100)=NULL 
  , @DateOfBirth date=NULL 
  , @Age int=NULL 
  , @Gender int=NULL 
  , @IsMarried bit=NULL 
  , @ContatcNo nvarchar(50)=NULL 
  , @Email nvarchar(50)=NULL 
  , @PrimaryRelation nvarchar(50)=NULL 
  , @PrimaryRelativeName nvarchar(50)=NULL 
  , @PrimaryRelativeNameSuffix nvarchar(50)=NULL 
  , @PrimaryContactNo nvarchar(50)=NULL 
  , @SecondaryRelation nvarchar(50)=NULL 
  , @SecondaryRelativeName nvarchar(50)=NULL 
  , @SecondaryRelativeNameSuffix nchar(10)=NULL 
  , @SecondaryContactNo nvarchar(50)=NULL 
  , @LocationRefId int=NULL
  , @HouseNo nvarchar(100)=NULL
  , @Society nvarchar(200)=NULL
  , @Area  nvarchar(200)=NULL
  , @Landmark nvarchar(200)=NULL 
  , @VillageCity nvarchar(50)=NULL 
  , @Taluka nvarchar(50)=NULL 
  , @District nvarchar(50)=NULL 
  , @State nvarchar(50)=NULL 
  , @PinCode nvarchar(20)=NULL 
  , @IsPatientActive bit=NULL 
  , @IsEdited bit=NULL 
  , @EntryDate datetime=NULL 
  , @UpdatedDate datetime=NULL 
  , @CreatedBy bigint=NULL 
  , @UpdatedBy bigint=NULL 
  , @Edit bit=NULL 
  , @SearchType varchar(200)=NULL
  , @SearchKey varchar(1000)=NULL
  , @SortBy varchar(200)='FirstName'
  , @SortOrder varchar(5)='Asc'
  , @PageNo int=1
  , @PageSize int=10  
  , @outIsSuccess bit = NULL OUTPUT
  , @outIdentity bigint = NULL OUTPUT
  , @outMessage VARCHAR(MAX) = NULL OUTPUT
  , @outCustomMessage VARCHAR(MAX) = NULL OUTPUT

  ,@C_CaseIdReturn bigint = 0 OUTPUT
  ,@V_VisitIdReturn bigint = 0 OUTPUT

  , @SubCommand varchar(200) = NULL
 
  , @CaseId bigint = NULL
  , @CaseRegNo nvarchar(100) = NULL
  , @ReferralIndications nvarchar(MAX) = NULL
  , @VisitId bigint = NULL
  , @OpdDate date = NULL
  , @OpdTime time = NULL
  , @Language nvarchar(200) = NULL,

  -- new parameters for Patient insert
  @MarriedLife int = null
  ,@FTNDS_LiveM   int = null
  ,@FTNDS_LiveF	 int = null
  ,@FTNDS_DeadM	 int = null
  ,@FTNDS_DeadF	 int = null
  ,@FTLSCS_LiveM int = null
  ,@FTLSCS_LiveF int = null
  ,@FTLSCS_DeadM int = null
  ,@FTLSCS_DeadF int = null

  , @Pulse int = null
  ,@SystolicBloodPressure int= null 
  , @DaistolicBloodPressure int = null

  , @InvestigationId int	=NULL 
  ,@HomeBloodGlucoseMonitoring bigint = null
  ,@BloodGroup     bigint = null
  , @UrineSugar	   bigint = null
  , @UrineProtein  bigint = null

  , @height decimal(18,2) = null
  , @weight decimal (18,2) = null
  -- new parameters for Patient insert


  --new Paramter Added
  --,@HusbandOrFirstName nvarchar(200) = ''
  ,@HusbandName nvarchar(200) = ''
  --,@FirstName nvarchar(200) =''
  ,@VillageOrLastName nvarchar(200) = ''
  ,@OPDDateSearchTerm nvarchar(100) = ''
  --new Paramter Added
  

	-- New parameter Added
	, @isMainDelete int = 0
	, @visitidsDeleteSelected nvarchar(max) = null
	--New Parameter added

	, @Remark nvarchar(max) = ''
	, @FUDate nvarchar(100) = ''
	,@City nvarchaR(500) = Null

 AS 
  BEGIN 
   SET NOCOUNT ON;        
	   
  DECLARE @v_IsSuccess bit=0, @v_Identity as bigint=0, @v_Message varchar(MAX)='', @v_CustomMessage varchar(MAX)=''
	   , @BaseQry varchar(MAX), @WhereQry varchar(MAX), @Qry varchar(8000), @StartRow int=0, @StopRow int=0, @v_PagingQry varchar(2000)=''
	   , @v_CaseId bigint = 0, @v_TalukaId int = 0 ; --, @V_VisitIdReturn bigint = 0,@C_CaseIdReturn bigint = 0;
  
    IF @Command='INSERT' 
    BEGIN 
	
      INSERT INTO patient.tblPatients  
         (HospitalId, FirstName, LastName, DateOfBirth, Age, Gender, IsMarried, ContatcNo, Email
		 , PrimaryRelation, PrimaryRelativeName, PrimaryRelativeNameSuffix, PrimaryContactNo
		 , SecondaryRelation, SecondaryRelativeName, SecondaryRelativeNameSuffix, SecondaryContactNo
		 , LocationRefId, HouseNo, Society, Area, Landmark, VillageCity, Taluka, District, State, PinCode
		 , IsPatientActive, IsEdited, EntryDate, UpdatedDate, CreatedBy, UpdatedBy, Height, Weight , City) 

       VALUES (@HospitalId, @FirstName, @LastName, @DateOfBirth, @Age, @Gender, @IsMarried, @ContatcNo, @Email
	   , @PrimaryRelation, @PrimaryRelativeName, @PrimaryRelativeNameSuffix, @PrimaryContactNo
	   , @SecondaryRelation, @SecondaryRelativeName, @SecondaryRelativeNameSuffix, @SecondaryContactNo
	   , @LocationRefId, @HouseNo, @Society, @Area, @Landmark, @VillageCity, @Taluka, @District, @State, @PinCode
	   , @IsPatientActive, @IsEdited, @EntryDate, @UpdatedDate, @CreatedBy, @UpdatedBy,  @height, @weight , @City)   
        
		IF @@ERROR=0
		Begin              
			set @v_Identity = SCOPE_IDENTITY()
			--SELECT @v_IsSuccess=1, @v_Identity = SCOPE_IDENTITY(), @v_Message='success',  @v_CustomMessage = 'Saved successfully!'

			-- -- // Check to add new location record
			If Not Exists (select top 1 LocationId from location.tblPincodeLocations with (nolock) where OfficeName=@VillageCity and Taluka=@Taluka and District=@District and State=@State)
			Begin
					INSERT INTO location.tblPincodeLocations  
					 (Location, OfficeName, Pincode, OfficeType, Deliverystatus, Taluka, District, State) 
				   VALUES (@VillageCity, @VillageCity, @Pincode, 'B.O', 'Delivery', @Taluka, @District, @State)   
        
			End

			If Not Exists (select top 1 VillageCityId 
					from location.tblVillageCity vc with (nolock) 
					inner join location.tblTaluka t with (nolock) on vc.TalukaId=t.TalukaId and t.Taluka=@Taluka and t.IsActive=1
					inner join location.tblDistrict d with (nolock) on t.DistrictId=d.DistrictId and d.District=@District and d.IsActive=1
					inner join location.tblState s with (nolock) on d.StateId = s.StateId and s.State=@State And s.IsActive=1
					where vc.VillageCity=@VillageCity and vc.Language=@Language and vc.IsActive=1
				)
			Begin

				-- Jeet Chauhan New Taluka add logic

				declare @VV_StateId bigint = 0 , @VV_talukaId bigint = 0 , @VV_DistrictId bigint = 0;

				select top 1 @VV_StateId = StateId from location.tblState where State = @State and Language = @Language and isnull(State , '') <> ''
				select top 1 @VV_DistrictId = DistrictId from location.tblDistrict where District = @District and Language = @Language  and isnull(District , '') <> ''
				select top 1 @VV_talukaId = TalukaId from location.tblTaluka where Taluka = @Taluka and Language = @Language and isnull(Taluka , '') <> ''

				If Not Exists (select top 1 StateId from location.tblState with (nolock) where State=@State and Language=@Language)
				Begin
					INSERT INTO location.tblState  
					 (State, Language, IsActive, IsEdited, EntryDate, CreatedBy) 
						VALUES (isnull(@State,''), @Language, 1, 1, GETDATE(), 1) 

						Set @VV_StateId = SCOPE_IDENTITY()
				END

				If Not Exists (select top 1 DistrictId from location.tblDistrict with (nolock) where District=@District and StateId=@VV_StateId and Language=@Language)
			    Begin
					 INSERT INTO location.tblDistrict  
					(District, Language, StateId, IsActive, IsEdited, EntryDate, CreatedBy) 
					VALUES (isnull(@District,''), @Language, isnull(@VV_StateId,0 ), 1, 1, GETDATE(), 1)

						Set @VV_DistrictId = SCOPE_IDENTITY()
				END



				If Not Exists (select top 1 TalukaId from location.tblTaluka with (nolock) where Taluka=@Taluka and DistrictId=@VV_DistrictId and Language=@Language)
				Begin
					INSERT INTO location.tblTaluka  
				 (Taluka, Language, DistrictId, IsActive, IsEdited, EntryDate, CreatedBy) 
					VALUES (isnull(@Taluka,''), @Language, isnull(@VV_DistrictId,0), 1, 1, GETDATE(), 1)  
				END


				-- Jeet Chauhan New Taluka add logic
				

				declare @C_CityId bigint = 0, @C_AreaId bigint = 0 , @C_SocietyId bigint = 0;

				if not Exists (select top 1 CityId from location.TblCity with(nolock) where trim(lower(CityName)) = TRIM(LOWER(@City)))
				begin
					insert into location.TblCity(CityName , Language, IsActive ,IsEdit , StateId , EntryDate)
					values (isnull(@City,'') , @Language , 1 , 0 , isnull(@VV_StateId ,0), GETDATE())
				
					set @C_CityId = SCOPE_IDENTITY();
				end
				else
				BEGIN
					set @C_CityId = (select top 1 CityId from location.TblCity with(nolock) where trim(lower(CityName)) = TRIM(LOWER(@City)))
				END


				if not Exists (select top 1 Area from location.tblArea with(nolock) where trim(lower(Area)) = TRIM(LOWER(@Area)))
				begin
					insert into location.tblArea(Area, Language, IsActive ,IsEdited , EntryDate , CityId)
					values (isnull(@Area,''),@Language , 1 , 0 , GETDATE() , isnull(@C_CityId , 0))
				
					set @C_AreaId = SCOPE_IDENTITY();

				end
				BEGIN
					set @C_AreaId = (select top 1 AreaId from location.tblArea with(nolock) where trim(lower(Area)) = TRIM(LOWER(@Area)))
				END


				if not Exists (select top 1 Society from location.tblSociety with(nolock) where trim(lower(Society)) = TRIM(LOWER(@Society)))
				begin
					insert into location.tblSociety(Society, Language , IsActive , IsEdited , EntryDate , AreaId)
					values (isnull(@Society,''),@Language , 1 , 0 , GETDATE() , isnull(@C_AreaId,0))
				
					set @C_SocietyId = SCOPE_IDENTITY();

				end
				BEGIN
					set @C_SocietyId = (select top 1 SocietyId from location.tblSociety with(nolock) where trim(lower(Society)) = TRIM(LOWER(@Society)))
				END


					
					SET @v_TalukaId= (select top 1 TalukaId from  
					location.tblTaluka t with (nolock) 
					inner join location.tblDistrict d with (nolock) on t.DistrictId=d.DistrictId and d.District=@District and d.IsActive=1
					inner join location.tblState s with (nolock) on d.StateId = s.StateId and s.State=@State And s.IsActive=1
					where t.Taluka=@Taluka and t.Language=@Language and t.IsActive=1 
					)

					IF @VV_talukaId <> 0 
					BEGIN
						
						INSERT INTO location.tblVillageCity  
					 (VillageCity, TalukaId, Language, IsActive, IsEdited, EntryDate, UpdatedDate, CreatedBy, UpdatedBy,taluka,State,District 
							, Area , Society , AreaId , SocietyId , IsVillageCity) 
					   VALUES (isnull(@VillageCity,''), isnull(@v_TalukaId,0), @Language, 1, 1, GETDATE(), null, @CreatedBy, @UpdatedBy,
								isnull(@Taluka,''),isnull(@State,''), isnull(@District, '') ,isnull( @Area , '') , ISNULL( @Society , '') , 
								isnull(@C_AreaId,0) , isnull(@C_SocietyId,0) , 1)   

					END
					ELSE
					BEGIN
						
						INSERT INTO location.tblVillageCity  
					 (VillageCity, TalukaId, Language, IsActive, IsEdited, EntryDate, UpdatedDate, CreatedBy, UpdatedBy,taluka,State,District 
						, Area , Society , AreaId , SocietyId , City, IsVillageCity) 
					   VALUES ('', isnull(@v_TalukaId,0), @Language, 1, 1, GETDATE(), null, @CreatedBy, @UpdatedBy,
								isnull(@Taluka,''), isnull(@State,''), isnull(@District, '') ,isnull( @Area , '') , ISNULL( @Society , '') , isnull(@C_AreaId,0) ,
								isnull(@C_SocietyId ,0),@VillageCity , 0)   

					END
					
        
			End

			-- -- // Add new Patient Case
			INSERT INTO patient.tblPatientCases  
				 (CaseRegNo, PatientId, HospitalId, FirstName, LastName, DateOfBirth, Age, Gender, IsMarried, ContatcNo, Email
				 , PrimaryRelation, PrimaryRelativeName, PrimaryRelativeNameSuffix, PrimaryContactNo
				 , SecondaryRelation, SecondaryRelativeName, SecondaryRelativeNameSuffix, SecondaryContactNo
				 , LocationRefId, HouseNo, Society, Area, Landmark, VillageCity, Taluka, District, State, PinCode
				 , IsLatest, IsCaseActive, IsEdited, EntryDate, UpdatedDate, CreatedBy, UpdatedBy,  height , weight ,ReferralIndications , City) 
			   VALUES (@CaseRegNo, @v_Identity, @HospitalId, @FirstName, @LastName, @DateOfBirth, @Age, @Gender, @IsMarried, @ContatcNo, @Email
			   , @PrimaryRelation, @PrimaryRelativeName, @PrimaryRelativeNameSuffix, @PrimaryContactNo
			   , @SecondaryRelation, @SecondaryRelativeName, @SecondaryRelativeNameSuffix, @SecondaryContactNo
			   , @LocationRefId, @HouseNo, @Society, @Area, @Landmark, @VillageCity, @Taluka, @District, @State, @PinCode
			   , 1, 1, @IsEdited, @EntryDate, @UpdatedDate, @CreatedBy, @UpdatedBy,  @height, @weight  ,  'xvii. Evaluation of fetal growth parameters, fetal weight and fetal well being.' , @City)   
			
			


			set @v_CaseId = SCOPE_IDENTITY();

			-- -- // Add new Patient Visit 
			--INSERT INTO [patient].[tblPatientVisits]
			--	([CaseId],[OpdDate],[OpdTime],[IsActive],[IsEdited],[EntryDate],[CreatedBy],[UpdatedBy])
			--VALUES (@v_CaseId, @OpdDate, @OpdTime, 1, @IsEdited, @EntryDate, @CreatedBy, @UpdatedBy )

			-- Jeet Chauhan New added

			INSERT INTO [patient].[tblPatientVisits]
				([CaseId],[OpdDate],[OpdTime],[IsActive],[IsEdited],[EntryDate],[CreatedBy],[UpdatedBy],
				MarriedLife,FTNDS_LiveM,FTNDS_LiveF,FTNDS_DeadM,FTNDS_DeadF,FTLSCS_LiveM,FTLSCS_LiveF,FTLSCS_DeadM,FTLSCS_DeadF,	Pulse, SystolicBloodPressure,DaistolicBloodPressure,patientid)
			VALUES (@v_CaseId, @OpdDate, @OpdTime, 1, @IsEdited, @EntryDate, @CreatedBy, @UpdatedBy,
			@MarriedLife
			,@FTNDS_LiveM 
			,@FTNDS_LiveF	
			,@FTNDS_DeadM	
			,@FTNDS_DeadF	
			,@FTLSCS_LiveM
			,@FTLSCS_LiveF
			,@FTLSCS_DeadM
			,@FTLSCS_DeadF
			,@Pulse
			, @SystolicBloodPressure
			, @DaistolicBloodPressure
			, @v_Identity
			)

			declare @v_visitedId bigint = SCOPE_IDENTITY();
			-- Jeet Chauhan New added

			-- Jeet Chauhan Invastigation and sp change of add patient
				If Not Exists (select top 1 InvestigationId from patient.tblInvestigation with (nolock) where CaseId=@v_CaseId)
				Begin
					Insert into patient.tblInvestigation (PatientId, CaseId, VisitId, HomeBloodGlucoseMonitoring, BloodGroup, 
					UrineSugar, UrineProtein,  CreatedBy)
					Values (@v_Identity, @v_CaseId, @v_visitedId, @HomeBloodGlucoseMonitoring, @BloodGroup
					, @UrineSugar, @UrineProtein,  @CreatedBy)

				End
				Else
				Begin
						Update patient.tblInvestigation
						SET HomeBloodGlucoseMonitoring=@HomeBloodGlucoseMonitoring
							, BloodGroup=@BloodGroup
							, UrineSugar=@UrineSugar
							, UrineProtein=@UrineProtein
							, IsEdited=1
							, UpdatedDate=@UpdatedDate
							, UpdatedBy = @UpdatedBy
							WHERE CaseId=@CaseId
				End
				-- Jeet Chauhan Invastigation and sp change of add patient

			-- -- // Insert into Sync Table =====================================================================
			If Not Exists(Select top 1 FirstName from sync.tblFirstNames where LOWER(FirstName)=LOWER(@FirstName))
			Begin
				INSERT INTO sync.tblFirstNames (FirstName, IsSyncPending, EntryDate)
				VALUES (@FirstName, 1, GETDATE())
			End

			If Not Exists(Select top 1 LastName from sync.tblLastNames where LOWER(LastName)=LOWER(@LastName))
			Begin
				INSERT INTO sync.tblLastNames (LastName, IsSyncPending, EntryDate)
				VALUES (@LastName, 1, GETDATE())
			End

			-- -- // =============================================================================================

			-- -- // Insert into aditional Tables for dropdown like villagecity, firstname, lastname, etc =====
			if not Exists (select top 1 PatientName from patient.tbl_PatientName with(nolock) where trim(lower(PatientName)) = TRIM(LOWER(@FirstName)))
			begin
				insert into patient.tbl_PatientName(PatientName, Langauge)
				values (@FirstName , @Language)
			end

			if not Exists (select top 1 LastName from patient.tbl_LastName with(nolock) where trim(lower(LastName)) = TRIM(LOWER(@LastName)))
			begin
				insert into patient.tbl_LastName(LastName, langauge)
				values (@LastName, @Language)
			end

			if not Exists (select top 1 HusbandName from patient.tbl_husbandName with(nolock) where trim(lower(HusbandName)) = TRIM(LOWER(@PrimaryRelativeName)))
			begin
				insert into patient.tbl_husbandName(HusbandName , langauge)
				values (@PrimaryRelativeName , @Language)
			end

			if not Exists (select top 1 landmark from patient.tbl_landmark with(nolock) where trim(lower(landmark)) = TRIM(LOWER(@Landmark)))
			begin
				insert into patient.tbl_landmark(landmark, langauge )
				values (@Landmark,@Language )
			end

			


			if not Exists (select top 1 id from patient.tbl_regiondetails with(nolock) where 
							trim(lower(villagecity)) = TRIM(LOWER(@VillageCity))
							and trim(lower(state)) = TRIM(LOWER(@State))
							and trim(lower(taluka)) = TRIM(LOWER(@Taluka))
							and trim(lower(district)) = TRIM(LOWER(@District))
							and trim(lower(langauge)) = TRIM(LOWER(@Language))
							and TRIM(LOWER(landmark)) = TRIM(LOWER(@Landmark))
							and TRIM(LOWER(Area)) = TRIM(LOWER(@Area))
							and TRIM(LOWER(Society)) = TRIM(LOWER(@Society))
						   )
			begin
				insert into patient.tbl_regiondetails (villagecity ,state,taluka,district, langauge,pincode,landmark , Area , Society)
				values (@VillageCity,@State,@Taluka, @District, @Language,@PinCode,@Landmark , @Area , @Society)
			end
			-- -- // ==========================================================================================

			SELECT @v_IsSuccess=1, @v_Identity = @v_Identity, @v_Message='success',  @v_CustomMessage = 'Saved successfully!', @C_CaseIdReturn = @v_CaseId , @V_VisitIdReturn = @v_visitedId;

		End
		Else
		Begin
			SELECT @v_IsSuccess=0, @v_Identity = 0, @v_Message=ERROR_MESSAGE(),  @v_CustomMessage = 'Save failed!'
		End             
		
		SELECT @outIsSuccess=@v_IsSuccess , @outIdentity=@v_Identity, @outMessage=@v_Message, @outCustomMessage = @v_CustomMessage
    END 

	ELSE IF @Command='UpdateIndications' 
    BEGIN 
			If Exists (select top 1 CaseId from patient.tblPatientCases with (nolock) where PatientId=@PatientId and CaseId=@CaseId)
			Begin				
				 UPDATE patient.tblPatientCases 
				 SET ReferralIndications=@ReferralIndications      				
				, IsEdited=@IsEdited 			   
				, UpdatedDate=@UpdatedDate 			   
				, UpdatedBy=@UpdatedBy 
				 WHERE PatientId=@PatientId and CaseId=@CaseId     
		 
					IF @@ERROR=0
					Begin               
						SELECT @v_IsSuccess=1, @v_Identity = @CaseId, @v_Message='success',  @v_CustomMessage = 'Saved successfully!'
					End
					Else
					Begin
						SELECT @v_IsSuccess=0, @v_Identity = @CaseId, @v_Message=ERROR_MESSAGE(),  @v_CustomMessage = 'Save failed!'
					End 
			End
			Else
			Begin
				SELECT @v_IsSuccess=0, @v_Identity = 0, @v_Message='error', @v_CustomMessage='Record not found!'
			End                 
		
			SELECT @outIsSuccess=@v_IsSuccess , @outIdentity=@v_Identity, @outMessage=@v_Message, @outCustomMessage = @v_CustomMessage
    END 

	-- Jeet Chauhan For empty reffrel for a patient
	ELSE IF @Command='UpdateToEmpty' 
    BEGIN 
			If Exists (select top 1 CaseId from patient.tblPatientCases with (nolock) where PatientId=@PatientId and CaseId=@CaseId)
			Begin				
				 UPDATE patient.tblPatientCases 
				 SET ReferralIndications=null      				
				--, IsEdited=@IsEdited 			   
				--, UpdatedDate=@UpdatedDate 			   
				--, UpdatedBy=@UpdatedBy 
				 WHERE PatientId=@PatientId and CaseId=@CaseId     
		 
					IF @@ERROR=0
					Begin               
						SELECT @v_IsSuccess=1, @v_Identity = @CaseId, @v_Message='success',  @v_CustomMessage = 'Saved successfully!'
					End
					Else
					Begin
						SELECT @v_IsSuccess=0, @v_Identity = @CaseId, @v_Message=ERROR_MESSAGE(),  @v_CustomMessage = 'Save failed!'
					End 
			End
			Else
			Begin
				SELECT @v_IsSuccess=0, @v_Identity = 0, @v_Message='error', @v_CustomMessage='Record not found!'
			End                 
		
			SELECT @outIsSuccess=@v_IsSuccess , @outIdentity=@v_Identity, @outMessage=@v_Message, @outCustomMessage = @v_CustomMessage
    END 
	-- Jeet Chauhan For empty reffrel for a patient
     
    ELSE IF @Command='UPDATE' 
    BEGIN 
      UPDATE patient.tblPatients SET FirstName=@FirstName 
        , LastName=@LastName 
        , DateOfBirth=@DateOfBirth 
        , Age=@Age 
        , Gender=@Gender 
        , IsMarried=@IsMarried 
        , ContatcNo=@ContatcNo 
        , Email=@Email 
        , PrimaryRelation=@PrimaryRelation 
        , PrimaryRelativeName=@PrimaryRelativeName 
        , PrimaryRelativeNameSuffix=@PrimaryRelativeNameSuffix 
        , PrimaryContactNo=@PrimaryContactNo 
        , SecondaryRelation=@SecondaryRelation 
        , SecondaryRelativeName=@SecondaryRelativeName 
        , SecondaryRelativeNameSuffix=@SecondaryRelativeNameSuffix 
        , SecondaryContactNo=@SecondaryContactNo 
        , LocationRefId=@LocationRefId
		, HouseNo=@HouseNo
		, Society=@Society
		, Area=@Area
		, Landmark=@Landmark
        , VillageCity=@VillageCity 
		,City = @City
        , Taluka=@Taluka 
        , District=@District 
        , State=@State 
        , PinCode=@PinCode 
        , IsPatientActive=@IsPatientActive 
        , IsEdited=@IsEdited 
       -- , EntryDate=@EntryDate 
        , UpdatedDate=@UpdatedDate 
       -- , CreatedBy=@CreatedBy 
        , UpdatedBy=@UpdatedBy ,

		--new parameters Added
		Weight = @weight,
		Height = @height
		--new parameters Added

         WHERE PatientId=@PatientId     

		IF @@ERROR=0
		Begin               
			SELECT @v_IsSuccess=1, @v_Identity = @PatientId, @v_Message='success',  @v_CustomMessage = 'Saved successfully!'

			-- -- // Check to add new location record
			If Not Exists (select top 1 LocationId from location.tblPincodeLocations with (nolock) where OfficeName=@VillageCity and Taluka=@Taluka and District=@District and State=@State)
			Begin
					INSERT INTO location.tblPincodeLocations  
					 (Location, OfficeName, Pincode, OfficeType, Deliverystatus, Taluka, District, State) 
				   VALUES (@VillageCity, @VillageCity, @Pincode, 'B.O', 'Delivery', @Taluka, @District, @State)   
        
			End

			If Not Exists (select top 1 VillageCityId 
					from location.tblVillageCity vc with (nolock) 
					inner join location.tblTaluka t with (nolock) on vc.TalukaId=t.TalukaId and t.Taluka=@Taluka and t.IsActive=1
					inner join location.tblDistrict d with (nolock) on t.DistrictId=d.DistrictId and d.District=@District and d.IsActive=1
					inner join location.tblState s with (nolock) on d.StateId = s.StateId and s.State=@State And s.IsActive=1
					where vc.VillageCity=@VillageCity and vc.Language=@Language and vc.IsActive=1
				)
			Begin
					
					SET @v_TalukaId= (select top 1 TalukaId from  
					location.tblTaluka t with (nolock) 
					inner join location.tblDistrict d with (nolock) on t.DistrictId=d.DistrictId and d.District=@District and d.IsActive=1
					inner join location.tblState s with (nolock) on d.StateId = s.StateId and s.State=@State And s.IsActive=1
					where t.Taluka=@Taluka and t.Language=@Language and t.IsActive=1 
					)

					INSERT INTO location.tblVillageCity  
					 (VillageCity, TalukaId, Language, IsActive, IsEdited, EntryDate, UpdatedDate, CreatedBy, UpdatedBy, State, District, taluka ,City) 
				   VALUES (@VillageCity,isnull( @v_TalukaId , 0 ) , @Language, 1, 1, GETDATE(), null, @CreatedBy, @UpdatedBy,
					@State, @District, @Taluka , @City)   
        
			End

			-- -- // Insert into Sync Table =====================================================================
			If Not Exists(Select top 1 FirstName from sync.tblFirstNames where LOWER(FirstName)=LOWER(@FirstName))
			Begin
				INSERT INTO sync.tblFirstNames (FirstName, IsSyncPending, EntryDate)
				VALUES (@FirstName, 1, GETDATE())
			End

			If Not Exists(Select top 1 LastName from sync.tblLastNames where LOWER(LastName)=LOWER(@LastName))
			Begin
				INSERT INTO sync.tblLastNames (LastName, IsSyncPending, EntryDate)
				VALUES (@LastName, 1, GETDATE())
			End
			-- -- // =============================================================================================

			If @SubCommand = 'Add New Case'
			Begin
					-- -- // Update latest existing record status of last visit to zero(0);				    
				    Update patient.tblPatientVisits set IsLatestVisit=0, @UpdatedDate=GETDATE(), UpdatedBy=@UpdatedBy 
					--where VisitId=@VisitId
					where CaseId=(select CaseId from patient.tblPatientCases pc with (nolock) where pc.PatientId=@PatientId and pc.IsLatest=1) and IsLatestVisit=1
					-- -- // Update latest existing record status of IsLatest to zero(0);
					Update patient.tblPatientCases set IsLatest=0, @UpdatedDate=GETDATE(), UpdatedBy=@UpdatedBy 
					--where CaseId=@CaseId
					where PatientId=@PatientId and IsLatest=1

					-- -- // Add new Patient Case
					INSERT INTO patient.tblPatientCases  
						 (CaseRegNo, PatientId, HospitalId, FirstName, LastName, DateOfBirth, Age, Gender, IsMarried, ContatcNo, Email
						 , PrimaryRelation, PrimaryRelativeName, PrimaryRelativeNameSuffix, PrimaryContactNo
						 , SecondaryRelation, SecondaryRelativeName, SecondaryRelativeNameSuffix, SecondaryContactNo
						 , LocationRefId, HouseNo, Society, Area, Landmark, VillageCity, Taluka, District, State, PinCode
						 , IsLatest, IsCaseActive, IsEdited, EntryDate, UpdatedDate, CreatedBy, UpdatedBy, City) 
					   VALUES (@CaseRegNo, @PatientId, @HospitalId, @FirstName, @LastName, @DateOfBirth, @Age, @Gender, @IsMarried, @ContatcNo, @Email
					   , @PrimaryRelation, @PrimaryRelativeName, @PrimaryRelativeNameSuffix, @PrimaryContactNo
					   , @SecondaryRelation, @SecondaryRelativeName, @SecondaryRelativeNameSuffix, @SecondaryContactNo
					   , @LocationRefId, @HouseNo, @Society, @Area, @Landmark, @VillageCity, @Taluka, @District, @State, @PinCode
					   , 1, 1, @IsEdited, GETDATE(), NULL, @CreatedBy, @UpdatedBy , @City)   
			

					set @v_CaseId = SCOPE_IDENTITY();					

					-- -- // Add new Patient Visit			
					INSERT INTO [patient].[tblPatientVisits]
						([CaseId],[OpdDate],[OpdTime],[IsActive],[IsEdited],[EntryDate],[CreatedBy],[UpdatedBy], patientId)
					VALUES (@v_CaseId, @OpdDate, @OpdTime, 1, @IsEdited, GETDATE(), @CreatedBy, @UpdatedBy ,@PatientId)
			End

			Else If @SubCommand = 'Add New Visit'
			Begin
					-- -- Select latest case record
					select @v_CaseId = CaseId from patient.tblPatientCases with (nolock) where PatientId=@PatientId and IsLatest=1;

						-- -- // Update Patient Case Profile
					UPDATE patient.tblPatientCases SET FirstName=@FirstName 
					, LastName=@LastName 
					, DateOfBirth=@DateOfBirth 
					, Age=@Age 
					, Gender=@Gender 
					, IsMarried=@IsMarried 
					, ContatcNo=@ContatcNo 
					, Email=@Email 
					, PrimaryRelation=@PrimaryRelation 
					, PrimaryRelativeName=@PrimaryRelativeName 
					, PrimaryRelativeNameSuffix=@PrimaryRelativeNameSuffix 
					, PrimaryContactNo=@PrimaryContactNo 
					, SecondaryRelation=@SecondaryRelation 
					, SecondaryRelativeName=@SecondaryRelativeName 
					, SecondaryRelativeNameSuffix=@SecondaryRelativeNameSuffix 
					, SecondaryContactNo=@SecondaryContactNo 
					, LocationRefId=@LocationRefId
					, HouseNo=@HouseNo
					, Society=@Society
					, Area=@Area
					, Landmark=@Landmark
					, VillageCity=@VillageCity 
					, City = @City
					, Taluka=@Taluka 
					, District=@District 
					, State=@State 
					, PinCode=@PinCode 					
					, IsEdited=@IsEdited 
				   -- , EntryDate=@EntryDate 
					, UpdatedDate=@UpdatedDate 
				   -- , CreatedBy=@CreatedBy 
					, UpdatedBy=@UpdatedBy 
					--, PatientId = @PatientId
					 WHERE CaseId=@v_CaseId 

					-- -- // Update latest existing record status of last visit to zero(0);				    
				    Update patient.tblPatientVisits set IsLatestVisit=0, @UpdatedDate=GETDATE(), UpdatedBy=@UpdatedBy where CaseId=@v_CaseId and IsLatestVisit=1

					-- -- // Add new Patient Visit			
					INSERT INTO [patient].[tblPatientVisits]
						([CaseId],[OpdDate],[OpdTime],[IsActive],[IsEdited],[EntryDate],[CreatedBy],[UpdatedBy], patientId)
					VALUES (@v_CaseId, @OpdDate, @OpdTime, 1, @IsEdited, GETDATE(), @CreatedBy, @UpdatedBy, @PatientId )
			End
			Else
			Begin
					-- -- In Edit Case Update the Case and Visit Records whose CaseId and VisitId are passed

					-- -- // Update Patient Case Profile
					UPDATE patient.tblPatientCases SET FirstName=@FirstName 
					, LastName=@LastName 
					, DateOfBirth=@DateOfBirth 
					, Age=@Age 
					, Gender=@Gender 
					, IsMarried=@IsMarried 
					, ContatcNo=@ContatcNo 
					, Email=@Email 
					, PrimaryRelation=@PrimaryRelation 
					, PrimaryRelativeName=@PrimaryRelativeName 
					, PrimaryRelativeNameSuffix=@PrimaryRelativeNameSuffix 
					, PrimaryContactNo=@PrimaryContactNo 
					, SecondaryRelation=@SecondaryRelation 
					, SecondaryRelativeName=@SecondaryRelativeName 
					, SecondaryRelativeNameSuffix=@SecondaryRelativeNameSuffix 
					, SecondaryContactNo=@SecondaryContactNo 
					, LocationRefId=@LocationRefId
					, HouseNo=@HouseNo
					, Society=@Society
					, Area=@Area
					, Landmark=@Landmark
					, VillageCity=@VillageCity 
					, City = @City
					, Taluka=@Taluka 
					, District=@District 
					, State=@State 
					, PinCode=@PinCode 					
					, IsEdited=@IsEdited 
				   -- , EntryDate=@EntryDate 
					, UpdatedDate=@UpdatedDate 
				   -- , CreatedBy=@CreatedBy 
					, UpdatedBy=@UpdatedBy 
					 WHERE CaseId=@CaseId     

					 -- -- // Update Patient Visit
					UPDATE patient.tblPatientVisits 
					SET OpdDate=@OpdDate
					, OpdTime=@OpdTime
					, IsEdited=@IsEdited 
				   -- , EntryDate=@EntryDate 
					, UpdatedDate=@UpdatedDate 
				   -- , CreatedBy=@CreatedBy 
					, UpdatedBy=@UpdatedBy 

					-- new parameters added
					,MarriedLife = @MarriedLife
					,FTNDS_LiveM = @FTNDS_LiveM
					,FTNDS_LiveF = @FTNDS_LiveF
					,FTNDS_DeadM = @FTNDS_DeadM
					,FTNDS_DeadF = @FTNDS_DeadF
					,FTLSCS_LiveM = @FTLSCS_LiveM 
					,FTLSCS_LiveF = @FTLSCS_LiveF
					,FTLSCS_DeadM = @FTLSCS_DeadM
					,FTLSCS_DeadF = @FTLSCS_DeadF
					-- new parameters added
					 WHERE VisitId=@VisitId     

			End

		End
		Else
		Begin
			SELECT @v_IsSuccess=0, @v_Identity = @PatientId, @v_Message=ERROR_MESSAGE(),  @v_CustomMessage = 'Save failed!'
		End             
		
		SELECT @outIsSuccess=@v_IsSuccess , @outIdentity=@v_Identity, @outMessage=@v_Message, @outCustomMessage = @v_CustomMessage
    END 
     
    ELSE IF @Command='SELECT' 
    BEGIN 
		If @SubCommand = 'SelectSingle'
		Begin
			If ISNULL(@VisitId, 0) > 0
			Begin
					SELECT p.PatientId, p.HospitalId, p.FirstName, p.LastName, p.DateOfBirth, p.Age, p.Gender, p.IsMarried, p.ContatcNo, p.Email
				  , p.PrimaryRelation, p.PrimaryRelativeName, trim(p.PrimaryRelativeNameSuffix) as PrimaryRelativeNameSuffix
				  , p.PrimaryContactNo
				  , p.SecondaryRelation, p.SecondaryRelativeName, 
				   trim(p.SecondaryRelativeNameSuffix) as SecondaryRelativeNameSuffix
				   , p.SecondaryContactNo
				  , p.LocationRefId, p.HouseNo, p.Society, p.Area, p.Landmark, p.VillageCity, p.Taluka, p.District, p.State, p.PinCode, p.City
				  , p.IsPatientActive, p.IsEdited, p.EntryDate, p.UpdatedDate, p.CreatedBy, p.UpdatedBy
				  , pc.CaseId, pc.CaseRegNo, pv.VisitId, pv.OpdDate, pv.OPDTime, pc.ReferralIndications

				  -- Jeet Chauhan New Changes
				   ,FTNDS_LiveM,FTNDS_LiveF,FTNDS_DeadM,FTNDS_DeadF,FTLSCS_LiveM,FTLSCS_LiveF,FTLSCS_DeadM,FTLSCS_DeadF,
				   --p.Height as Height,p.weight as Weight,
				   isnull(p.Height, 0) as Height,isnull(p.weight, 0) as Weight,
				   isnull(MarriedLife,0) as MarriedLife,

					Pulse, SystolicBloodPressure,DaistolicBloodPressure,
				   
				   HomeBloodGlucoseMonitoring,BloodGroup,
				   -- isnull(HomeBloodGlucoseMonitoring, '0') as HomeBloodGlucoseMonitoring
				   
				   --,isnull(BloodGroup , '') as BloodGroup


				   UrineSugar, UrineProtein
				   ,p.HouseNo , p.Society

				   --, primarySuffix.RecordName as PrimarySuffix
				   --, secondary.RecordName as SecondarySuffix
				   --, IIF(primarySuffix.RecordName = '-' , '' , primarySuffix.RecordName) as PrimarySuffix
				   --, IIF(secondary.RecordName = '-' , '' ,secondary.RecordName ) as SecondarySuffix
				   ,IIF(case when isnull(primarySuffix.RecordName,'') = '' then p.PrimaryRelativeNameSuffix else primarySuffix.RecordName end = '-' , '' , case when isnull(primarySuffix.RecordName,'') = '' then p.PrimaryRelativeNameSuffix else primarySuffix.RecordName end) as PrimarySuffix

				   --, IIF(primarySuffix.RecordName = '-' , '' , primarySuffix.RecordName) as PrimarySuffix
				   --, IIF(secondary.RecordName = '-' , '' ,secondary.RecordName ) as SecondarySuffix
				   , IIF(case when isnull(secondary.RecordName,'') = '' then p.PrimaryRelativeNameSuffix else secondary.RecordName end = '-' , '' , case when isnull(secondary.RecordName,'') = '' then p.PrimaryRelativeNameSuffix else secondary.RecordName end ) as SecondarySuffix
					-- Jeet Chauhan New Changes

				  FROM patient.tblPatients p with (nolock) 
				  INNER JOIN patient.tblPatientCases pc with (nolock)  on p.PatientId=pc.PatientId 
				  INNER JOIN patient.tblPatientVisits pv with (nolock) on pc.CaseId=pv.CaseId 
				   -- Jeet Chauhan New Added
				  inner join patient.tblInvestigation pi with(nolock) on pi.PatientId = pc.PatientId
				  -- Jeet Chauhan New Added

				  --left join common.tblEntityRecords primarySuffix on primarySuffix.EntityRecordId = p.PrimaryRelativeNameSuffix
				  --left join common.tblEntityRecords secondary on secondary.EntityRecordId = p.SecondaryRelativeNameSuffix

				  LEFT JOIN common.tblEntityRecords primarySuffix with(nolock) on CASE 
							WHEN TRY_CAST(p.PrimaryRelativeNameSuffix AS INT) IS NOT NULL 
								THEN TRY_CAST(p.PrimaryRelativeNameSuffix AS INT)
								ELSE NULL -- Handle invalid data gracefully
							END  = primarySuffix.EntityRecordId

					 LEFT JOIN common.tblEntityRecords secondary with(nolock) on CASE 
							WHEN TRY_CAST(p.SecondaryRelativeNameSuffix AS INT) IS NOT NULL 
								THEN TRY_CAST(p.SecondaryRelativeNameSuffix AS INT)
								ELSE NULL -- Handle invalid data gracefully
							END  = secondary.EntityRecordId

				  WHERE p.PatientId=@PatientId and pv.VisitId=@VisitId
			End
			Else
			Begin
				-- -- Select Latest Record
				SELECT pc.PatientId, p.HospitalId, pc.FirstName, pc.LastName, pc.DateOfBirth, pc.Age, pc.Gender, pc.IsMarried, pc.ContatcNo, pc.Email
				  , pc.PrimaryRelation, pc.PrimaryRelativeName, trim(pc.PrimaryRelativeNameSuffix) as PrimaryRelativeNameSuffix
				  , pc.PrimaryContactNo
				  , pc.SecondaryRelation, pc.SecondaryRelativeName, trim(pc.SecondaryRelativeNameSuffix) as SecondaryRelativeNameSuffix, pc.SecondaryContactNo
				  , pc.LocationRefId, pc.HouseNo, pc.Society, pc.Area, pc.Landmark, pc.VillageCity, pc.Taluka, pc.District, pc.State, pc.PinCode , pc.City
				  , p.IsPatientActive, pc.IsEdited, pc.EntryDate, pc.UpdatedDate, pc.CreatedBy, pc.UpdatedBy
				  , pc.CaseId, pc.CaseRegNo, pv.VisitId, pv.OpdDate, pv.OPDTime, pc.ReferralIndications
				    -- Jeet Chauhan New Changes
				   ,FTNDS_LiveM,FTNDS_LiveF,FTNDS_DeadM,FTNDS_DeadF,FTLSCS_LiveM,FTLSCS_LiveF,FTLSCS_DeadM,FTLSCS_DeadF, 
				   isnull(p.Height, 0) as Height,isnull(p.weight, 0) as Weight,
				   MarriedLife,

					Pulse, SystolicBloodPressure,DaistolicBloodPressure,
				   
				   HomeBloodGlucoseMonitoring,BloodGroup
				   
				   -- isnull(HomeBloodGlucoseMonitoring, '0') as HomeBloodGlucoseMonitoring
				   
				   --,isnull(BloodGroup , '') as BloodGroup

				   , UrineSugar, UrineProtein

				   --, primarySuffix.RecordName as PrimarySuffix
				   --, secondary.RecordName as SecondarySuffix
				   --, IIF(primarySuffix.RecordName = '-' , '' , primarySuffix.RecordName) as PrimarySuffix
				   --, IIF(secondary.RecordName = '-' , '' ,secondary.RecordName ) as SecondarySuffix
				   ,IIF(case when isnull(primarySuffix.RecordName,'') = '' then p.PrimaryRelativeNameSuffix else primarySuffix.RecordName end = '-' , '' , case when isnull(primarySuffix.RecordName,'') = '' then p.PrimaryRelativeNameSuffix else primarySuffix.RecordName end) as PrimarySuffix

				   --, IIF(primarySuffix.RecordName = '-' , '' , primarySuffix.RecordName) as PrimarySuffix
				   --, IIF(secondary.RecordName = '-' , '' ,secondary.RecordName ) as SecondarySuffix
				   , IIF(case when isnull(secondary.RecordName,'') = '' then p.PrimaryRelativeNameSuffix else secondary.RecordName end = '-' , '' , case when isnull(secondary.RecordName,'') = '' then p.PrimaryRelativeNameSuffix else secondary.RecordName end ) as SecondarySuffix
					-- Jeet Chauhan New Changes

				-- Jeet Chauhan New Changes
				  FROM patient.tblPatients p with (nolock) 				  
				  INNER JOIN patient.tblPatientCases pc with (nolock)  on p.PatientId=pc.PatientId and pc.IsLatest=1
				    -- Jeet Chauhan New Added
				  inner join patient.tblInvestigation pi with(nolock) on pi.PatientId = pc.PatientId
				  -- Jeet Chauhan New Added
				  INNER JOIN patient.tblPatientVisits pv with (nolock) on pc.CaseId=pv.CaseId and pv.IsLatestVisit=1
				   -- left join common.tblEntityRecords primarySuffix on primarySuffix.EntityRecordId = p.PrimaryRelativeNameSuffix
				   -- left join common.tblEntityRecords secondary on secondary.EntityRecordId = p.SecondaryRelativeNameSuffix

				   LEFT JOIN common.tblEntityRecords primarySuffix with(nolock) on CASE 
							WHEN TRY_CAST(p.PrimaryRelativeNameSuffix AS INT) IS NOT NULL 
								THEN TRY_CAST(p.PrimaryRelativeNameSuffix AS INT)
								ELSE NULL -- Handle invalid data gracefully
							END  = primarySuffix.EntityRecordId

					 LEFT JOIN common.tblEntityRecords secondary with(nolock) on CASE 
							WHEN TRY_CAST(p.SecondaryRelativeNameSuffix AS INT) IS NOT NULL 
								THEN TRY_CAST(p.SecondaryRelativeNameSuffix AS INT)
								ELSE NULL -- Handle invalid data gracefully
							END  = secondary.EntityRecordId

				  WHERE p.PatientId=@PatientId
			End

		End

		Else if @SubCommand='GetAllList' 
		Begin
			Set @StartRow = ((@PageNo-1)*@PageSize) + 1		
			Set @StopRow = (@PageNo*@PageSize)
    
			

			if @PageNo = 1
			begin
				--set @v_PagingQry = ' Where CTE.RowId Between '+CONVERT(varchar(30),@StartRow) +' And '+ CONVERT(varchar(30),@StopRow)
				set @v_PagingQry = '  1=1 '
			end
			ELSE
			BEGIN
				Set @StartRow = ((@PageNo-2)*@PageSize) + 1		
				Set @StopRow = ((@PageNo - 1)*@PageSize)
				set @v_PagingQry = '  CTE.RowId Between '+CONVERT(varchar(30),@StartRow -1 ) +' And '+ CONVERT(varchar(30),@StopRow  )

			END

			--SET @WhereQry = ' p.IsPatientActive in (1,0) '				
			SET @WhereQry = ' 1=1 '				
			
			--new Jeet Chauhan
			declare @husbandNameQuery nvarchar(max) =''
			if(@HusbandName != '')
			begin
			set @husbandNameQuery = '
						     and
						    (
						        ('''+@HusbandName + ''' = '''' and 1=1)
						        OR
						        (pc.PrimaryRelativeName LIKE ''%' + @HusbandName + '%'')
								--OR
								--(p.FirstName LIKE ''%' + @HusbandName + '%'')
								
						    )
						'
				print @husbandNameQuery
			end
			else
			begin
				set @husbandNameQuery = ''
			end

			declare @FisrtNameQuery nvarchar(max) =''
			if(@FirstName != '')
			begin
			set @FisrtNameQuery = '
						     and
						    (
						        ('''+@FirstName + ''' = '''' and 1=1)
						        OR
						        (p.FirstName LIKE ''%' + @FirstName + '%'')
								
						    )
						'
				print @FisrtNameQuery
			end
			else
			begin
				set @FisrtNameQuery = ''
			end


			-- for village or lastname
			declare @VillageOrLastNameQuery nvarchar(max) =''
			if(@VillageOrLastName != '')
			begin
			set @VillageOrLastNameQuery = '
						     and
						    (
						        ('''+@VillageOrLastName + ''' = '''' and 1=1)
						        OR
						        (pc.VillageCity LIKE ''%' + @VillageOrLastName + '%'')
								OR
								 (p.LastName LIKE ''%' + @VillageOrLastName + '%'')
						    )
						'
						print @VillageOrLastNameQuery
			end
			else
			begin
				set @VillageOrLastNameQuery = ''
			end

			declare @RegistrationOrContactQuery nvarchar(max) =''
			if(@SearchType = 'FreeSearch')
			begin
				declare @RegistrationOrContact nvarchar(80) = isnull(@SearchKey ,'')
				
				if(@RegistrationOrContact != '')
				begin
				set @RegistrationOrContactQuery =' and
							(
							(pc.ContatcNo like ''%' + @SearchKey + '%'')
							Or 
							(pc.CaseRegNo like ''%' + @SearchKey + '%'')
							)'

							print @RegistrationOrContactQuery
				end
				else
				begin
					set @RegistrationOrContactQuery = ''
				end
			end
			else
			begin
				set @RegistrationOrContactQuery = ''
			end

		


			
			--new Jeet Chauhan

			If @SearchType = 'OpdDate'
			Begin
				--Set @SearchKey = Cast(@SearchKey as Date)				
				Set @SearchKey = LOWER(FORMAT(CONVERT(DATE, @SearchKey, 103), 'yyyy-MM-dd'))	
				print @SearchKey
			End

			--Jeet Chauhan for date condition
			declare @datecondition nvarchar(max) = ''
			--if(@SearchType = 'OpdDate')
			--begin
			--	set @datecondition  = 'and pv.VisitId in (Select VisitId from patient.tblPatientVisits where OPDDate = ''' + @SearchKey + ''')'
			--	set @SearchType = 'FreeSearch'
			--end

			if(@PageNo =0 )
			begin
				set @OPDDateSearchTerm = @SearchKey
			end

			--set @OPDDateSearchTerm = @SearchKey
			if(isnull(@OPDDateSearchTerm,'') != '')
			begin
				declare @formattedDate nvarchar(10)	= ''
				--Set @formattedDate = LOWER(FORMAT(CONVERT(DATE, @OPDDateSearchTerm, 103), 'yyyy-MM-dd'))
				--Set @formattedDate = @OPDDateSearchTerm
				--Set @formattedDate = LOWER(FORMAT(CONVERT(DATE, @formattedDate, 103), 'yyyy-MM-dd'))

				--set @datecondition  = 'and pv.VisitId in (Select VisitId from patient.tblPatientVisits where OPDDate = ''' + @formattedDate + ''')'
				set @datecondition  = 'and pv.VisitId in (Select VisitId from patient.tblPatientVisits where OPDDate = ''' + @OPDDateSearchTerm + ''')'

				set @SearchType = 'FreeSearch'
				print '@datecondition => ' + @datecondition
			end
			--Jeet Chauhan 

			declare @remarkCondition nvarchar(max) = ''
			if(ISNULL(@Remark,'') != '')
			BEGIN
				
				set @remarkCondition = ' and pv.Remark like ''%'+ @Remark +'%'' '
				set @SearchType = 'FreeSearch'
				print @remarkCondition
			END

			declare @FUDateConditions nvarchar(max) = ''
			if(ISNULL(@FUDate,'') != '')
			BEGIN
				
				declare @defaultDateConversion nvarchar(100) = (select LOWER(FORMAT(CONVERT(DATE, @FUDate, 103), 'yyyy-MM-dd')))
				print @defaultDateConversion
				set @FUDateConditions = ' and pv.FollowupDate = ''' + @defaultDateConversion + ''''
				set @SearchType = 'FreeSearch'
				print @FUDateConditions
			END


			declare @finalQuery nvarchar(max) = @RegistrationOrContactQuery + @husbandNameQuery + @FisrtNameQuery + @VillageOrLastNameQuery + @datecondition + @remarkCondition + @FUDateConditions

			print '=============>  start ; '+ @finalQuery + ' ; End'

			--Jeet Chauhan for date condition

			--If ISNULL(@SearchKey,'')!=''
			--If (ISNULL(@SearchKey,'')!='' or ISNULL(@RegistrationOrContactQuery,'')!='' or ISNULL(@VillageOrLastNameQuery,'')!='' or ISNULL(@husbandNameQuery,'')!='')
			print 'search key => ' + @SearchKey
			if(ISNULL(@finalQuery,'') != '')
			Begin
				--SET @WhereQry = @WhereQry + ' AND ' 
				SET @WhereQry = @WhereQry + 
						CASE @SearchType
						When 'PatientId'
						Then 'and p.PatientId = ' + Convert(varchar, @SearchKey) 
						When 'Name'
						Then 'and p.FirstName = ' + Convert(varchar, @SearchKey) 

						when 'OpdDate'
						then ' and cast(OpdDate as date) = ' + @SearchKey
						When 'FreeSearch'
						
						--Jeet Chauhan New Change
						--Then 
						--'(p.FirstName like ''%' + @SearchKey + '%'' 
						--Or p.LastName like ''%' + @SearchKey + '%'' 
						--Or (Concat(p.FirstName, '' '', p.LastName) like ''%' + @SearchKey + '%'') 
						--Or pc.ContatcNo like ''%' + @SearchKey + '%''
						--Or pc.CaseRegNo like ''%' + @SearchKey + '%''
						--Or pc.VillageCity like ''%' + @SearchKey + '%'' 
						--Or pc.Taluka like ''%' + @SearchKey + '%'' 
						--Or pc.District like ''%' + @SearchKey + '%'' 
						--Or pc.State like ''%' + @SearchKey + '%'' 
						--Or pc.PinCode like ''%' + @SearchKey + '%''
						--)'
						Then 
						@finalQuery
						--Jeet Chauhan New Change
						
						--When 'OpdDate'
						----Then ' pv.VisitId in (Select VisitId from patient.tblPatientVisits where OPDDate = ''' + @SearchKey + ''')'
						--Then 'and pv.VisitId in (Select VisitId from patient.tblPatientVisits where OPDDate = ''' + @SearchKey + ''')'
					 End
			End			
			
			
			print @WhereQry	
			
			
			--set @BaseQry = '
			--	With CTE AS (
			--		Select PatientId, Row_Number() Over (Order by SortBy ' + @SortOrder + ') as RowId From
			--		(
			--			Select distinct p.PatientId, ' + @SortBy + ' as SortBy
			--			 FROM patient.tblPatients p with(nolock) 		
			--			 INNER JOIN patient.tblPatientCases pc with (nolock) on p.PatientId=pc.PatientId
			--			 INNER JOIN patient.tblPatientVisits pv with (nolock) on pc.CaseId=pv.CaseId
			--			WHERE ' + @WhereQry + ' 
			--		) A
			--	) Select distinct 
			--	CTE.RowId
			--	, (select Count(RowId) from CTE) as TotalCount
			--	, (select Ceiling(Cast(Count(RowId) as Float)/'+CONVERT(varchar(30),@PageSize)+') from CTE) as PageCount
			--	, p.PatientId, p.HospitalId, pc.FirstName, pc.LastName, pc.DateOfBirth, pc.Age, pc.Gender, pc.IsMarried, pc.ContatcNo, pc.Email
			--	, pc.PrimaryRelation, pc.PrimaryRelativeName, pc.PrimaryRelativeNameSuffix, pc.PrimaryContactNo
			--	, pc.SecondaryRelation, pc.SecondaryRelativeName, pc.SecondaryRelativeNameSuffix, pc.SecondaryContactNo
			--	, pc.LocationRefId, pc.HouseNo, pc.Society, pc.Area, pc.Landmark, pc.VillageCity, pc.Taluka, pc.District, pc.State, pc.PinCode
			--	, p.IsPatientActive, pc.IsEdited, pc.EntryDate, pc.UpdatedDate, pc.CreatedBy, pc.UpdatedBy
			--	, pc.CaseID, pc.CaseRegNo, pv.VisitId, pv.OpdDate, pv.OpdTime
			--	  From CTE 
			--	  INNER JOIN patient.tblPatients p with(nolock) ON CTE.PatientId=p.PatientId
			--	  INNER JOIN patient.tblPatientCases pc with (nolock) on p.PatientId=pc.PatientId
			--	  INNER JOIN patient.tblPatientVisits pv with (nolock) on pc.CaseId=pv.CaseId
			--	  ' + @v_PagingQry + 
			--	  ' Order by RowId	'	
			print @v_PagingQry
			set @BaseQry = '				

				;With CTE AS (
					Select VisitId, CaseId, Row_Number() Over (Order by OpdDateTime Desc) as RowId From
					(
						Select Distinct pv.VisitId, pv.CaseId, OpdDate, OPDTime, (Convert(varchar(20), OpdDate) + '' '' + Convert(varchar(20), OpdTime)) as OpdDateTime
						 FROM patient.tblPatients p with(nolock) 		
						 INNER JOIN patient.tblPatientCases pc with (nolock) on p.PatientId=pc.PatientId
						 INNER JOIN patient.tblPatientVisits pv with (nolock) on pc.CaseId=pv.CaseId
						WHERE 
						
						

						(
							

							'+ case 
							
							when cast(@PageNo as nvarchar(10)) = 1 and (ISNULL(@finalQuery,'') = '') then + ' cast(OpdDate as date) = CAST(GETDATE() as date)' 
								
						     when cast(@PageNo as nvarchar(10)) = 1 and (ISNULL(@finalQuery,'') <> '') then + '1 = 1 ' + @finalQuery 

							 when cast(@PageNo as nvarchar(10)) > 1 and (ISNULL(@finalQuery,'') <> '') then + ' 1 <> 1'   + @finalQuery 

							   else + @WhereQry + ' and cast(OpdDate as date) < CAST(GETDATE() as date)' 
								
								end 
							+'

						)

					) A
				),
				FirstEDD AS (
					SELECT 
						pc.CaseId,
						MIN(vvc.FirstEDDAccordingUSG) AS FirstEDD
					FROM patient.tblPatientCases pc
					INNER JOIN patient.tblPatientVisits vvc WITH (NOLOCK) ON pc.CaseId = vvc.CaseId
					GROUP BY pc.CaseId
				)
				
				
				Select distinct 
				CTE.RowId
				--, (select Count(RowId) from CTE) as TotalCount
				--, (select Ceiling(Cast(Count(RowId) as Float)/'+CONVERT(varchar(30),@PageSize)+') from CTE) as PageCount
				, p.PatientId, IsLatest as LatestCase ,p.HospitalId, pc.FirstName, pc.LastName, pc.DateOfBirth, pc.Age, pc.Gender, pc.IsMarried, pc.ContatcNo, pc.Email
				, pc.PrimaryRelation, pc.PrimaryRelativeName, pc.PrimaryRelativeNameSuffix, pc.PrimaryContactNo
				, pc.SecondaryRelation, pc.SecondaryRelativeName, pc.SecondaryRelativeNameSuffix, pc.SecondaryContactNo
				, pc.LocationRefId, pc.HouseNo, pc.Society, pc.Area, pc.Landmark, pc.VillageCity, pc.Taluka, pc.District, pc.State, pc.PinCode , pc.City
				, p.IsPatientActive, pc.IsEdited, pc.EntryDate, pc.UpdatedDate, pc.CreatedBy, pc.UpdatedBy
				, pc.CaseID, pc.CaseRegNo, pv.VisitId, pv.OpdDate, pv.OpdTime

				

				,CASE 
					WHEN 
						(DATEDIFF(DAY, fe.FirstEDD, GETDATE()) > 30)
						OR mtp.VisitId IS NOT NULL
						OR del.VisitId IS NOT NULL
					THEN 1 ELSE 0
				END AS ISMoreThenNineMonths,

				CASE WHEN usg.VisitId IS NOT NULL THEN 1 ELSE 0 END AS UsgDone,
				CASE WHEN mtp.VisitId IS NOT NULL THEN 1 ELSE 0 END AS MTPDone,
				CASE WHEN del.VisitId IS NOT NULL THEN 1 ELSE 0 END AS Delivery,
				CASE WHEN bill.VisitId IS NOT NULL THEN 1 ELSE 0 END AS BillPaid,
				1 AS ConsultationDone, 
				CASE WHEN ReferralIndications IS NOT NULL THEN 1 ELSE 0 END AS Reffrel,
				CASE WHEN usgr.VisitId IS NOT NULL THEN 1 ELSE 0 END AS UsgReportDone,
				CASE WHEN ovo.VisitId IS NOT NULL THEN 1 ELSE 0 END AS OvulationDone,
				CASE WHEN histo.VisitId IS NOT NULL THEN 1 ELSE 0 END AS HistolapDone,
				CASE WHEN indoor.VisitId IS NOT NULL THEN 1 ELSE 0 END AS IndoorDone,
				CASE WHEN dis.VisitId IS NOT NULL THEN 1 ELSE 0 END AS DischargeDone

				  From CTE 
				 
				 INNER JOIN patient.tblPatientVisits pv with (nolock) on pv.VisitId=CTE.VisitId And pv.CaseId=CTE.CaseId
					INNER JOIN patient.tblPatientCases pc with (nolock) on pv.CaseId=pc.CaseId
				  INNER JOIN patient.tblPatients p with(nolock) ON pc.PatientId=p.PatientId

				  LEFT JOIN FirstEDD fe ON fe.CaseId = pc.CaseId
					LEFT JOIN patient.tblMTP mtp WITH (NOLOCK) ON mtp.VisitId = pv.VisitId
					LEFT JOIN patient.tblDeliveryRecords del WITH (NOLOCK) ON del.VisitId = pv.VisitId
					LEFT JOIN patient.tblUsgDetails usg WITH (NOLOCK) ON usg.VisitId = pv.VisitId
					LEFT JOIN patient.tblBill bill WITH (NOLOCK) ON bill.VisitId = pv.VisitId
					LEFT JOIN patient.tblUsgReports usgr WITH (NOLOCK) ON usgr.VisitId = pv.VisitId
					LEFT JOIN patient.tblOvulationProfile ovo WITH (NOLOCK) ON ovo.VisitId = pv.VisitId
					LEFT JOIN patient.tblHistolap histo WITH (NOLOCK) ON histo.VisitId = pv.VisitId
					LEFT JOIN patient.tblIndoorRecords indoor WITH (NOLOCK) ON indoor.VisitId = pv.VisitId
					LEFT JOIN patient.tblPatientDischarge dis WITH (NOLOCK) ON dis.VisitId = pv.VisitId


				  ' + + 
				  '
				   Where 
				   (
						
						'+ case 
							when cast(@PageNo as nvarchar(10)) = 1 and (ISNULL(@finalQuery,'') = '') then + '1 = 1' 
							-- when cast(@PageNo as nvarchar(10)) > 1 and (ISNULL(@finalQuery,'') <> '') then + '' 
							else + @v_PagingQry  
							end 
						+ '

					)

				  Order by RowId	'
				
		
			print '--@WhereQry' + @WhereQry			
			print '--@BaseQry' + @BaseQry			
			Exec (@BaseQry)
		End

		Else if @SubCommand='GetAllDoneList' 
		Begin
			
			
			;With CTE AS (
					Select VisitId, CaseId, Row_Number() Over (Order by OpdDateTime Desc) as RowId From
					(
						Select Distinct pv.VisitId, pv.CaseId, OpdDate, OPDTime, (Convert(varchar(20), OpdDate) + ' ' + Convert(varchar(20), OpdTime)) as OpdDateTime
						 FROM patient.tblPatients p with(nolock) 		
						 INNER JOIN patient.tblPatientCases pc with (nolock) on p.PatientId=pc.PatientId
						 INNER JOIN patient.tblPatientVisits pv with (nolock) on pc.CaseId=pv.CaseId
						 where VisitId = @VisitId --and p.PatientId = @PatientId and pc.CaseId = @CaseId
					) A
				) Select distinct 
				CTE.RowId
				--, (select Count(RowId) from CTE) as TotalCount
				--, (select Ceiling(Cast(Count(RowId) as Float)/'+CONVERT(varchar(30),@PageSize)+') from CTE) as PageCount
				, p.PatientId, IsLatest as LatestCase ,p.HospitalId, pc.FirstName, pc.LastName, pc.DateOfBirth, pc.Age, pc.Gender, pc.IsMarried, pc.ContatcNo, pc.Email
				, pc.PrimaryRelation, pc.PrimaryRelativeName, pc.PrimaryRelativeNameSuffix, pc.PrimaryContactNo
				, pc.SecondaryRelation, pc.SecondaryRelativeName, pc.SecondaryRelativeNameSuffix, pc.SecondaryContactNo
				, pc.LocationRefId, pc.HouseNo, pc.Society, pc.Area, pc.Landmark, pc.VillageCity
				,pc.City
				,pc.Taluka, pc.District, pc.State, pc.PinCode
				, p.IsPatientActive, pc.IsEdited, pc.EntryDate, pc.UpdatedDate, pc.CreatedBy, pc.UpdatedBy
				, pc.CaseID, pc.CaseRegNo, pv.VisitId, pv.OpdDate, pv.OpdTime
				, Case When Exists (select CaseId from patient.tblUsgDetails where VisitId = pv.VisitId) Then 1 Else 0 End UsgDone
				, Case When Exists (select CaseId from patient.tblMTP where VisitId = pv.VisitId) Then 1 Else 0 End MTPDone
				, Case When Exists (select CaseId from patient.tblDeliveryRecords where VisitId = pv.VisitId) Then 1 Else 0 End Delivery
				, Case When Exists (select CaseId from patient.tblBill where VisitId = pv.VisitId) Then 1 Else 0 End BillPaid

				, Case When Exists (select CaseId from patient.tblPatientVisits where VisitId = pv.VisitId) Then 1 Else 0 End ConsultationDone
				, Case When ReferralIndications is not null Then 1 Else 0 End Reffrel
				, Case When Exists (select CaseId from patient.tblUsgReports where VisitId = pv.VisitId) Then 1 Else 0 End UsgReportDone
				, Case When Exists (select CaseId from patient.tblOvulationProfile where VisitId = pv.VisitId) Then 1 Else 0 End OvulationDone
				, Case When Exists (select CaseId from patient.tblHistolap where VisitId = pv.VisitId) Then 1 Else 0 End HistolapDone
				, Case When Exists (select CaseId from patient.tblIndoorRecords where VisitId = pv.VisitId) Then 1 Else 0 End IndoorDone
				, Case When Exists (select CaseId from patient.tblPatientDischarge where VisitId = pv.VisitId) Then 1 Else 0 End DischargeDone

				  From CTE 
				 INNER JOIN patient.tblPatientVisits pv with (nolock) on pv.VisitId=CTE.VisitId And pv.CaseId=CTE.CaseId
					INNER JOIN patient.tblPatientCases pc with (nolock) on pv.CaseId=pc.CaseId
				  INNER JOIN patient.tblPatients p with(nolock) ON pc.PatientId=p.PatientId
				  

		End

       
    END 
     
    ELSE IF @Command='DELETE' 
    BEGIN 

	
    
	  
	  -- Jeet Chauhan For Delete Patient
	IF @SubCommand = 'DeleteMultiple'
	BEGIN
		IF EXISTS (select PatientId from patient.tblPatients where PatientId = @patientId)
		BEGIN	
			--IF EXISTS (select * from patient.tblPatientCases where  CaseId = @CaseId)
			--BEGIN
			--	--select 'tblPatientCases'
			--	--select * from patient.tblPatientCases where  CaseId = @CaseId
			--	delete from patient.tblPatientCases where  CaseId = @CaseId
			--END

			--IF EXISTS ( select VisitId from patient.tblPatientVisits where VisitId = @visitId )
			--BEGIN
			--	--select 'tblPatientVisits'
			--	delete from patient.tblPatientVisits where VisitId = @visitId 
			--END

			--IF EXISTS ( select InvestigationId from patient.tblInvestigation where VisitId = @visitId )
			--BEGIN
			--	--select 'tblInvestigation'
			--	delete from patient.tblInvestigation where VisitId = @visitId
			--END

			--------------------------------------------------------
	
			if exists (select top 1 UsgId from patient.tblUsgDetails where VisitId = @visitId)
			BEGIN
				--select 'tblUsgDetails'
				--select top 1 * from patient.tblUsgDetails where VisitId = @visitId
				delete from patient.tblUsgDetails where VisitId = @visitId
			END

			if exists (select top 1 ReportId from patient.tblUsgReports where VisitId = @visitId)
			BEGIN
				--select top 1 * from patient.tblUsgReports where VisitId = @visitId
				--select 'tblUsgReports'
				delete from patient.tblUsgReports where VisitId = @visitId
			END

			if exists (select top 1 ProfileId from patient.tblOvulationProfile   where VisitId = @visitId)
			BEGIN
				--select 'tblOvulationProfile'
				delete from patient.tblOvulationProfile   where VisitId = @visitId
			END

			if exists (select top 1 MTPId from patient.tblMTP   where VisitId = @visitId)
			BEGIN
				--select 'tblMTP'
				delete from patient.tblMTP   where VisitId = @visitId
			END

			if exists (select top 1 DeliveryId from patient.tblDeliveryRecords   where VisitId = @visitId)
			BEGIN
				--select 'tblDeliveryRecords'
				delete from patient.tblDeliveryRecords   where VisitId = @visitId
			END

			if exists (select top 1 IndoorRecordId from patient.tblIndoorRecords   where VisitId = @visitId)
			BEGIN
				--select 'tblIndoorRecords'
				delete from patient.tblIndoorRecords   where VisitId = @visitId
			END

			if exists (select top 1 BillId from patient.tblBill   where VisitId = @visitId)
			BEGIN
				--select 'tblBill'
				delete from patient.tblBill   where VisitId = @visitId
			END

			if exists (select top 1 VoucherId from patient.tblBillVoucher   where VisitId = @visitId)
			BEGIN
				--select 'tblBillVoucher'
				delete from patient.tblBillVoucher   where VisitId = @visitId
			END

			if exists (select top 1 DischargeId from patient.tblPatientDischarge   where VisitId = @visitId)
			BEGIN
				--select 'tblPatientDischarge'
				delete from patient.tblPatientDischarge   where VisitId = @visitId
			END

			--------------------------------------------------------

		END

		IF @isMainDelete = 1 
		BEGIN

			--IF EXISTS (select * from patient.tblPatientCases where  CaseId = @CaseId)
			--BEGIN
			--	--select 'tblPatientCases'
			--	--select * from patient.tblPatientCases where  CaseId = @CaseId
			--	delete from patient.tblPatientCases where  CaseId = @CaseId
			--END

			--IF EXISTS ( select VisitId from patient.tblPatientVisits where VisitId = @visitId )
			--BEGIN
			--	--select 'tblPatientVisits'
			--	delete from patient.tblPatientVisits where VisitId = @visitId 
			--END

			--IF EXISTS ( select InvestigationId from patient.tblInvestigation where VisitId = @visitId )
			--BEGIN
			--	--select 'tblInvestigation'
			--	delete from patient.tblInvestigation where VisitId = @visitId
			--END

			--	--select 'selected --1'
			--	delete patient.tblPatients where PatientId = @visitId

			---
			--IF EXISTS ( select PatientId from patient.tblPatients where PatientId = @PatientId )
			--begin
			--	delete from patient.tblPatients where PatientId = @PatientId
			--end

			----
			--IF EXISTS ( select PatientId from patient.tblPatientCases where PatientId = @PatientId )
			--begin
			--	delete from patient.tblPatientCases where PatientId = @PatientId
			--end

			----
			IF EXISTS ( select PatientId from patient.tblPatientVisits where VisitId = @VisitId)
			begin
			
			declare @PriviousVisitIdToMakeLatest bigint = 0;

					;WITH cte AS (
						SELECT 
						VisitId,
							IsLatestVisit,
							EntryDate,
							ROW_NUMBER() OVER (PARTITION BY PatientId ORDER BY EntryDate DESC) AS RowNum
						FROM patient.tblPatientVisits
						WHERE PatientId = @PatientId
					)
					SELECT @PriviousVisitIdToMakeLatest = VisitId
					FROM cte
					where RowNum = 2

				update patient.tblPatientVisits set IsLatestVisit = 1 where VisitId = @PriviousVisitIdToMakeLatest

				delete from patient.tblPatientVisits where VisitId = @VisitId
			end

			----------------------------------
			IF EXISTS ( select PatientId from patient.tblInvestigation where VisitId = @VisitId )
			begin
				delete from patient.tblInvestigation where VisitId = @VisitId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblUsgDetails where VisitId = @VisitId )
			begin
				delete from patient.tblUsgDetails where VisitId = @VisitId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblUsgReports where VisitId = @VisitId )
			begin
				delete from patient.tblUsgReports where VisitId = @VisitId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblOvulationProfile where VisitId = @VisitId )
			begin
				delete from patient.tblOvulationProfile where VisitId = @VisitId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblMTP where VisitId = @VisitId )
			begin
				delete from patient.tblMTP where VisitId = @VisitId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblHistolap where VisitId = @VisitId )
			begin
				delete from patient.tblHistolap where VisitId = @VisitId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblDeliveryRecords where VisitId = @VisitId )
			begin
				delete from patient.tblDeliveryRecords where VisitId = @VisitId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblIndoorRecords where VisitId = @VisitId )
			begin
				delete from patient.tblIndoorRecords where VisitId = @VisitId
			end
			
			------------------------------------
			IF EXISTS ( select PatientId from patient.tblBill where VisitId = @VisitId )
			begin
				delete from patient.tblBill where VisitId = @VisitId
			end
			
			------------------------------------
			IF EXISTS ( select PatientId from patient.tblBillVoucher where VisitId = @VisitId )
			begin
				delete from patient.tblBillVoucher where VisitId = @VisitId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblPatientDischarge where VisitId = @VisitId )
			begin
				delete from patient.tblPatientDischarge where VisitId = @VisitId
			end
		END
	END
	
	----------------------------Jeet Chauhan selected Delete Satrt--------------------------------------------
	IF @SubCommand = 'DeleteSelected'
	BEGIN
			declare @table  table (visitid bigint)
			insert into @table
			select cast(value as bigint) visitId from string_split(@visitidsDeleteSelected, ',')

			--select * from @table

			--select ROW_NUMBER() OVER (ORDER BY PatientId desc) AS RowId, PatientId, VisitId
			select ROW_NUMBER() OVER (ORDER BY PatientId desc) AS RowId,
			PatientId, STRING_AGG( cast(VisitId as nvarchar(max)),',') as VisitIds, CaseId
			INTO #TempPatientVisits
			from patient.tblPatientVisits where VisitId in (SELECT VisitId  FROM @table)
			group by PatientId,CaseId

			--SELECT * FROM #TempPatientVisits;

			DECLARE @TotalRows INT;
			SELECT @TotalRows = COUNT(*) FROM #TempPatientVisits;
			--select @TotalRows

			DECLARE @RowId INT = 1;
			WHILE @RowId <= @TotalRows
			BEGIN
			DECLARE @P_atientId INT, @V_isitId nvarchar(max), @C_CaseId bigint;

			select @P_atientId = PatientId,@V_isitId= VisitIds, @C_CaseId =CaseId  from #TempPatientVisits where RowId = @RowId

			--select cast(@RowId as nvarchar(max)) + '_asdfas111111'
			--select @V_isitId
			--select @P_atientId

			declare @frompatientid bigint = @P_atientId
			declare @fromvisitids nvarchar(max) = @V_isitId
			declare @tblfrom table (ids bigint) 

			insert into @tblfrom(ids)
			select value from string_split(@fromvisitids,',')
		
			--select cast(@RowId as nvarchar(max)) + '_asdfas'
			--select * from @tblfrom


			--declare @t1 table (ids bigint)

			--select VisitId from patient.tblPatientVisits 
			--where PatientId in (@frompatientid) 

			--select VisitId,EntryDate from patient.tblPatientVisits 
			--where PatientId in (@frompatientid) and VisitId not in (select ids from @tblfrom)

			declare @updatedVisitId bigint = 0;

			;WITH cte AS (
				SELECT 
				VisitId,
					IsLatestVisit,
					EntryDate,
					ROW_NUMBER() OVER (PARTITION BY PatientId ORDER BY EntryDate DESC) AS RowNum
				FROM patient.tblPatientVisits
				WHERE PatientId = @frompatientid
				and VisitId in (select VisitId from patient.tblPatientVisits 
				where PatientId in (@frompatientid) and VisitId not in (select ids from @tblfrom))
				--and VisitId not in (885)
			)
			SELECT  @updatedVisitId= VisitId
			FROM cte
			WHERE RowNum = 1;


			declare @caseIdToUpdate bigint = 0 ;
			;WITH cte AS (
				SELECT 
				CaseId,
					IsLatest,
					EntryDate,
					ROW_NUMBER() OVER (PARTITION BY PatientId ORDER BY EntryDate DESC) AS RowNum
				FROM patient.tblPatientCases
				WHERE PatientId = @frompatientid
				and CaseId in (select CaseId from patient.tblPatientCases 
				where PatientId in (@frompatientid) 
				and CaseId not in (@C_CaseId))
				--and VisitId not in (885)
			)
			SELECT @caseIdToUpdate = CaseId
			FROM cte
			WHERE RowNum = 1;



			--select * from patient.tblPatientVisits where PatientId = @P_atientId and VisitId = @updatedVisitId4

			if (@updatedVisitId <> 0 )
			BEGIN
				update patient.tblPatientVisits set IsLatestVisit = 1 where PatientId = @frompatientid and VisitId in (@updatedVisitId)

				
			END
		   
		   IF (@caseIdToUpdate <> 0)
			BEGIN
				--delete from patient.tblPatientCases where PatientId = @frompatientid and CaseId = @C_CaseId
				update patient.tblPatientCases set IsLatest = 1 where PatientId = @frompatientid and CaseId in (@caseIdToUpdate)
			END

			

			--delete from patient.tblPatientCases where PatientId = @frompatientid and CaseId = @C_CaseId

			delete from patient.tblPatientVisits 
			where PatientId = @frompatientid and VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId

					----------------------------------
			IF EXISTS ( select PatientId from patient.tblInvestigation where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblInvestigation where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblUsgDetails where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblUsgDetails where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblUsgReports where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblUsgReports where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblOvulationProfile where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblOvulationProfile where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblMTP where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblMTP where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblHistolap where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblHistolap where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblDeliveryRecords where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblDeliveryRecords where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end	

			------------------------------------
			IF EXISTS ( select PatientId from patient.tblIndoorRecords where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblIndoorRecords where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end
			--------------------------------------
			IF EXISTS ( select PatientId from patient.tbl_IndoorRoundRecords where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tbl_IndoorRoundRecords where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end

			
			------------------------------------
			IF EXISTS ( select PatientId from patient.tblBill where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblBill where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end
			
			------------------------------------
			IF EXISTS ( select PatientId from patient.tblBillVoucher where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblBillVoucher where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end
			
			------------------------------------
			IF EXISTS ( select PatientId from patient.tblPatientDischarge where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId)
			begin
				delete from patient.tblPatientDischarge where VisitId in (select ids from @tblfrom) and CaseId = @C_CaseId
			end

			delete from @table

				SET @RowId = @RowId + 1;
			END;

	END
	----------------------------Jeet Chauhan selected Delete Satrt--------------------------------------------

	 -- Jeet Chauhan For Delete Patient


		IF @@ERROR=0
		Begin               
			SELECT @v_IsSuccess=1, @v_Identity = @PatientId, @v_Message='success'
		End
		Else
		Begin
			SELECT @v_IsSuccess=0, @v_Identity = 0, @v_Message=ERROR_MESSAGE()
		End
             
		SELECT @v_IsSuccess AS IsSuccess, @v_IsSuccess as IdentityValue, @v_Message as ProcessMessage
    
    END 

   SET NOCOUNT OFF; 

  END  
 



