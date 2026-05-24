USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_booking_history]    Script Date: 24-May-26 11:21:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_booking_history](
	[history_id] [int] IDENTITY(1,1) NOT NULL,
	[booking_id] [int] NOT NULL,
	[old_status] [varchar](20) NULL,
	[new_status] [varchar](20) NULL,
	[changed_date] [date] NULL,
	[changed_by] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[history_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[hms_booking_history]  WITH CHECK ADD  CONSTRAINT [fk_booking_history_booking] FOREIGN KEY([booking_id])
REFERENCES [dbo].[hms_bookings] ([booking_id])
GO

ALTER TABLE [dbo].[hms_booking_history] CHECK CONSTRAINT [fk_booking_history_booking]
GO

