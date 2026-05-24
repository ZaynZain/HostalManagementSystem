USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_maintenance]    Script Date: 24-May-26 11:24:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_maintenance](
	[maintenance_id] [int] IDENTITY(1,1) NOT NULL,
	[room_id] [int] NULL,
	[staff_id] [int] NULL,
	[issue_description] [varchar](255) NULL,
	[report_date] [date] NULL,
	[status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maintenance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

