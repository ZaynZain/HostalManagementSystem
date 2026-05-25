USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_staff]    Script Date: 24-May-26 11:25:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_staff](
	[staff_id] [int] IDENTITY(1,1) NOT NULL,
	[staff_name] [varchar](255) NOT NULL,
	[role] [varchar](50) NOT NULL,
	[phone_number] [varchar](20) NULL,
	[email] [varchar](255) NULL,
	[salary] [decimal](18, 2) NULL,
	[joining_date] [date] NULL,
	[status] [varchar](20) NULL,
	[address] [varchar](255) NULL,
	[national_id] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

