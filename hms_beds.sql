USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_beds]    Script Date: 24-May-26 11:17:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_beds](
	[bed_id] [int] IDENTITY(1,1) NOT NULL,
	[room_id] [int] NOT NULL,
	[BedNumber] [int] NOT NULL,
	[Status] [varchar](20) NULL,
	[created_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[bed_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[hms_beds]  WITH CHECK ADD FOREIGN KEY([room_id])
REFERENCES [dbo].[hms_rooms] ([room_id])
GO

