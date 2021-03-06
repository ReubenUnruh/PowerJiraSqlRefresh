﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO
BEGIN TRANSACTION

PRINT(N'Drop constraints from [dbo].[tbl_lk_Jira_Refresh_Status]')
ALTER TABLE [dbo].[tbl_lk_Jira_Refresh_Status] NOCHECK CONSTRAINT [FK_tbl_lk_Jira_Refresh_Status_tbl_lk_Jira_Refresh_Status]

PRINT(N'Drop constraint FK_tbl_Jira_Refresh_tbl_lk_Jira_Refresh_Status from [dbo].[tbl_Jira_Refresh]')
ALTER TABLE [dbo].[tbl_Jira_Refresh] NOCHECK CONSTRAINT [FK_tbl_Jira_Refresh_tbl_lk_Jira_Refresh_Status]

PRINT(N'Add rows to [dbo].[tbl_lk_Jira_Refresh_Status]')
INSERT INTO [dbo].[tbl_lk_Jira_Refresh_Status] ([Refresh_Status_Code], [Refresh_Status]) VALUES (' ', 'Unset')
INSERT INTO [dbo].[tbl_lk_Jira_Refresh_Status] ([Refresh_Status_Code], [Refresh_Status]) VALUES ('A', 'Aborted')
INSERT INTO [dbo].[tbl_lk_Jira_Refresh_Status] ([Refresh_Status_Code], [Refresh_Status]) VALUES ('C', 'Completed')
INSERT INTO [dbo].[tbl_lk_Jira_Refresh_Status] ([Refresh_Status_Code], [Refresh_Status]) VALUES ('S', 'Started')
PRINT(N'Operation applied to 4 rows out of 4')

PRINT(N'Add rows to [dbo].[tbl_lk_Jira_Refresh_Type]')
INSERT INTO [dbo].[tbl_lk_Jira_Refresh_Type] ([Refresh_Type_Code], [Refresh_Type]) VALUES (' ', 'Unset')
INSERT INTO [dbo].[tbl_lk_Jira_Refresh_Type] ([Refresh_Type_Code], [Refresh_Type]) VALUES ('D', 'Differential')
INSERT INTO [dbo].[tbl_lk_Jira_Refresh_Type] ([Refresh_Type_Code], [Refresh_Type]) VALUES ('F', 'Full')
PRINT(N'Operation applied to 3 rows out of 3')

PRINT(N'Add constraints to [dbo].[tbl_lk_Jira_Refresh_Status]')
ALTER TABLE [dbo].[tbl_lk_Jira_Refresh_Status] WITH CHECK CHECK CONSTRAINT [FK_tbl_lk_Jira_Refresh_Status_tbl_lk_Jira_Refresh_Status]
ALTER TABLE [dbo].[tbl_Jira_Refresh] WITH CHECK CHECK CONSTRAINT [FK_tbl_Jira_Refresh_tbl_lk_Jira_Refresh_Status]
COMMIT TRANSACTION
GO
