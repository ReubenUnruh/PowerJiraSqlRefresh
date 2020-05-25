CREATE TABLE [dbo].[tbl_Jira_Issue_Type]
(
[Issue_Type_Id] [int] NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Icon_Url] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Subtask_Type] [bit] NOT NULL,
[Update_Refresh_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Jira_Issue_Type] ADD CONSTRAINT [PK_tbl_Jira_Issue_Type] PRIMARY KEY CLUSTERED  ([Issue_Type_Id]) ON [PRIMARY]
GO
