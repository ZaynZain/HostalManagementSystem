USE [HostalManagementSystem]
GO

/****** Object:  Table [dbo].[hms_payments]    Script Date: 24-May-26 11:24:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hms_payments](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[booking_id] [int] NULL,
	[payment_date] [date] NULL,
	[amount] [decimal](10, 2) NULL,
	[payment_method] [varchar](50) NULL,
	[payment_status] [varchar](50) NULL,
	[month]  AS (datename(month,[payment_date])),
	[year]  AS (datepart(year,[payment_date])),
	[payment_reference] [varchar](100) NULL,
	[created_by_staff_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

