USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_room_types]    Script Date: 24-May-26 11:24:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_room_types](
	[room_type_id] [int] IDENTITY(1,1) NOT NULL,
	[room_type] [varchar](20) NULL,
	[price] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[room_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

