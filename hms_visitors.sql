USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_visitors]    Script Date: 24-May-26 11:26:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_visitors](
	[visitor_id] [int] IDENTITY(1,1) NOT NULL,
	[visitor_name] [varchar](255) NOT NULL,
	[student_id] [int] NULL,
	[phone_number] [varchar](20) NULL,
	[visit_date] [date] NOT NULL,
	[check_in_time] [time](7) NOT NULL,
	[check_out_time] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[visitor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

