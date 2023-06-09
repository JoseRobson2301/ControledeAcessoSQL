USE [ControledeAcesso]
GO
/****** Object:  Table [dbo].[permissaousuario]    Script Date: 01/06/2023 15:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[permissaousuario](
	[per_id] [int] NOT NULL,
	[usu_id] [int] NOT NULL,
	[per_nomefm] [varchar](80) NOT NULL,
	[per_descricao] [varchar](100) NOT NULL,
	[per_bloqueado] [varchar](5) NOT NULL,
	[per_inserir] [varchar](5) NOT NULL,
	[per_alterar] [varchar](5) NOT NULL,
	[per_excluir] [varchar](5) NOT NULL,
	[per_omprimir] [varchar](5) NOT NULL,
 CONSTRAINT [PK_permissaousuario] PRIMARY KEY CLUSTERED 
(
	[per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usario]    Script Date: 01/06/2023 15:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usario](
	[usu_id] [int] NOT NULL,
	[usu_nom] [varchar](150) NOT NULL,
	[usu_login] [varchar](90) NOT NULL,
	[usu_grupo] [varchar](90) NOT NULL,
	[usu_senha] [varchar](300) NOT NULL,
 CONSTRAINT [PK_usario] PRIMARY KEY CLUSTERED 
(
	[usu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[permissaousuario]  WITH CHECK ADD  CONSTRAINT [FK_permissaousuario_usario1] FOREIGN KEY([usu_id])
REFERENCES [dbo].[usario] ([usu_id])
GO
ALTER TABLE [dbo].[permissaousuario] CHECK CONSTRAINT [FK_permissaousuario_usario1]
GO
