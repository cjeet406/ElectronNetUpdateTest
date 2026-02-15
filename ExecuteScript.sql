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
