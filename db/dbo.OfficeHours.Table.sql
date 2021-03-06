USE [Advising]
GO
/****** Object:  Table [dbo].[OfficeHours]    Script Date: 1/28/2019 10:08:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeHours](
	[officeHoursId] [int] IDENTITY(1,1) NOT NULL,
	[officeId] [int] NOT NULL,
	[startTime] [smalldatetime] NOT NULL,
	[studentId] [int] NULL,
	[advisorId] [int] NOT NULL,
	[note] [nchar](256) NULL,
 CONSTRAINT [PK_OfficeHours] PRIMARY KEY CLUSTERED 
(
	[officeHoursId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OfficeHours]  WITH CHECK ADD  CONSTRAINT [FK_OfficeHours_Advisor] FOREIGN KEY([advisorId])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[OfficeHours] CHECK CONSTRAINT [FK_OfficeHours_Advisor]
GO
ALTER TABLE [dbo].[OfficeHours]  WITH CHECK ADD  CONSTRAINT [FK_OfficeHours_Office] FOREIGN KEY([officeId])
REFERENCES [dbo].[Office] ([officeId])
GO
ALTER TABLE [dbo].[OfficeHours] CHECK CONSTRAINT [FK_OfficeHours_Office]
GO
ALTER TABLE [dbo].[OfficeHours]  WITH CHECK ADD  CONSTRAINT [FK_OfficeHours_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[OfficeHours] CHECK CONSTRAINT [FK_OfficeHours_Student]
GO
