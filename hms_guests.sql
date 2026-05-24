USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_guests]    Script Date: 24-May-26 11:23:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_guests](
	[guest_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[gender] [varchar](255) NOT NULL,
	[date_of_birth] [varchar](255) NOT NULL,
	[phone_number] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[national_id] [varchar](255) NOT NULL,
	[address] [varchar](255) NOT NULL,
	[registration_date] [varchar](255) NOT NULL,
	[created_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[guest_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_national_id] UNIQUE NONCLUSTERED 
(
	[national_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[hms_guests] ADD  DEFAULT (getdate()) FOR [created_date]
GO

