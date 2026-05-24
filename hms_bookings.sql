USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_bookings]    Script Date: 24-May-26 11:22:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_bookings](
	[booking_id] [int] IDENTITY(1,1) NOT NULL,
	[guest_id] [int] NULL,
	[room_id] [int] NULL,
	[bed_id] [int] NULL,
	[check_in_date] [date] NULL,
	[check_out_date] [date] NULL,
	[booking_date] [date] NULL,
	[booking_status] [varchar](20) NULL,
	[created_by_staff_id] [int] NULL,
	[total_amount] [decimal](10, 2) NULL,
	[notes] [varchar](255) NULL,
	[actual_check_in] [datetime] NULL,
	[actual_check_out] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[hms_bookings] ADD  DEFAULT (getdate()) FOR [booking_date]
GO

ALTER TABLE [dbo].[hms_bookings]  WITH CHECK ADD FOREIGN KEY([bed_id])
REFERENCES [dbo].[hms_beds] ([bed_id])
GO

ALTER TABLE [dbo].[hms_bookings]  WITH CHECK ADD FOREIGN KEY([guest_id])
REFERENCES [dbo].[hms_guests] ([guest_id])
GO

ALTER TABLE [dbo].[hms_bookings]  WITH CHECK ADD FOREIGN KEY([room_id])
REFERENCES [dbo].[hms_rooms] ([room_id])
GO

ALTER TABLE [dbo].[hms_bookings]  WITH CHECK ADD CHECK  (([booking_status]='cancelled' OR [booking_status]='completed' OR [booking_status]='checkedin' OR [booking_status]='reserved'))
GO

