USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_expenses]    Script Date: 24-May-26 11:23:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_expenses](
	[expense_id] [int] IDENTITY(1,1) NOT NULL,
	[expense_type] [varchar](255) NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
	[expense_date] [date] NOT NULL,
	[description] [varchar](255) NULL,
	[staff_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[expense_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[hms_expenses]  WITH CHECK ADD FOREIGN KEY([staff_id])
REFERENCES [dbo].[hms_staff] ([staff_id])
GO

