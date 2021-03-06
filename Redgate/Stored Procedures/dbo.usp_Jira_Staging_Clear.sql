SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


-- =============================================
-- Author:		Justin Mead
-- Create date: 2019-09-13
-- Description:	Clears the Jira staging tables
-- =============================================

CREATE PROCEDURE [dbo].[usp_Jira_Staging_Clear]
AS
BEGIN
	SET NOCOUNT ON;

    TRUNCATE TABLE [dbo].[tbl_stg_Jira_Changelog]
    TRUNCATE TABLE [dbo].[tbl_stg_Jira_Component]
    TRUNCATE TABLE [dbo].[tbl_stg_Jira_Deployment]
    TRUNCATE TABLE [dbo].[tbl_stg_Jira_Deployment_Environment]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Issue]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Issue_All_Id]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Issue_Component]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Issue_Deployment]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Issue_Fix_Version]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Issue_Label]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Issue_Link]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Issue_Link_Type]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Issue_Sprint]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Issue_Type]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Priority]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Project]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Project_Category]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Resolution]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Sprint]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Status]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Status_Category]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_User]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Version]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Worklog]
	TRUNCATE TABLE [dbo].[tbl_stg_Jira_Worklog_Delete]

END


GO
GRANT EXECUTE ON  [dbo].[usp_Jira_Staging_Clear] TO [JiraRefreshRole]
GO
