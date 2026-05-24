USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_guest_services]    Script Date: 24-May-26 11:23:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_guest_services](
	[guest_service_id] [int] IDENTITY(1,1) NOT NULL,
	[guest_id] [int] NULL,
	[service_id] [int] NULL,
	[service_date] [date] NULL,
	[quantity] [int] NULL,
	[total_price] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[guest_service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[hms_guest_services]  WITH CHECK ADD FOREIGN KEY([guest_id])
REFERENCES [dbo].[hms_guests] ([guest_id])
GO

ALTER TABLE [dbo].[hms_guest_services]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[hms_services] ([service_id])
GO

