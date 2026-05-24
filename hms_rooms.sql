USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_rooms]    Script Date: 24-May-26 11:25:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_rooms](
	[room_id] [int] IDENTITY(1,1) NOT NULL,
	[room_number] [varchar](10) NOT NULL,
	[floor_number] [int] NULL,
	[room_type] [varchar](20) NULL,
	[capacity] [int] NULL,
	[price_per_night] [decimal](10, 2) NULL,
	[status] [varchar](20) NULL,
	[description] [varchar](255) NULL,
	[created_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_room_number] UNIQUE NONCLUSTERED 
(
	[room_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

