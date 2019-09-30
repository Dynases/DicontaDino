USE [BDDiconDinoEco]
GO

/****** Object:  Table [dbo].[DetallePlantilla]    Script Date: 24/09/2019 15:13:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DetallePlantilla](
	[Id] [int] NOT NULL,
	[PlantillaId] [int] NULL,
	[CuentaId] [int] NULL,
	[Porcentaje] [decimal](18, 2) NULL,
	[Debe] [int] NULL,
	[Haber] [int] NULL,
 CONSTRAINT [PK_DetallePlantilla] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DetallePlantilla]  WITH CHECK ADD FOREIGN KEY([PlantillaId])
REFERENCES [dbo].[Plantilla] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO


