/****** Object:  Database [BD_IGI]    Script Date: 26/06/2024 22:00:54 ******/
CREATE DATABASE [BD_IGI]
GO
USE [BD_IGI]
GO
/****** Object:  Table [dbo].[tblActivoClasificada]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoClasificada](
	[iIdActivo] [bigint] NOT NULL,
	[sFundamentoN] [varchar](250) NOT NULL,
	[sFundamentoJ] [varchar](250) NOT NULL,
	[iIdClasifica] [smallint] NOT NULL,
	[sDuración] [varchar](100) NOT NULL,
	[dFechaCalifica] [date] NOT NULL,
	[iIdTipoDocRes] [smallint] NOT NULL,
	[sNumDocRes] [varchar](10) NOT NULL,
	[sNumTPRes] [varchar](20) NOT NULL,
	[dFechaExpTP] [date] NOT NULL,
	[sNombreResp] [varchar](100) NOT NULL,
	[sCargoResp] [varchar](100) NOT NULL,
	[sObservacionesClas] [varchar](500) NULL,
	[dFechaRegistro] [datetime] NOT NULL,
	[dFechaActualiza] [datetime] NOT NULL,
	[sIdenUsuario] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoDepResProd]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoDepResProd](
	[iIdActivo] [bigint] NOT NULL,
	[iIdMaestro] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoEspecificacion]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoEspecificacion](
	[iIdActivo] [bigint] NOT NULL,
	[iIdMaestro] [smallint] NOT NULL,
	[sTipo] [varchar](11) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoFormato]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoFormato](
	[iIdActivo] [bigint] NOT NULL,
	[iIdMaestro] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoInfo]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoInfo](
	[iIdActivo] [bigint] IDENTITY(1,1) NOT NULL,
	[iIdSubserieTRD] [smallint] NOT NULL,
	[sNombreActivo] [varchar](200) NOT NULL,
	[sDescripcionActivo] [varchar](1300) NOT NULL,
	[iIdProtegidaDA] [smallint] NOT NULL,
	[sNumNormaDA] [varchar](80) NULL,
	[sFechaNormaDA] [varchar](80) NULL,
	[sArticulosNormaDA] [varchar](80) NULL,
	[iIdDepPublicoDA] [smallint] NULL,
	[iIdLicenciadoDA] [smallint] NULL,
	[iIdTipoLicUsoDA] [smallint] NULL,
	[sObservacionesDA] [varchar](500) NULL,
	[iIdTipoInfo] [smallint] NOT NULL,
	[sJustificaCategorias] [varchar](250) NULL,
	[iIdInfoObligatoria] [smallint] NULL,
	[sNumeroNorma] [varchar](80) NULL,
	[sFechaNorma] [varchar](80) NULL,
	[sArticulosNorma] [varchar](80) NULL,
	[iIdDepRespInfo] [smallint] NOT NULL,
	[sOtrasDepRespProd] [varchar](300) NULL,
	[sIdiomas] [varchar](50) NOT NULL,
	[iIdSoporte] [smallint] NOT NULL,
	[dFechaGeneracion] [date] NOT NULL,
	[sPeriodo] [varchar](30) NOT NULL,
	[iIdFrecuencia] [smallint] NOT NULL,
	[iIdFormaAcceso] [smallint] NOT NULL,
	[iIdUbicacion] [smallint] NULL,
	[iIdMedioConservaF] [smallint] NULL,
	[iIdTieneCosto] [smallint] NULL,
	[fCosto] [float] NULL,
	[sObservaciones] [varchar](500) NULL,
	[sEstado] [varchar](14) NULL,
 CONSTRAINT [PK_tblActivoInfo] PRIMARY KEY CLUSTERED 
(
	[iIdActivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoInfoHist]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoInfoHist](
	[iIdActivo] [bigint] NOT NULL,
	[sSerie] [varchar](100) NULL,
	[sSubserie] [varchar](200) NULL,
	[sNombreActivo] [varchar](200) NOT NULL,
	[sDescripcionActivo] [varchar](1300) NOT NULL,
	[sProtegidaDA] [varchar](10) NOT NULL,
	[sTiposNormasDA] [varchar](500) NULL,
	[sNumNormaDA] [varchar](80) NULL,
	[sFechaNormaDA] [varchar](80) NULL,
	[sArticulosNormaDA] [varchar](80) NULL,
	[sDepPublicoDA] [varchar](10) NOT NULL,
	[sLicenciadoDA] [varchar](10) NULL,
	[sTipoLicUsoDA] [varchar](50) NULL,
	[sObservacionesDA] [varchar](500) NULL,
	[sTipoInfo] [varchar](30) NOT NULL,
	[sMenu] [varchar](40) NULL,
	[sCategoria] [varchar](200) NULL,
	[sSubCategoria] [varchar](500) NULL,
	[sJustificaCategorias] [varchar](250) NULL,
	[sInfoObligatoria] [varchar](10) NOT NULL,
	[sTiposNormas] [varchar](500) NULL,
	[sNumeroNorma] [varchar](80) NULL,
	[sFechaNorma] [varchar](80) NULL,
	[sArticulosNorma] [varchar](80) NULL,
	[sJustificacionIncluir] [varchar](250) NULL,
	[sDepResProdInfo] [varchar](500) NULL,
	[sDepResInfo] [varchar](70) NULL,
	[sOtrasDepRespProd] [varchar](300) NULL,
	[sIdiomas] [varchar](50) NOT NULL,
	[sSoporte] [varchar](20) NOT NULL,
	[sFormato] [varchar](300) NULL,
	[dFechaGeneracion] [date] NOT NULL,
	[sPeriodo] [varchar](30) NOT NULL,
	[sFrecuencia] [varchar](20) NOT NULL,
	[sFormaAcceso] [varchar](30) NOT NULL,
	[sUbicacion] [varchar](40) NULL,
	[sMedioConservaF] [varchar](20) NULL,
	[sMedioConservaA] [varchar](200) NULL,
	[sNombreNum1] [varchar](100) NULL,
	[sRuta1] [varchar](200) NULL,
	[sNombreNum2] [varchar](100) NULL,
	[sRuta2] [varchar](200) NULL,
	[sNombreNum3] [varchar](100) NULL,
	[sPais3] [varchar](100) NULL,
	[sRuta3] [varchar](200) NULL,
	[sNombreNum4] [varchar](100) NULL,
	[sPais4] [varchar](100) NULL,
	[sRuta4] [varchar](200) NULL,
	[sNombreNum5] [varchar](100) NULL,
	[sPais5] [varchar](100) NULL,
	[sRuta5] [varchar](200) NULL,
	[sNombreNum6] [varchar](100) NULL,
	[sRuta6] [varchar](200) NULL,
	[sOtro7] [varchar](100) NULL,
	[sNombreNum7] [varchar](100) NULL,
	[sPais7] [varchar](100) NULL,
	[sRuta7] [varchar](200) NULL,
	[iIdTieneCosto] [varchar](7) NOT NULL,
	[fCosto] [float] NOT NULL,
	[sObservaciones] [varchar](500) NULL,
	[sObjLegitimoC] [varchar](500) NULL,
	[sFundamentoNC] [varchar](250) NULL,
	[sFundamentoJC] [varchar](250) NULL,
	[sClasificaC] [varchar](10) NULL,
	[sDuraciónC] [varchar](100) NULL,
	[sEspecificacionC] [varchar](60) NULL,
	[dFechaCalificaC] [date] NULL,
	[sTipoDocResC] [varchar](40) NULL,
	[sNumDocResC] [varchar](10) NULL,
	[sNumTPResC] [varchar](20) NULL,
	[dFechaExpTPC] [date] NULL,
	[sNombreRespC] [varchar](100) NULL,
	[sCargoRespC] [varchar](100) NULL,
	[sObservacionesClas] [varchar](500) NULL,
	[sObjLegitimoR] [varchar](1000) NULL,
	[sFundamentoNR] [varchar](250) NULL,
	[sFundamentoJR] [varchar](250) NULL,
	[sClasificaR] [varchar](10) NULL,
	[sDuraciónR] [varchar](100) NULL,
	[sEspecificacionR] [varchar](60) NULL,
	[dFechaCalificaR] [date] NULL,
	[sTipoDocResR] [varchar](40) NULL,
	[sNumDocResR] [varchar](10) NULL,
	[sNumTPResR] [varchar](20) NULL,
	[dFechaExpTPR] [date] NULL,
	[sNombreRespR] [varchar](100) NULL,
	[sCargoRespR] [varchar](100) NULL,
	[sObservacionesClasR] [varchar](500) NULL,
	[sTipoPublica] [varchar](40) NULL,
	[sTiposNormaP] [varchar](500) NULL,
	[sNumeroNormaP] [varchar](50) NULL,
	[sFechaNormaP] [varchar](80) NULL,
	[sArticulosNormaP] [varchar](100) NULL,
	[sPermanencia] [varchar](20) NULL,
	[sRutaPublica] [varchar](250) NULL,
	[sLinkConsulta] [varchar](250) NULL,
	[sObservacionesPublica] [varchar](500) NULL,
	[dFechaRegistro] [datetime] NOT NULL,
	[sIdenResponsable] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoMedio]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoMedio](
	[iIdActivo] [bigint] NOT NULL,
	[iIdMaestro] [smallint] NOT NULL,
	[sNombreNum] [varchar](100) NOT NULL,
	[sPais] [varchar](100) NULL,
	[sOtro] [varchar](100) NULL,
	[sRuta] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoObjLegitimo]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoObjLegitimo](
	[iIdActivo] [bigint] NOT NULL,
	[iIdMaestro] [smallint] NOT NULL,
	[sTipo] [varchar](11) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoPublicada]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoPublicada](
	[iIdActivo] [bigint] NOT NULL,
	[iIdTipoPublica] [smallint] NOT NULL,
	[sNumeroNorma] [varchar](50) NOT NULL,
	[sFechaNorma] [varchar](80) NOT NULL,
	[sArticulosNorma] [varchar](100) NOT NULL,
	[iIdPermanencia] [smallint] NOT NULL,
	[sRutaPublica] [varchar](250) NOT NULL,
	[sLinkConsulta] [varchar](250) NOT NULL,
	[sObservacionesPublica] [varchar](500) NULL,
	[dFechaRegistro] [datetime] NOT NULL,
	[dFechaActualiza] [datetime] NOT NULL,
	[sIdenUsuario] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoReservada]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoReservada](
	[iIdActivo] [bigint] NOT NULL,
	[sFundamentoN] [varchar](250) NOT NULL,
	[sFundamentoJ] [varchar](250) NOT NULL,
	[iIdClasifica] [smallint] NOT NULL,
	[sDuración] [varchar](100) NOT NULL,
	[dFechaCalifica] [date] NOT NULL,
	[iIdTipoDocRes] [smallint] NOT NULL,
	[sNumDocRes] [varchar](10) NOT NULL,
	[sNumTPRes] [varchar](20) NOT NULL,
	[dFechaExpTP] [date] NOT NULL,
	[sNombreResp] [varchar](100) NOT NULL,
	[sCargoResp] [varchar](100) NOT NULL,
	[sObservacionesClas] [varchar](500) NULL,
	[dFechaRegistro] [datetime] NOT NULL,
	[dFechaActualiza] [datetime] NOT NULL,
	[sIdenUsuario] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoSubcategoria]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoSubcategoria](
	[iIdActivo] [bigint] NOT NULL,
	[iIdMaestro] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblActivoTipoNorma]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblActivoTipoNorma](
	[iIdActivo] [bigint] NOT NULL,
	[iIdMaestro] [smallint] NOT NULL,
	[sTipo] [varchar](14) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFlujo]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFlujo](
	[iIdActivo] [bigint] NOT NULL,
	[sEstado] [varchar](14) NULL,
	[dFechaRegistro] [datetime] NOT NULL,
	[sIdenResponsable] [varchar](10) NOT NULL,
	[sObservaciones] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMaestros]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMaestros](
	[iIdMaestro] [smallint] IDENTITY(1,1) NOT NULL,
	[sMaestro] [varchar](245) NOT NULL,
	[sDescripcion] [varchar](300) NULL,
	[iIdPadre] [smallint] NULL,
	[iOrden] [tinyint] NULL,
	[bEstado] [bit] NOT NULL,
	[iTipo] [bigint] NULL,
	[dFecActualiza] [datetime] NULL,
 CONSTRAINT [PK_tblMaestros_1] PRIMARY KEY CLUSTERED 
(
	[iIdMaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblParametros]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblParametros](
	[iIdParametro] [smallint] IDENTITY(1,1) NOT NULL,
	[sParametro] [varchar](50) NOT NULL,
	[sValor] [varchar](20) NULL,
	[bEstado] [bit] NOT NULL,
 CONSTRAINT [PK_tblParametros] PRIMARY KEY CLUSTERED 
(
	[iIdParametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsuario]    Script Date: 26/06/2024 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsuario](
	[sIdentificacion] [varchar](10) NOT NULL,
	[sNombre] [varchar](50) NOT NULL,
	[iIdRol] [varchar](20) NOT NULL,
	[sEmail] [varchar](50) NULL,
	[dFechaDesde] [date] NOT NULL,
	[dFechaHasta] [date] NOT NULL,
	[bEstado] [bit] NOT NULL,
	[iIdDependencia] [smallint] NULL,
	[sObservaciones] [varchar](255) NULL,
 CONSTRAINT [PK_tblUsuario] PRIMARY KEY CLUSTERED 
(
	[sIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblMaestros] ON 

INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (1, N'SERIE DE LA TRD', N'Serie de la TRD', NULL, NULL, 1, 1, CAST(N'2024-05-02T16:27:15.610' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (2, N'ACCIONES CONSTITUCIONALES', N'ACCIONES CONSTITUCIONALES', 1, 1, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (3, N'ACTAS', N'ACTAS', 1, 2, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (4, N'ACUERDOS', N'ACUERDOS', 1, 3, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (5, N'ANTEPROYECTOS DE PRESUPUESTO', N'ANTEPROYECTOS DE PRESUPUESTO', 1, 4, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (6, N'AUTORIZACIONES URBANÍSTICAS', N'AUTORIZACIONES URBANÍSTICAS', 1, 5, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (7, N'AUTORIZACIONES Y PERMISOS', N'AUTORIZACIONES Y PERMISOS', 1, 6, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (8, N'BOLETINES', N'BOLETINES', 1, 7, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (9, N'CAMPAÑAS DE COMUNICACIÓN INSTITUCIONALES', N'CAMPAÑAS DE COMUNICACIÓN INSTITUCIONALES', 1, 8, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (10, N'CERTIFICADOS', N'CERTIFICADOS', 1, 9, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (11, N'CIRCULARES', N'CIRCULARES', 1, 10, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (12, N'COMPROBANTES', N'COMPROBANTES', 1, 11, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (13, N'COMPROBANTES DE ALMACÉN', N'COMPROBANTES DE ALMACÉN', 1, 12, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (14, N'CONCEPTOS', N'CONCEPTOS', 1, 13, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (15, N'CONCEPTOS URBANÍSTICOS', N'CONCEPTOS URBANÍSTICOS', 1, 14, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (16, N'CONCILIACIONES', N'CONCILIACIONES', 1, 15, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (17, N'CONSECUTIVOS DE COMUNICACIONES OFICIALES', N'CONSECUTIVOS DE COMUNICACIONES OFICIALES', 1, 16, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (18, N'CONTRATOS', N'CONTRATOS', 1, 17, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (19, N'CONVENCIONES COLECTIVAS DE TRABAJO', N'CONVENCIONES COLECTIVAS DE TRABAJO', 1, 18, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (20, N'CONVENIOS', N'CONVENIOS', 1, 19, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (21, N'DECLARACIONES', N'DECLARACIONES', 1, 20, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (22, N'DECRETOS', N'DECRETOS', 1, 21, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (23, N'DERECHOS DE PETICIÓN', N'DERECHOS DE PETICIÓN', 1, 22, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (24, N'DESPACHOS COMISORIOS', N'DESPACHOS COMISORIOS', 1, 23, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (25, N'ESTUDIOS E INVESTIGACIONES', N'ESTUDIOS E INVESTIGACIONES', 1, 24, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (26, N'FICHAS DE CLASIFICACIÓN SOCIOECONÓMICA', N'FICHAS DE CLASIFICACIÓN SOCIOECONÓMICA', 1, 25, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (27, N'HISTORIALES', N'HISTORIALES', 1, 26, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (28, N'HISTORIAS', N'HISTORIAS', 1, 27, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (29, N'INFORMES', N'INFORMES', 1, 28, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (30, N'INSTRUMENTOS ARCHIVÍSTICOS', N'INSTRUMENTOS ARCHIVÍSTICOS', 1, 29, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (31, N'INSTRUMENTOS DE CONTROL', N'INSTRUMENTOS DE CONTROL', 1, 30, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (32, N'INSTRUMENTOS DE GESTIÓN DE LA INFORMACIÓN PÚBLICA', N'INSTRUMENTOS DE GESTIÓN DE LA INFORMACIÓN PÚBLICA', 1, 31, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (33, N'INVENTARIOS', N'INVENTARIOS', 1, 32, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (34, N'LIBROS', N'LIBROS', 1, 33, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (35, N'LIBROS CONTABLES PRINCIPALES', N'LIBROS CONTABLES PRINCIPALES', 1, 34, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (36, N'LICENCIAS', N'LICENCIAS', 1, 35, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (37, N'MANUALES', N'MANUALES', 1, 36, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (38, N'NÓMINAS', N'NÓMINAS', 1, 37, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (39, N'ÓRDENES DE COMPRA', N'ÓRDENES DE COMPRA', 1, 38, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (40, N'PLANES', N'PLANES', 1, 39, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (41, N'POLÍTICAS DE OPERACIÓN DE OBRA PÚBLICA', N'POLÍTICAS DE OPERACIÓN DE OBRA PÚBLICA', 1, 40, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (42, N'POLÍTICAS PÚBLICAS INSTITUCIONALES', N'POLÍTICAS PÚBLICAS INSTITUCIONALES', 1, 41, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (43, N'PORTAFOLIOS DE INVERSIONES', N'PORTAFOLIOS DE INVERSIONES', 1, 42, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (44, N'PRESUPUESTOS GENERALES', N'PRESUPUESTOS GENERALES', 1, 43, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (45, N'PROCESOS', N'PROCESOS', 1, 44, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (46, N'PROGRAMAS', N'PROGRAMAS', 1, 45, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (47, N'PROYECTOS', N'PROYECTOS', 1, 46, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (48, N'PUBLICACIONES INSTITUCIONALES', N'PUBLICACIONES INSTITUCIONALES', 1, 47, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (49, N'REPORTES DE AVANCE A LA GESTIÓN', N'REPORTES DE AVANCE A LA GESTIÓN', 1, 48, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (50, N'RESOLUCIONES', N'RESOLUCIONES', 1, 49, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (51, N'ACCIONES DE CUMPLIMIENTO', N'ACCIONES DE CUMPLIMIENTO', 2, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (52, N'ACCIONES DE GRUPO', N'ACCIONES DE GRUPO', 2, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (53, N'ACCIONES DE TUTELA', N'ACCIONES DE TUTELA', 2, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (54, N'ACCIONES POPULARES', N'ACCIONES POPULARES', 2, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (55, N'ACTAS DE ASESORÍA EN SALUD', N'ACTAS DE ASESORÍA EN SALUD', 3, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (56, N'ACTAS DE COMISIÓN', N'ACTAS DE COMISIÓN', 3, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (57, N'ACTAS DE COMITÉ', N'ACTAS DE COMITÉ', 3, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (58, N'ACTAS DE CONCILIACIÓN EN EQUIDAD', N'ACTAS DE CONCILIACIÓN EN EQUIDAD', 3, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (59, N'ACTAS DE CONSEJO', N'ACTAS DE CONSEJO', 3, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (60, N'ACTAS DE DESTRUCCIÓN DE ESPECIES VENALES', N'ACTAS DE DESTRUCCIÓN DE ESPECIES VENALES', 3, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (61, N'ACTAS DE DESTRUCCIÓN DE MATERIAL PROBATORIO DE CADENA DE CUSTODIA', N'ACTAS DE DESTRUCCIÓN DE MATERIAL PROBATORIO DE CADENA DE CUSTODIA', 3, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (62, N'ACTAS DE INVENTARIO DEL ESPACIO PÚBLICO', N'ACTAS DE INVENTARIO DEL ESPACIO PÚBLICO', 3, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (63, N'ACTAS DE JUNTA', N'ACTAS DE JUNTA', 3, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (64, N'ACTAS DE JURAMENTO DE NACIONALIDAD COLOMBIANA POR ADOPCIÓN', N'ACTAS DE JURAMENTO DE NACIONALIDAD COLOMBIANA POR ADOPCIÓN', 3, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (65, N'ACTAS DE MESA TÉCNICA', N'ACTAS DE MESA TÉCNICA', 3, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (66, N'ACTAS DE REUNIÓN', N'ACTAS DE REUNIÓN', 3, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (67, N'ACTAS DE SEGUIMIENTO A DESARROLLOS URBANISTICOS Y CONSTRUCTIVOS', N'ACTAS DE SEGUIMIENTO A DESARROLLOS URBANISTICOS Y CONSTRUCTIVOS', 3, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (68, N'ACUERDOS DE VOLUNTADES', N'ACUERDOS DE VOLUNTADES', 4, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (69, N'ACUERDOS PROTOCOLARIOS DE CIUDAD', N'ACUERDOS PROTOCOLARIOS DE CIUDAD', 4, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (70, N'AUTORIZACIONES AJUSTE DE COTAS DE ÁREAS', N'AUTORIZACIONES AJUSTE DE COTAS DE ÁREAS', 6, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (71, N'AUTORIZACIONES APROBACIÓN DE PLANOS DE PROPIEDAD HORIZONTAL', N'AUTORIZACIONES APROBACIÓN DE PLANOS DE PROPIEDAD HORIZONTAL', 6, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (72, N'AUTORIZACIONES DE BIENES DESTINADOS A USO PÚBLICO O CON VOCACIÓN DE USO PÚBLICO', N'AUTORIZACIONES DE BIENES DESTINADOS A USO PÚBLICO O CON VOCACIÓN DE USO PÚBLICO', 6, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (73, N'AUTORIZACIONES DE MODIFICACIÓN DE PLANOS URBANÍSTICOS, DE LEGALIZACIÓN Y DEMÁS PLANOS QUE APROBARON DESARROLLOS O ASENTAMIENTOS', N'AUTORIZACIONES DE MODIFICACIÓN DE PLANOS URBANÍSTICOS, DE LEGALIZACIÓN Y DEMÁS PLANOS QUE APROBARON DESARROLLOS O ASENTAMIENTOS', 6, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (74, N'AUTORIZACIONES DE PISCINAS', N'AUTORIZACIONES DE PISCINAS', 6, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (75, N'AUTORIZACIONES DE REVISIÓN INDEPENDIENTE DE LOS DISEÑOS ESTRUCTURALES', N'AUTORIZACIONES DE REVISIÓN INDEPENDIENTE DE LOS DISEÑOS ESTRUCTURALES', 6, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (76, N'AUTORIZACIONES PARA EL MOVIMIENTO DE TIERRAS', N'AUTORIZACIONES PARA EL MOVIMIENTO DE TIERRAS', 6, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (77, N'BOLETINES DE DEUDORES MOROSOS DEL ESTADO', N'BOLETINES DE DEUDORES MOROSOS DEL ESTADO', 8, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (78, N'BOLETINES EPIDEMIOLÓGICOS', N'BOLETINES EPIDEMIOLÓGICOS', 8, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (79, N'BOLETINES JURÍDICOS', N'BOLETINES JURÍDICOS', 8, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (80, N'CERTIFICADOS CATASTRALES', N'CERTIFICADOS CATASTRALES', 10, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (81, N'CERTIFICADOS DE AFECTACIÓN POR EMERGENCIAS Y DESASTRES', N'CERTIFICADOS DE AFECTACIÓN POR EMERGENCIAS Y DESASTRES', 10, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (82, N'CERTIFICADOS DE DISPONIBILIDAD PRESUPUESTAL', N'CERTIFICADOS DE DISPONIBILIDAD PRESUPUESTAL', 10, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (83, N'CERTIFICADOS DE EPIDEMIOLOGÍA', N'CERTIFICADOS DE EPIDEMIOLOGÍA', 10, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (84, N'CERTIFICADOS DE INEXISTENCIA O INSUFICIENCIA DE PERSONAL', N'CERTIFICADOS DE INEXISTENCIA O INSUFICIENCIA DE PERSONAL', 10, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (85, N'CERTIFICADOS DE INGRESO DE CENIZAS O RESTOS HUMANOS', N'CERTIFICADOS DE INGRESO DE CENIZAS O RESTOS HUMANOS', 10, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (86, N'CERTIFICADOS DE INHUMACIÓN Y EXHUMACIÓN', N'CERTIFICADOS DE INHUMACIÓN Y EXHUMACIÓN', 10, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (87, N'CERTIFICADOS DE REGISTRO PRESUPUESTAL', N'CERTIFICADOS DE REGISTRO PRESUPUESTAL', 10, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (88, N'CERTIFICADOS DE RESIDENCIA', N'CERTIFICADOS DE RESIDENCIA', 10, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (89, N'CERTIFICADOS DE VALIDACIÓN DE PROCESOS DE FORMACIÓN A ACTORES DEL CONFLICTO', N'CERTIFICADOS DE VALIDACIÓN DE PROCESOS DE FORMACIÓN A ACTORES DEL CONFLICTO', 10, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (90, N'CERTIFICADOS TRIBUTARIOS', N'CERTIFICADOS TRIBUTARIOS', 10, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (91, N'CIRCULARES DISPOSITIVAS', N'CIRCULARES DISPOSITIVAS', 11, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (92, N'CIRCULARES INFORMATIVAS', N'CIRCULARES INFORMATIVAS', 11, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (93, N'COMPROBANTES CONTABLES DE EGRESOS', N'COMPROBANTES CONTABLES DE EGRESOS', 12, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (94, N'COMPROBANTES CONTABLES GENERALES', N'COMPROBANTES CONTABLES GENERALES', 12, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (95, N'COMPROBANTES DE BIENES DEVOLUTIVOS', N'COMPROBANTES DE BIENES DEVOLUTIVOS', 12, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (96, N'COMPROBANTES DE EGRESO DE BIENES DE ALMACÉN', N'COMPROBANTES DE EGRESO DE BIENES DE ALMACÉN', 13, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (97, N'COMPROBANTES DE INGRESO DE BIENES DE ALMACÉN', N'COMPROBANTES DE INGRESO DE BIENES DE ALMACÉN', 13, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (98, N'CONCEPTOS JURÍDICOS', N'CONCEPTOS JURÍDICOS', 14, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (99, N'CONCEPTOS TÉCNICOS', N'CONCEPTOS TÉCNICOS', 14, 2, 1, 2, NULL)
GO
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (100, N'CONCEPTOS DE NORMA URBANÍSTICA', N'CONCEPTOS DE NORMA URBANÍSTICA', 15, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (101, N'CONCEPTOS DE USO DE SUELOS', N'CONCEPTOS DE USO DE SUELOS', 15, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (102, N'CONCILIACIONES BANCARIAS', N'CONCILIACIONES BANCARIAS', 16, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (103, N'CONSECUTIVOS DE COMUNICACIONES OFICIALES ENVIADAS', N'CONSECUTIVOS DE COMUNICACIONES OFICIALES ENVIADAS', 17, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (104, N'CONSECUTIVOS DE COMUNICACIONES OFICIALES INTERNAS', N'CONSECUTIVOS DE COMUNICACIONES OFICIALES INTERNAS', 17, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (105, N'CONSECUTIVOS DE COMUNICACIONES OFICIALES RECIBIDAS', N'CONSECUTIVOS DE COMUNICACIONES OFICIALES RECIBIDAS', 17, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (106, N'CONTRATOS DE ADMINISTRACIÓN DE ESPACIOS PÚBLICOS', N'CONTRATOS DE ADMINISTRACIÓN DE ESPACIOS PÚBLICOS', 18, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (107, N'CONTRATOS DE ARRENDAMIENTO', N'CONTRATOS DE ARRENDAMIENTO', 18, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (108, N'CONTRATOS DE COMODATO', N'CONTRATOS DE COMODATO', 18, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (109, N'CONTRATOS DE COMPRAVENTA', N'CONTRATOS DE COMPRAVENTA', 18, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (110, N'CONTRATOS DE CONCESIÓN', N'CONTRATOS DE CONCESIÓN', 18, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (111, N'CONTRATOS DE CONSULTORÍA', N'CONTRATOS DE CONSULTORÍA', 18, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (112, N'CONTRATOS DE DEUDA Y OPERACIONES CONEXAS', N'CONTRATOS DE DEUDA Y OPERACIONES CONEXAS', 18, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (113, N'CONTRATOS DE DONACIÓN', N'CONTRATOS DE DONACIÓN', 18, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (114, N'CONTRATOS DE INTERVENTORÍA', N'CONTRATOS DE INTERVENTORÍA', 18, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (115, N'CONTRATOS DE MANDATO', N'CONTRATOS DE MANDATO', 18, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (116, N'CONTRATOS DE OBRA', N'CONTRATOS DE OBRA', 18, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (117, N'CONTRATOS DE PERMUTA', N'CONTRATOS DE PERMUTA', 18, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (118, N'CONTRATOS DE PRESTACIÓN DE SERVICIOS', N'CONTRATOS DE PRESTACIÓN DE SERVICIOS', 18, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (119, N'CONTRATOS DE SEGUROS', N'CONTRATOS DE SEGUROS', 18, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (120, N'CONTRATOS DE SUMINISTROS', N'CONTRATOS DE SUMINISTROS', 18, 15, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (121, N'CONTRATOS DE TRANSACCIÓN', N'CONTRATOS DE TRANSACCIÓN', 18, 16, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (122, N'CONTRATOS INTERADMINISTRATIVOS', N'CONTRATOS INTERADMINISTRATIVOS', 18, 17, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (123, N'CONVENIOS CON PERSONA JURÍDICA SIN ÁNIMO DE LUCRO', N'CONVENIOS CON PERSONA JURÍDICA SIN ÁNIMO DE LUCRO', 20, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (124, N'CONVENIOS DE ASOCIACIÓN', N'CONVENIOS DE ASOCIACIÓN', 20, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (125, N'CONVENIOS DE COOPERACIÓN ESPECIAL', N'CONVENIOS DE COOPERACIÓN ESPECIAL', 20, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (126, N'CONVENIOS DE COOPERACIÓN INTERNACIONAL', N'CONVENIOS DE COOPERACIÓN INTERNACIONAL', 20, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (127, N'CONVENIOS DE COOPERACIÓN INTERNACIONAL', N'CONVENIOS DE COOPERACIÓN INTERNACIONAL', 20, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (128, N'CONVENIOS DE COOPERACIÓN NACIONAL', N'CONVENIOS DE COOPERACIÓN NACIONAL', 20, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (129, N'CONVENIOS DE DESEMPEÑO', N'CONVENIOS DE DESEMPEÑO', 20, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (130, N'CONVENIOS INTERADMINISTRATIVOS', N'CONVENIOS INTERADMINISTRATIVOS', 20, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (131, N'CONVENIOS INTERINSTITUCIONALES', N'CONVENIOS INTERINSTITUCIONALES', 20, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (132, N'DECLARACIONES CAMBIO DE MONEDA', N'DECLARACIONES CAMBIO DE MONEDA', 21, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (133, N'DECLARACIONES TRIBUTARIAS', N'DECLARACIONES TRIBUTARIAS', 21, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (134, N'HISTORIALES CREDITICIOS', N'HISTORIALES CREDITICIOS', 27, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (135, N'HISTORIALES DE ALBERGUES TEMPORALES', N'HISTORIALES DE ALBERGUES TEMPORALES', 27, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (136, N'HISTORIALES DE BIENES INMUEBLES', N'HISTORIALES DE BIENES INMUEBLES', 27, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (137, N'HISTORIALES DE BIENES INMUEBLES PATRIMONIALES', N'HISTORIALES DE BIENES INMUEBLES PATRIMONIALES', 27, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (138, N'HISTORIALES DE CONSERVACIÓN Y RESTAURACIÓN DE DOCUMENTOS PATRIMONIALES', N'HISTORIALES DE CONSERVACIÓN Y RESTAURACIÓN DE DOCUMENTOS PATRIMONIALES', 27, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (139, N'HISTORIALES DE ESPACIO PÚBLICO DE ESPARCIMIENTO Y ENCUENTRO', N'HISTORIALES DE ESPACIO PÚBLICO DE ESPARCIMIENTO Y ENCUENTRO', 27, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (140, N'HISTORIALES DE ESTABLECIMIENTOS DE INTERÉS SANITARIO', N'HISTORIALES DE ESTABLECIMIENTOS DE INTERÉS SANITARIO', 27, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (141, N'HISTORIALES DE HABILITACIÓN DE ESTABLECIMIENTOS DE EDUCACIÓN FORMAL DE CARÁCTER OFICIAL', N'HISTORIALES DE HABILITACIÓN DE ESTABLECIMIENTOS DE EDUCACIÓN FORMAL DE CARÁCTER OFICIAL', 27, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (142, N'HISTORIALES DE HABILITACIÓN DE ESTABLECIMIENTOS DE EDUCACIÓN FORMAL DE CARÁCTER PRIVADO', N'HISTORIALES DE HABILITACIÓN DE ESTABLECIMIENTOS DE EDUCACIÓN FORMAL DE CARÁCTER PRIVADO', 27, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (143, N'HISTORIALES DE HABILITACIÓN DE ESTABLECIMIENTOS DE EDUCACIÓN PARA EL TRABAJO Y EL DESARROLLO HUMANO Y AUTORIZACIÓN DE CENTROS DE ENSEÑANZA AUTOMOVILÍSTICA', N'HISTORIALES DE HABILITACIÓN DE ESTABLECIMIENTOS DE EDUCACIÓN PARA EL TRABAJO Y EL DESARROLLO HUMANO Y AUTORIZACIÓN DE CENTROS DE ENSEÑANZA AUTOMOVILÍSTICA', 27, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (144, N'HISTORIALES DE LAS EMPRESAS TRANSPORTADORAS', N'HISTORIALES DE LAS EMPRESAS TRANSPORTADORAS', 27, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (145, N'HISTORIALES DE MAQUINARIA Y EQUIPOS', N'HISTORIALES DE MAQUINARIA Y EQUIPOS', 27, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (146, N'HISTORIALES DE OBRAS DE ARTE PATRIMONIALES', N'HISTORIALES DE OBRAS DE ARTE PATRIMONIALES', 27, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (147, N'HISTORIALES DE PERMISO DE USO DEL ESPACIO PÚBLICO', N'HISTORIALES DE PERMISO DE USO DEL ESPACIO PÚBLICO', 27, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (148, N'HISTORIALES DE PERSONERÍA JURÍDICA DE ORGANISMOS DE ACCIÓN COMUNAL', N'HISTORIALES DE PERSONERÍA JURÍDICA DE ORGANISMOS DE ACCIÓN COMUNAL', 27, 15, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (149, N'HISTORIALES DE PRÉSTAMOS DE VIVIENDA', N'HISTORIALES DE PRÉSTAMOS DE VIVIENDA', 27, 16, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (150, N'HISTORIALES DE PROYECTOS URBANÍSTICOS', N'HISTORIALES DE PROYECTOS URBANÍSTICOS', 27, 17, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (151, N'HISTORIALES DE VEHÍCULOS', N'HISTORIALES DE VEHÍCULOS', 27, 18, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (152, N'HISTORIALES DEL CONTRIBUYENTE', N'HISTORIALES DEL CONTRIBUYENTE', 27, 19, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (153, N'HISTORIALES DEL PARQUE AUTOMOTOR', N'HISTORIALES DEL PARQUE AUTOMOTOR', 27, 20, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (154, N'HISTORIAS CLÍNICAS OCUPACIONALES', N'HISTORIAS CLÍNICAS OCUPACIONALES', 28, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (155, N'HISTORIAS DE ATENCIÓN A VÍCTIMAS DEL CONFLICTO ARMADO ATENCIÓN PSICOSOCIAL GRUPAL', N'HISTORIAS DE ATENCIÓN A VÍCTIMAS DEL CONFLICTO ARMADO ATENCIÓN PSICOSOCIAL GRUPAL', 28, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (156, N'HISTORIAS DE ATENCIÓN A VÍCTIMAS DEL CONFLICTO ARMADO ATENCIÓN PSICOSOCIAL INDIVIDUAL', N'HISTORIAS DE ATENCIÓN A VÍCTIMAS DEL CONFLICTO ARMADO ATENCIÓN PSICOSOCIAL INDIVIDUAL', 28, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (157, N'HISTORIAS DE ATENCIÓN A VÍCTIMAS DEL CONFLICTO ARMADO COMPONENTE RETORNOS Y REUBICACIONES', N'HISTORIAS DE ATENCIÓN A VÍCTIMAS DEL CONFLICTO ARMADO COMPONENTE RETORNOS Y REUBICACIONES', 28, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (158, N'HISTORIAS DE ATENCIÓN A VÍCTIMAS DEL CONFLICTO ARMADO FORTALECIMIENTO UNIDADES PRODUCTIVAS', N'HISTORIAS DE ATENCIÓN A VÍCTIMAS DEL CONFLICTO ARMADO FORTALECIMIENTO UNIDADES PRODUCTIVAS', 28, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (159, N'HISTORIAS DE ATENCIÓN A VÍCTIMAS DEL CONFLICTO ARMADO VALORACIÓN EN ALBERGUE', N'HISTORIAS DE ATENCIÓN A VÍCTIMAS DEL CONFLICTO ARMADO VALORACIÓN EN ALBERGUE', 28, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (160, N'HISTORIAS DE ATENCIÓN INTEGRAL PRIMERA INFANCIA', N'HISTORIAS DE ATENCIÓN INTEGRAL PRIMERA INFANCIA', 28, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (161, N'HISTORIAS DE ATENCIONES PSICOSOCIALES', N'HISTORIAS DE ATENCIONES PSICOSOCIALES', 28, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (162, N'HISTORIAS DE FORMACIÓN Y ENTRENAMIENTO DE BOMBEROS', N'HISTORIAS DE FORMACIÓN Y ENTRENAMIENTO DE BOMBEROS', 28, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (163, N'HISTORIAS LABORALES', N'HISTORIAS LABORALES', 28, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (164, N'HISTORIAS PENSIONALES', N'HISTORIAS PENSIONALES', 28, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (165, N'INFORMES A ENTES DE CONTROL', N'INFORMES A ENTES DE CONTROL', 29, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (166, N'INFORMES A OTRAS ENTIDADES', N'INFORMES A OTRAS ENTIDADES', 29, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (167, N'INFORMES CONTABLES', N'INFORMES CONTABLES', 29, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (168, N'INFORMES DE ARQUEO DE CAJA', N'INFORMES DE ARQUEO DE CAJA', 29, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (169, N'INFORMES DE ASESORÍA Y ASISTENCIA TÉCNICA', N'INFORMES DE ASESORÍA Y ASISTENCIA TÉCNICA', 29, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (170, N'INFORMES DE ATENCIÓN DE REPORTES DE INCIDENTES', N'INFORMES DE ATENCIÓN DE REPORTES DE INCIDENTES', 29, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (171, N'INFORMES DE CUANTIFICACIÓN DE EMISIONES DE GASES DE EFECTO INVERNADERO', N'INFORMES DE CUANTIFICACIÓN DE EMISIONES DE GASES DE EFECTO INVERNADERO', 29, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (172, N'INFORMES DE EJECUCIÓN PRESUPUESTAL', N'INFORMES DE EJECUCIÓN PRESUPUESTAL', 29, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (173, N'INFORMES DE GESTIÓN', N'INFORMES DE GESTIÓN', 29, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (174, N'INFORMES DE GOBIERNO CORPORATIVO ', N'INFORMES DE GOBIERNO CORPORATIVO ', 29, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (175, N'INFORMES DE INSPECCIÓN DE SEGURIDAD A ESTABLECIMIENTOS COMERCIALES', N'INFORMES DE INSPECCIÓN DE SEGURIDAD A ESTABLECIMIENTOS COMERCIALES', 29, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (176, N'INFORMES DE INSPECCIÓN Y SEGUIMIENTO A EDIFICACIONES VULNERABLES', N'INFORMES DE INSPECCIÓN Y SEGUIMIENTO A EDIFICACIONES VULNERABLES', 29, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (177, N'INFORMES DE LOS ESTADOS FINANCIEROS', N'INFORMES DE LOS ESTADOS FINANCIEROS', 29, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (178, N'INFORMES DE RECAUDOS', N'INFORMES DE RECAUDOS', 29, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (179, N'INFORMES DE RENDICIÓN DE CUENTAS', N'INFORMES DE RENDICIÓN DE CUENTAS', 29, 15, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (180, N'INFORMES DE SEGUIMIENTO AL MODELO INTEGRADO DE PLANEACIÓN Y GESTIÓN', N'INFORMES DE SEGUIMIENTO AL MODELO INTEGRADO DE PLANEACIÓN Y GESTIÓN', 29, 16, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (181, N'INFORMES DE SEGUIMIENTO DE RECURSOS', N'INFORMES DE SEGUIMIENTO DE RECURSOS', 29, 17, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (182, N'INFORMES DE SEGUIMIENTO Y EVALUACIÓN DEL SISTEMA DE GESTIÓN PARA LA EQUIDAD TERRITORIAL', N'INFORMES DE SEGUIMIENTO Y EVALUACIÓN DEL SISTEMA DE GESTIÓN PARA LA EQUIDAD TERRITORIAL', 29, 18, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (183, N'INFORMES DE TIEMPO DE SERVICIO DE DOCENTES', N'INFORMES DE TIEMPO DE SERVICIO DE DOCENTES', 29, 19, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (184, N'INFORMES DE TOXICOLOGÍA', N'INFORMES DE TOXICOLOGÍA', 29, 20, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (185, N'INFORMES ESTADÍSTICOS DE AVALUOS CATASTRALES', N'INFORMES ESTADÍSTICOS DE AVALUOS CATASTRALES', 29, 21, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (186, N'INFORMES POLICIALES DE ACCIDENTES DE TRÁNSITO', N'INFORMES POLICIALES DE ACCIDENTES DE TRÁNSITO', 29, 22, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (187, N'INFORMES TÉCNICOS', N'INFORMES TÉCNICOS', 29, 23, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (188, N'INFORMES DE SEGUIMIENTO DE PROYECTOS ESTRATÉGICOS', N'INFORMES DE SEGUIMIENTO DE PROYECTOS ESTRATÉGICOS', 29, 24, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (189, N'BANCOS TERMINOLÓGICOS DE SERIES Y SUBSERIES DOCUMENTALES', N'BANCOS TERMINOLÓGICOS DE SERIES Y SUBSERIES DOCUMENTALES', 30, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (190, N'INVENTARIOS DOCUMENTALES', N'INVENTARIOS DOCUMENTALES', 30, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (191, N'PLANES INSTITUCIONALES DE ARCHIVO', N'PLANES INSTITUCIONALES DE ARCHIVO', 30, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (192, N'PROGRAMAS DE GESTIÓN DOCUMENTAL', N'PROGRAMAS DE GESTIÓN DOCUMENTAL', 30, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (193, N'SISTEMAS INTEGRADOS DE CONSERVACIÓN', N'SISTEMAS INTEGRADOS DE CONSERVACIÓN', 30, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (194, N'TABLAS DE CONTROL DE ACCESO', N'TABLAS DE CONTROL DE ACCESO', 30, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (195, N'TABLAS DE RETENCIÓN DOCUMENTAL', N'TABLAS DE RETENCIÓN DOCUMENTAL', 30, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (196, N'TABLAS DE VALORACIÓN DOCUMENTAL', N'TABLAS DE VALORACIÓN DOCUMENTAL', 30, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (197, N'CONTROLES DE LEGALIZACION DE SOLICITUDES DE PROGRAMAS DE BIENESTAR', N'CONTROLES DE LEGALIZACION DE SOLICITUDES DE PROGRAMAS DE BIENESTAR', 31, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (198, N'PLANILLAS DE CONTROL', N'PLANILLAS DE CONTROL', 31, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (199, N'REGISTROS DE CONTROL DE BÓVEDAS Y OSARIOS', N'REGISTROS DE CONTROL DE BÓVEDAS Y OSARIOS', 31, 4, 1, 2, NULL)
GO
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (200, N'REGISTROS DE CONTROL DE ENTREGAS DE AYUDAS HUMANITARIAS', N'REGISTROS DE CONTROL DE ENTREGAS DE AYUDAS HUMANITARIAS', 31, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (201, N'REGISTROS DE DONACIÓN DE AYUDAS HUMANITARIAS', N'REGISTROS DE DONACIÓN DE AYUDAS HUMANITARIAS', 31, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (202, N'REGISTROS DE GRUPOS POBLACIONALES', N'REGISTROS DE GRUPOS POBLACIONALES', 31, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (203, N'REGISTROS DE MINUTAS DE OPERACIÓN DE AGENTES DE TRANSITO', N'REGISTROS DE MINUTAS DE OPERACIÓN DE AGENTES DE TRANSITO', 31, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (204, N'REGISTROS DE ORIENTACIÓN DE SERVICIOS A LA CIUDADANÍA', N'REGISTROS DE ORIENTACIÓN DE SERVICIOS A LA CIUDADANÍA', 31, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (205, N'REGISTROS DE PRÉSTAMO DE ESCENARIOS', N'REGISTROS DE PRÉSTAMO DE ESCENARIOS', 31, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (206, N'REGISTROS DE USUARIOS DE LOS SERVICIOS', N'REGISTROS DE USUARIOS DE LOS SERVICIOS', 31, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (207, N'REGISTROS DE USUARIOS DEL CENTRO DE FORMACIÓN PARA LA PAZ Y LA RECONCILIACIÓN', N'REGISTROS DE USUARIOS DEL CENTRO DE FORMACIÓN PARA LA PAZ Y LA RECONCILIACIÓN', 31, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (208, N'REGISTROS DEL PERFIL HIGIÉNICO SANITARIO', N'REGISTROS DEL PERFIL HIGIÉNICO SANITARIO', 31, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (209, N'REGISTROS DIARIOS DE CONTROL DEL ESTADO DE LAS MÁQUINAS DE BOMBEROS', N'REGISTROS DIARIOS DE CONTROL DEL ESTADO DE LAS MÁQUINAS DE BOMBEROS', 31, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (210, N'ESQUEMAS DE PUBLICACIÓN DE INFORMACIÓN', N'ESQUEMAS DE PUBLICACIÓN DE INFORMACIÓN', 32, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (211, N'ÍNDICES DE INFORMACIÓN CLASIFICADA Y RESERVADA', N'ÍNDICES DE INFORMACIÓN CLASIFICADA Y RESERVADA', 32, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (212, N'REGISTROS DE ACTIVOS DE INFORMACIÓN', N'REGISTROS DE ACTIVOS DE INFORMACIÓN', 32, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (213, N'INVENTARIOS DE BIENES MUEBLES', N'INVENTARIOS DE BIENES MUEBLES', 33, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (214, N'INVENTARIOS DE BIENES PATRIMONIALES', N'INVENTARIOS DE BIENES PATRIMONIALES', 33, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (215, N'INVENTARIOS DE SISTEMAS DE INFORMACIÓN', N'INVENTARIOS DE SISTEMAS DE INFORMACIÓN', 33, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (216, N'INVENTARIOS GENERALES DE BIENES', N'INVENTARIOS GENERALES DE BIENES', 33, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (217, N'LIBROS DE ACTAS DE CONSEJO ACADÉMICO DEL CENTRO DE CAPACITACIÓN FORMACIÓN Y ENTRENAMIENTO DE EMERGENCIAS Y DESASTRES DEL CUERPO OFICIAL DE BOMBEROS', N'LIBROS DE ACTAS DE CONSEJO ACADÉMICO DEL CENTRO DE CAPACITACIÓN FORMACIÓN Y ENTRENAMIENTO DE EMERGENCIAS Y DESASTRES DEL CUERPO OFICIAL DE BOMBEROS', 34, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (218, N'LIBROS DE ACTAS DE CONSEJO DIRECTIVO DEL CENTRO DE CAPACITACIÓN FORMACIÓN Y ENTRENAMIENTO DE EMERGENCIAS Y DESASTRES DEL CUERPO OFICIAL DE BOMBEROS', N'LIBROS DE ACTAS DE CONSEJO DIRECTIVO DEL CENTRO DE CAPACITACIÓN FORMACIÓN Y ENTRENAMIENTO DE EMERGENCIAS Y DESASTRES DEL CUERPO OFICIAL DE BOMBEROS', 34, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (219, N'LIBROS DE ACTAS DE GRADUACIÓN DE BOMBEROS', N'LIBROS DE ACTAS DE GRADUACIÓN DE BOMBEROS', 34, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (220, N'LIBROS DE CONTROL Y REGISTRO DE CONOCIMIENTOS EXPERIENCIAS Y PRÁCTICAS DE BOMBEROS', N'LIBROS DE CONTROL Y REGISTRO DE CONOCIMIENTOS EXPERIENCIAS Y PRÁCTICAS DE BOMBEROS', 34, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (221, N'LIBROS DE MATRÍCULAS DE BOMBEROS', N'LIBROS DE MATRÍCULAS DE BOMBEROS', 34, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (222, N'LIBROS DE MINUTAS', N'LIBROS DE MINUTAS', 34, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (223, N'LIBROS DE REGISTROS PARA MEDICAMENTOS DE CONTROL ESPECIAL', N'LIBROS DE REGISTROS PARA MEDICAMENTOS DE CONTROL ESPECIAL', 34, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (224, N'LIBROS DIARIO', N'LIBROS DIARIO', 35, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (225, N'LIBROS MAYOR Y BALANCE', N'LIBROS MAYOR Y BALANCE', 35, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (226, N'LICENCIAS DE INHUMACIÓN Y CREMACIÓN', N'LICENCIAS DE INHUMACIÓN Y CREMACIÓN', 36, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (227, N'LICENCIAS DE INTERVENCIÓN DE ESPACIO PÚBLICO', N'LICENCIAS DE INTERVENCIÓN DE ESPACIO PÚBLICO', 36, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (228, N'LICENCIAS URBANÍSTICAS', N'LICENCIAS URBANÍSTICAS', 36, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (229, N'MANUALES DE AUDITORÍAS', N'MANUALES DE AUDITORÍAS', 37, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (230, N'MANUALES DE GOBIERNO CORPORATIVO  ', N'MANUALES DE GOBIERNO CORPORATIVO  ', 37, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (231, N'MANUALES DE RESIDUOS SOLIDOS DEL VALLE DE ABURRÁ', N'MANUALES DE RESIDUOS SOLIDOS DEL VALLE DE ABURRÁ', 37, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (232, N'MANUALES DEL SISTEMA DE GESTIÓN DE LA MALLA VIAL', N'MANUALES DEL SISTEMA DE GESTIÓN DE LA MALLA VIAL', 37, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (233, N'MANUALES DEL SISTEMA DE GESTIÓN DEL ESPACIO PÚBLICO', N'MANUALES DEL SISTEMA DE GESTIÓN DEL ESPACIO PÚBLICO', 37, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (234, N'MANUALES DEL SISTEMA INTEGRAL DE GESTIÓN', N'MANUALES DEL SISTEMA INTEGRAL DE GESTIÓN', 37, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (235, N'MANUALES DEL SISTEMA INTEGRAL DE REGISTRO DE OBRA', N'MANUALES DEL SISTEMA INTEGRAL DE REGISTRO DE OBRA', 37, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (236, N'MANUALES ESPECÍFICOS DE FUNCIONES Y COMPETENCIAS LABORALES', N'MANUALES ESPECÍFICOS DE FUNCIONES Y COMPETENCIAS LABORALES', 37, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (237, N'PLANES AMBIENTALES', N'PLANES AMBIENTALES', 40, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (238, N'PLANES ANTICORRUPCIÓN Y DE ATENCIÓN AL CIUDADANO', N'PLANES ANTICORRUPCIÓN Y DE ATENCIÓN AL CIUDADANO', 40, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (239, N'PLANES ANUALES DE ADQUISICIONES', N'PLANES ANUALES DE ADQUISICIONES', 40, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (240, N'PLANES ANUALES DE AUDITORÍAS', N'PLANES ANUALES DE AUDITORÍAS', 40, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (241, N'PLANES ANUALES DE EMPLEOS VACANTES', N'PLANES ANUALES DE EMPLEOS VACANTES', 40, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (242, N'PLANES ANUALES DE INVERSIONES', N'PLANES ANUALES DE INVERSIONES', 40, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (243, N'PLANES ANUALES DE SUPERVISIÓN E INTERVENTORÍA', N'PLANES ANUALES DE SUPERVISIÓN E INTERVENTORÍA', 40, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (244, N'PLANES DE ACCIÓN ESPECÍFICOS DE RECUPERACIÓN POST DESASTRES', N'PLANES DE ACCIÓN ESPECÍFICOS DE RECUPERACIÓN POST DESASTRES', 40, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (245, N'PLANES DE ACCIÓN INSTITUCIONAL', N'PLANES DE ACCIÓN INSTITUCIONAL', 40, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (246, N'PLANES DE ACCIÓN TERRITORIAL DE SEGURIDAD', N'PLANES DE ACCIÓN TERRITORIAL DE SEGURIDAD', 40, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (247, N'PLANES DE ACCIÓN TERRITORIAL PARA LA REPARACIÓN INTEGRAL DE LAS VICTIMAS DEL CONFLICTO ARMADO', N'PLANES DE ACCIÓN TERRITORIAL PARA LA REPARACIÓN INTEGRAL DE LAS VICTIMAS DEL CONFLICTO ARMADO', 40, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (248, N'PLANES DE APERTURA MEJORA Y USO DE DATOS', N'PLANES DE APERTURA MEJORA Y USO DE DATOS', 40, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (249, N'PLANES DE ASESORÍA Y ASISTENCIA TÉCNICA', N'PLANES DE ASESORÍA Y ASISTENCIA TÉCNICA', 40, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (250, N'PLANES DE AUDITORÍAS', N'PLANES DE AUDITORÍAS', 40, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (251, N'PLANES DE BIENESTAR E INCENTIVOS', N'PLANES DE BIENESTAR E INCENTIVOS', 40, 15, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (252, N'PLANES DE COBERTURA EDUCATIVA', N'PLANES DE COBERTURA EDUCATIVA', 40, 16, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (253, N'PLANES DE COMUNICACIONES', N'PLANES DE COMUNICACIONES', 40, 17, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (254, N'PLANES DE CONTINGENCIA DE LOS SISTEMAS DE INFORMACIÓN', N'PLANES DE CONTINGENCIA DE LOS SISTEMAS DE INFORMACIÓN', 40, 18, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (255, N'PLANES DE CONTRATACIÓN DEL SERVICIO PÚBLICO EDUCATIVO', N'PLANES DE CONTRATACIÓN DEL SERVICIO PÚBLICO EDUCATIVO', 40, 19, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (256, N'PLANES DE DESARROLLO CULTURAL', N'PLANES DE DESARROLLO CULTURAL', 40, 20, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (257, N'PLANES DE DESARROLLO DISTRITAL', N'PLANES DE DESARROLLO DISTRITAL', 40, 21, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (258, N'PLANES DE DESARROLLO LOCAL Y PRESUPUESTO PARTICIPATIVO', N'PLANES DE DESARROLLO LOCAL Y PRESUPUESTO PARTICIPATIVO', 40, 22, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (259, N'PLANES DE DIFUSIÓN DE LA CULTURA ARCHIVÍSTICA', N'PLANES DE DIFUSIÓN DE LA CULTURA ARCHIVÍSTICA', 40, 23, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (260, N'PLANES DE EXPANSIÓN E INFRAESTRUCTURA EDUCATIVA', N'PLANES DE EXPANSIÓN E INFRAESTRUCTURA EDUCATIVA', 40, 24, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (261, N'PLANES DE FORMACIÓN PARA AUDITORES INTERNOS', N'PLANES DE FORMACIÓN PARA AUDITORES INTERNOS', 40, 25, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (262, N'PLANES DE GESTIÓN DEL RIESGO DE DESASTRES', N'PLANES DE GESTIÓN DEL RIESGO DE DESASTRES', 40, 26, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (263, N'PLANES DE INSPECCIÓN VIGILANCIA Y CONTROL', N'PLANES DE INSPECCIÓN VIGILANCIA Y CONTROL', 40, 27, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (264, N'PLANES DE INVERSIÓN PÚBLICA', N'PLANES DE INVERSIÓN PÚBLICA', 40, 28, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (265, N'PLANES DE LECTURA ESCRITURA Y ORALIDAD', N'PLANES DE LECTURA ESCRITURA Y ORALIDAD', 40, 29, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (266, N'PLANES DE MEJORAMIENTO INSTITUCIONAL', N'PLANES DE MEJORAMIENTO INSTITUCIONAL', 40, 30, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (267, N'PLANES DE ORDENAMIENTO TERRITORIAL', N'PLANES DE ORDENAMIENTO TERRITORIAL', 40, 31, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (268, N'PLANES DE PREVENCIÓN PREPARACIÓN Y RESPUESTAS ANTE EMERGENCIAS', N'PLANES DE PREVENCIÓN PREPARACIÓN Y RESPUESTAS ANTE EMERGENCIAS', 40, 32, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (269, N'PLANES DE SEGUIMIENTO ARCHIVOS DE GESTIÓN', N'PLANES DE SEGUIMIENTO ARCHIVOS DE GESTIÓN', 40, 33, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (270, N'PLANES DE SEGURIDAD Y PRIVACIDAD DE LA INFORMACIÓN', N'PLANES DE SEGURIDAD Y PRIVACIDAD DE LA INFORMACIÓN', 40, 34, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (271, N'PLANES DE TRABAJO ANUAL DE SISTEMA DE SEGURIDAD Y SALUD EN EL TRABAJO', N'PLANES DE TRABAJO ANUAL DE SISTEMA DE SEGURIDAD Y SALUD EN EL TRABAJO', 40, 35, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (272, N'PLANES DE TRANSFERENCIAS DOCUMENTALES', N'PLANES DE TRANSFERENCIAS DOCUMENTALES', 40, 36, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (273, N'PLANES DE TRATAMIENTO DE RIESGOS DE SEGURIDAD Y PRIVACIDAD DE LA INFORMACIÓN', N'PLANES DE TRATAMIENTO DE RIESGOS DE SEGURIDAD Y PRIVACIDAD DE LA INFORMACIÓN', 40, 37, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (274, N'PLANES DEL DAÑO ANTIJURÍDICO', N'PLANES DEL DAÑO ANTIJURÍDICO', 40, 38, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (275, N'PLANES DISTRITALES DE GESTIÓN INTEGRAL DE RESIDUOS SÓLIDOS', N'PLANES DISTRITALES DE GESTIÓN INTEGRAL DE RESIDUOS SÓLIDOS', 40, 39, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (276, N'PLANES EDUCATIVOS DISTRITALES', N'PLANES EDUCATIVOS DISTRITALES', 40, 40, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (277, N'PLANES ESPECIALES DE ORDENAMIENTO TERRITORIAL', N'PLANES ESPECIALES DE ORDENAMIENTO TERRITORIAL', 40, 41, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (278, N'PLANES ESPECIALES DE SALVAGUARDIA PATRIMONIAL', N'PLANES ESPECIALES DE SALVAGUARDIA PATRIMONIAL', 40, 42, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (279, N'PLANES ESTADÍSTICOS DISTRITALES', N'PLANES ESTADÍSTICOS DISTRITALES', 40, 43, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (280, N'PLANES ESTRATÉGICOS DE TECNOLOGÍAS DE LA INFORMACIÓN', N'PLANES ESTRATÉGICOS DE TECNOLOGÍAS DE LA INFORMACIÓN', 40, 44, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (281, N'PLANES ESTRATÉGICOS INSTITUCIONALES', N'PLANES ESTRATÉGICOS INSTITUCIONALES', 40, 45, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (282, N'PLANES INDICATIVOS', N'PLANES INDICATIVOS', 40, 46, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (283, N'PLANES INSTITUCIONALES DE CAPACITACIÓN', N'PLANES INSTITUCIONALES DE CAPACITACIÓN', 40, 47, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (284, N'PLANES INSTITUCIONALES DE FORMACIÓN', N'PLANES INSTITUCIONALES DE FORMACIÓN', 40, 48, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (285, N'PLANES INTEGRALES DE MOVILIDAD', N'PLANES INTEGRALES DE MOVILIDAD', 40, 49, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (286, N'PLANES INTEGRALES DE SEGURIDAD Y CONVIVENCIA', N'PLANES INTEGRALES DE SEGURIDAD Y CONVIVENCIA', 40, 50, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (287, N'PLANES MAESTROS DISTRITALES', N'PLANES MAESTROS DISTRITALES', 40, 51, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (288, N'PLANES PARCIALES DE ORDENAMIENTO TERRITORIAL', N'PLANES PARCIALES DE ORDENAMIENTO TERRITORIAL', 40, 52, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (289, N'PLANES TÁCTICOS', N'PLANES TÁCTICOS', 40, 53, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (290, N'PLANES TERRITORIALES DE FORMACIÓN DOCENTE', N'PLANES TERRITORIALES DE FORMACIÓN DOCENTE', 40, 54, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (291, N'PLANES TERRITORIALES EN SALUD', N'PLANES TERRITORIALES EN SALUD', 40, 55, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (292, N'PLANES URBANOS INTEGRALES DEL ÁMBITO LADERAS', N'PLANES URBANOS INTEGRALES DEL ÁMBITO LADERAS', 40, 56, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (293, N'PLANES VIALES', N'PLANES VIALES', 40, 57, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (294, N'PROCESOS ADMINISTRATIVOS SANCIONATORIOS', N'PROCESOS ADMINISTRATIVOS SANCIONATORIOS', 45, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (295, N'PROCESOS CONTRACTUALES DECLARADOS DESIERTOS O NO ADJUDICADOS', N'PROCESOS CONTRACTUALES DECLARADOS DESIERTOS O NO ADJUDICADOS', 45, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (296, N'PROCESOS CONTRAVENCIONALES POR FALTAS A LA CONVIVENCIA', N'PROCESOS CONTRAVENCIONALES POR FALTAS A LA CONVIVENCIA', 45, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (297, N'PROCESOS DE ACTUALIZACIÓN CATASTRAL', N'PROCESOS DE ACTUALIZACIÓN CATASTRAL', 45, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (298, N'PROCESOS DE ADQUISICIÓN DE BIENES INMUEBLES', N'PROCESOS DE ADQUISICIÓN DE BIENES INMUEBLES', 45, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (299, N'PROCESOS DE APERTURA DE CUENTAS BANCARIAS', N'PROCESOS DE APERTURA DE CUENTAS BANCARIAS', 45, 6, 1, 2, NULL)
GO
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (300, N'PROCESOS DE ASESORÍA JURÍDICA', N'PROCESOS DE ASESORÍA JURÍDICA', 45, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (301, N'PROCESOS DE ASESORÍA PSICOSOCIAL Y JURÍDICA', N'PROCESOS DE ASESORÍA PSICOSOCIAL Y JURÍDICA', 45, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (302, N'PROCESOS DE AUDITORÍAS DEL ASEGURAMIENTO EN SALUD', N'PROCESOS DE AUDITORÍAS DEL ASEGURAMIENTO EN SALUD', 45, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (303, N'PROCESOS DE COBRO COACTIVO', N'PROCESOS DE COBRO COACTIVO', 45, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (304, N'PROCESOS DE COBRO PERSUASIVO', N'PROCESOS DE COBRO PERSUASIVO', 45, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (305, N'PROCESOS DE COBROS CONCURSALES', N'PROCESOS DE COBROS CONCURSALES', 45, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (306, N'PROCESOS DE CONTRAVENCIÓN COMPLEJA DE TRÁNSITO', N'PROCESOS DE CONTRAVENCIÓN COMPLEJA DE TRÁNSITO', 45, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (307, N'PROCESOS DE CONTRAVENCIÓN SIMPLE DE TRÁNSITO', N'PROCESOS DE CONTRAVENCIÓN SIMPLE DE TRÁNSITO', 45, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (308, N'PROCESOS DE ENAJENACIÓN DE BIENES', N'PROCESOS DE ENAJENACIÓN DE BIENES', 45, 15, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (309, N'PROCESOS DE FACILIDADES DE PAGO', N'PROCESOS DE FACILIDADES DE PAGO', 45, 16, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (310, N'PROCESOS DE GESTIÓN CATASTRAL', N'PROCESOS DE GESTIÓN CATASTRAL', 45, 17, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (311, N'PROCESOS DE GESTIÓN DE COBRO DE CUOTAS PARTES JUBILATORIAS', N'PROCESOS DE GESTIÓN DE COBRO DE CUOTAS PARTES JUBILATORIAS', 45, 18, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (312, N'PROCESOS DE INSCRIPCIÓN DE ENAJENADORES', N'PROCESOS DE INSCRIPCIÓN DE ENAJENADORES', 45, 19, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (313, N'PROCESOS DE INSPECCIÓN VIGILANCIA Y CONTROL', N'PROCESOS DE INSPECCIÓN VIGILANCIA Y CONTROL', 45, 20, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (314, N'PROCESOS DE INTERVENCIÓN A PROYECTOS CONSTRUCTIVOS', N'PROCESOS DE INTERVENCIÓN A PROYECTOS CONSTRUCTIVOS', 45, 21, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (315, N'PROCESOS DE LIQUIDACIÓN DE OBLIGACIONES URBANÍSTICAS', N'PROCESOS DE LIQUIDACIÓN DE OBLIGACIONES URBANÍSTICAS', 45, 22, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (316, N'PROCESOS DE MECANISMOS ALTERNATIVOS DE SOLUCIÓN DE CONFLICTOS', N'PROCESOS DE MECANISMOS ALTERNATIVOS DE SOLUCIÓN DE CONFLICTOS', 45, 23, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (317, N'PROCESOS DE MEDIDAS CAUTELARES EN MARCO DEL CONFLICTO ARMADO', N'PROCESOS DE MEDIDAS CAUTELARES EN MARCO DEL CONFLICTO ARMADO', 45, 24, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (318, N'PROCESOS DE PRÁCTICAS LABORALES EN LOS ESTABLECIMIENTOS EDUCATIVOS', N'PROCESOS DE PRÁCTICAS LABORALES EN LOS ESTABLECIMIENTOS EDUCATIVOS', 45, 25, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (319, N'PROCESOS DE PROMOCIÓN DIFUSIÓN Y CAPACITACIÓN ELECTORAL JUVENIL', N'PROCESOS DE PROMOCIÓN DIFUSIÓN Y CAPACITACIÓN ELECTORAL JUVENIL', 45, 26, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (320, N'PROCESOS DE RECONOCIMIENTO DE LA EXISTENCIA DE EDIFICACIONES', N'PROCESOS DE RECONOCIMIENTO DE LA EXISTENCIA DE EDIFICACIONES', 45, 27, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (321, N'PROCESOS DE REGISTRO DE LA PERSONERÍA JURÍDICA DE PROPIEDAD HORIZONTAL', N'PROCESOS DE REGISTRO DE LA PERSONERÍA JURÍDICA DE PROPIEDAD HORIZONTAL', 45, 28, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (322, N'PROCESOS DE REGISTRO DE PREDIOS BALDÍOS', N'PROCESOS DE REGISTRO DE PREDIOS BALDÍOS', 45, 29, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (323, N'PROCESOS DE REMATES DE BIENES', N'PROCESOS DE REMATES DE BIENES', 45, 30, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (324, N'PROCESOS DE SANCIÓN DE ACUERDOS', N'PROCESOS DE SANCIÓN DE ACUERDOS', 45, 31, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (325, N'PROCESOS DE SEGUIMIENTO A CURADURIAS', N'PROCESOS DE SEGUIMIENTO A CURADURIAS', 45, 32, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (326, N'PROCESOS DE SELECCIÓN DE PERSONAL', N'PROCESOS DE SELECCIÓN DE PERSONAL', 45, 33, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (327, N'PROCESOS DE TÍTULOS EJECUTIVOS TRIBUTARIOS', N'PROCESOS DE TÍTULOS EJECUTIVOS TRIBUTARIOS', 45, 34, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (328, N'PROCESOS DISCIPLINARIOS', N'PROCESOS DISCIPLINARIOS', 45, 35, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (329, N'PROCESOS ELECTORALES COMUNITARIOS', N'PROCESOS ELECTORALES COMUNITARIOS', 45, 36, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (330, N'PROCESOS JUDICIALES', N'PROCESOS JUDICIALES', 45, 37, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (331, N'PROGRAMAS AGROPECUARIOS MUNICIPALES', N'PROGRAMAS AGROPECUARIOS MUNICIPALES', 46, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (332, N'PROGRAMAS AMPLIADOS DE IMNUNIZACIONES', N'PROGRAMAS AMPLIADOS DE IMNUNIZACIONES', 46, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (333, N'PROGRAMAS ANUALES MENSUALIZADOS DE CAJA', N'PROGRAMAS ANUALES MENSUALIZADOS DE CAJA', 46, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (334, N'PROGRAMAS BANCO DISTRITAL DE MEDELLÍN', N'PROGRAMAS BANCO DISTRITAL DE MEDELLÍN', 46, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (335, N'PROGRAMAS CENTRO DE PRÁCTICAS LABORALES', N'PROGRAMAS CENTRO DE PRÁCTICAS LABORALES', 46, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (336, N'PROGRAMAS DE ADOPCIÓN ANIMAL', N'PROGRAMAS DE ADOPCIÓN ANIMAL', 46, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (337, N'PROGRAMAS DE ALIMENTACIÓN ESCOLAR', N'PROGRAMAS DE ALIMENTACIÓN ESCOLAR', 46, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (338, N'PROGRAMAS DE ASEGURAMIENTO DE LA CALIDAD', N'PROGRAMAS DE ASEGURAMIENTO DE LA CALIDAD', 46, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (339, N'PROGRAMAS DE ATENCIÓN DE EMERGENCIAS POR EVENTOS CLIMATOLÓGICOS ADVERSOS', N'PROGRAMAS DE ATENCIÓN DE EMERGENCIAS POR EVENTOS CLIMATOLÓGICOS ADVERSOS', 46, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (340, N'PROGRAMAS DE AUDITORÍAS', N'PROGRAMAS DE AUDITORÍAS', 46, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (341, N'PROGRAMAS DE BIENESTAR E INCENTIVOS', N'PROGRAMAS DE BIENESTAR E INCENTIVOS', 46, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (342, N'PROGRAMAS DE BIENESTAR ESTUDIANTIL', N'PROGRAMAS DE BIENESTAR ESTUDIANTIL', 46, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (343, N'PROGRAMAS DE CREACIÓN Y FORTALECIMIENTO EMPRESARIAL', N'PROGRAMAS DE CREACIÓN Y FORTALECIMIENTO EMPRESARIAL', 46, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (344, N'PROGRAMAS DE ESTÍMULOS PARA EL ARTE Y LA CULTURA', N'PROGRAMAS DE ESTÍMULOS PARA EL ARTE Y LA CULTURA', 46, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (345, N'PROGRAMAS DE ETNOEDUCACIÓN', N'PROGRAMAS DE ETNOEDUCACIÓN', 46, 15, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (346, N'PROGRAMAS DE EXTENSIÓN AGROPECUARIA', N'PROGRAMAS DE EXTENSIÓN AGROPECUARIA', 46, 16, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (347, N'PROGRAMAS DE FAMILIAS EN ACCIÓN', N'PROGRAMAS DE FAMILIAS EN ACCIÓN', 46, 17, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (348, N'PROGRAMAS DE FORMACIÓN Y CAPACITACIÓN', N'PROGRAMAS DE FORMACIÓN Y CAPACITACIÓN', 46, 18, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (349, N'PROGRAMAS DE GESTIÓN AMBIENTAL', N'PROGRAMAS DE GESTIÓN AMBIENTAL', 46, 19, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (350, N'PROGRAMAS DE MANTENIMIENTO DE BIENES Y EQUIPOS', N'PROGRAMAS DE MANTENIMIENTO DE BIENES Y EQUIPOS', 46, 20, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (351, N'PROGRAMAS DE MÍNIMO VITAL AGUA POTABLE', N'PROGRAMAS DE MÍNIMO VITAL AGUA POTABLE', 46, 21, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (352, N'PROGRAMAS DE MONITOREO Y SEGUIMIENTO A LA SUPERVISIÓN DE LOS CONTRATOS', N'PROGRAMAS DE MONITOREO Y SEGUIMIENTO A LA SUPERVISIÓN DE LOS CONTRATOS', 46, 22, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (353, N'PROGRAMAS DE PAGO DE RECOMPENSAS', N'PROGRAMAS DE PAGO DE RECOMPENSAS', 46, 23, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (354, N'PROGRAMAS DE PEDAGOGÍA PARA LA CULTURA DE LOS DERECHOS HUMANOS', N'PROGRAMAS DE PEDAGOGÍA PARA LA CULTURA DE LOS DERECHOS HUMANOS', 46, 24, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (355, N'PROGRAMAS DE PROMOCIÓN Y PREVENCIÓN EN SALUD', N'PROGRAMAS DE PROMOCIÓN Y PREVENCIÓN EN SALUD', 46, 25, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (356, N'PROGRAMAS DE PROTECCIÓN Y BIENESTAR ANIMAL', N'PROGRAMAS DE PROTECCIÓN Y BIENESTAR ANIMAL', 46, 26, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (357, N'PROGRAMAS DE SALUD AMBIENTAL', N'PROGRAMAS DE SALUD AMBIENTAL', 46, 27, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (358, N'PROGRAMAS DE SEGURIDAD Y SALUD EN EL TRABAJO', N'PROGRAMAS DE SEGURIDAD Y SALUD EN EL TRABAJO', 46, 28, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (359, N'PROGRAMAS DE TURÍSMO', N'PROGRAMAS DE TURÍSMO', 46, 29, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (360, N'PROGRAMAS DE VIGILANCIA EPIDEMIOLÓGICA', N'PROGRAMAS DE VIGILANCIA EPIDEMIOLÓGICA', 46, 30, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (361, N'PROGRAMAS INSTITUCIONALES', N'PROGRAMAS INSTITUCIONALES', 46, 31, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (362, N'PROGRAMAS JÓVENES EN ACCIÓN', N'PROGRAMAS JÓVENES EN ACCIÓN', 46, 32, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (363, N'PROGRAMAS PARA LA CONMEMORACIÓN DEL DÍA DEL CAMPESINO', N'PROGRAMAS PARA LA CONMEMORACIÓN DEL DÍA DEL CAMPESINO', 46, 33, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (364, N'PROGRAMAS PARA LA PREVENCIÓN PROTECCIÓN Y GARANTÍA DE LOS DERECHOS JUVENILES', N'PROGRAMAS PARA LA PREVENCIÓN PROTECCIÓN Y GARANTÍA DE LOS DERECHOS JUVENILES', 46, 34, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (365, N'PROGRAMAS PARA LA PROMOCIÓN Y FORTALECIMIENTO DE ORGANIZACIONES Y REDES SOCIALES', N'PROGRAMAS PARA LA PROMOCIÓN Y FORTALECIMIENTO DE ORGANIZACIONES Y REDES SOCIALES', 46, 35, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (366, N'PROGRAMAS SOCIALES', N'PROGRAMAS SOCIALES', 46, 36, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (367, N'PROYECTOS AMBIENTALES', N'PROYECTOS AMBIENTALES', 47, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (368, N'PROYECTOS DE CONSTRUCCIÓN DE PAZ TERRITORIAL', N'PROYECTOS DE CONSTRUCCIÓN DE PAZ TERRITORIAL', 47, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (369, N'PROYECTOS DE DESARROLLO DE SOFTWARE', N'PROYECTOS DE DESARROLLO DE SOFTWARE', 47, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (370, N'PROYECTOS DE INVERSIÓN PÚBLICA', N'PROYECTOS DE INVERSIÓN PÚBLICA', 47, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (371, N'PROYECTOS EDUCATIVOS INSTITUCIONALES', N'PROYECTOS EDUCATIVOS INSTITUCIONALES', 47, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (372, N'PROYECTOS ESTRATÉGICOS INSTITUCIONALES', N'PROYECTOS ESTRATÉGICOS INSTITUCIONALES', 47, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (373, N'PROYECTOS FORTALECIMIENTO DE UNIDADES PRODUCTIVAS', N'PROYECTOS FORTALECIMIENTO DE UNIDADES PRODUCTIVAS', 47, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (374, N'PROYECTOS SOCIALES', N'PROYECTOS SOCIALES', 47, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (375, N'DEPENDENCIAS', N'NOMBRES DE LAS DEPENDENCIAS DEL DISTRITO', NULL, 1, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (376, N'DEPARTAMENTO ADMINISTRATIVO DE GESTIÓN DEL RIESGO DE DESASTRES', N'DEPARTAMENTO ADMINISTRATIVO DE GESTIÓN DEL RIESGO DE DESASTRES', 375, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (377, N'DEPARTAMENTO ADMINISTRATIVO DE PLANEACIÓN', N'DEPARTAMENTO ADMINISTRATIVO DE PLANEACIÓN', 375, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (378, N'DESPACHO DEL ALCALDE', N'DESPACHO DEL ALCALDE', 375, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (379, N'GERENCIA DE CORREGIMIENTOS', N'GERENCIA DE CORREGIMIENTOS', 375, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (380, N'GERENCIA DE DIVERSIDADES SEXUALES E IDENTIDADES DE GENERO', N'GERENCIA DE DIVERSIDADES SEXUALES E IDENTIDADES DE GENERO', 375, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (381, N'GERENCIA DE MOVILIDAD HUMANA', N'GERENCIA DE MOVILIDAD HUMANA', 375, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (382, N'GERENCIA DE PROYECTOS ESTRATÉGICOS', N'GERENCIA DE PROYECTOS ESTRATÉGICOS', 375, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (383, N'GERENCIA DEL CENTRO', N'GERENCIA DEL CENTRO', 375, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (384, N'GERENCIA ÉTNICA', N'GERENCIA ÉTNICA', 375, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (385, N'SECRETARÍA DE COMUNICACIONES', N'SECRETARÍA DE COMUNICACIONES', 375, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (386, N'SECRETARÍA DE CULTURA CIUDADANA', N'SECRETARÍA DE CULTURA CIUDADANA', 375, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (387, N'SECRETARÍA DE DESARROLLO ECONÓMICO', N'SECRETARÍA DE DESARROLLO ECONÓMICO', 375, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (388, N'SECRETARÍA DE EDUCACIÓN', N'SECRETARÍA DE EDUCACIÓN', 375, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (389, N'SECRETARÍA DE EVALUACIÓN Y CONTROL', N'SECRETARÍA DE EVALUACIÓN Y CONTROL', 375, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (390, N'SECRETARÍA DE GESTIÓN HUMANA Y SERVICIO A LA CIUDADANÍA', N'SECRETARÍA DE GESTIÓN HUMANA Y SERVICIO A LA CIUDADANÍA', 375, 15, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (391, N'SECRETARÍA DE GESTIÓN Y CONTROL TERRITORIAL', N'SECRETARÍA DE GESTIÓN Y CONTROL TERRITORIAL', 375, 16, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (392, N'SECRETARÍA DE GOBIERNO Y GESTIÓN DEL GABINETE', N'SECRETARÍA DE GOBIERNO Y GESTIÓN DEL GABINETE', 375, 17, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (393, N'SECRETARÍA DE HACIENDA', N'SECRETARÍA DE HACIENDA', 375, 18, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (394, N'SECRETARÍA DE INCLUSIÓN SOCIAL, FAMILIA Y DERECHOS HUMANOS', N'SECRETARÍA DE INCLUSIÓN SOCIAL, FAMILIA Y DERECHOS HUMANOS', 375, 19, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (395, N'SECRETARÍA DE INFRAESTRUCTURA FÍSICA', N'SECRETARÍA DE INFRAESTRUCTURA FÍSICA', 375, 20, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (396, N'SECRETARÍA DE INNOVACIÓN DIGITAL', N'SECRETARÍA DE INNOVACIÓN DIGITAL', 375, 21, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (397, N'SECRETARÍA DE LA JUVENTUD', N'SECRETARÍA DE LA JUVENTUD', 375, 22, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (398, N'SECRETARÍA DE LA NO VIOLENCIA', N'SECRETARÍA DE LA NO VIOLENCIA', 375, 23, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (399, N'SECRETARÍA DE LAS MUJERES', N'SECRETARÍA DE LAS MUJERES', 375, 24, 1, 2, NULL)
GO
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (400, N'SECRETARÍA DE MEDIO AMBIENTE', N'SECRETARÍA DE MEDIO AMBIENTE', 375, 25, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (401, N'SECRETARÍA DE MOVILIDAD', N'SECRETARÍA DE MOVILIDAD', 375, 26, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (402, N'SECRETARÍA DE PARTICIPACIÓN CIUDADANA', N'SECRETARÍA DE PARTICIPACIÓN CIUDADANA', 375, 27, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (403, N'SECRETARÍA DE SALUD', N'SECRETARÍA DE SALUD', 375, 28, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (404, N'SECRETARÍA DE SEGURIDAD Y CONVIVENCIA', N'SECRETARÍA DE SEGURIDAD Y CONVIVENCIA', 375, 29, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (405, N'SECRETARÍA DE SUMINISTROS Y SERVICIOS', N'SECRETARÍA DE SUMINISTROS Y SERVICIOS', 375, 30, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (406, N'SECRETARÍA GENERAL', N'SECRETARÍA GENERAL', 375, 31, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (407, N'SECRETARÍA PRIVADA', N'SECRETARÍA PRIVADA', 375, 32, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (408, N'TIPO_INFORMACIÓN', N'TIPO DE INFORMACIÓN - DATOS GENERALES', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (409, N'CLASIFICADA', N'CLASIFICADA', 408, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (410, N'PÚBLICA', N'PÚBLICA', 408, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (411, N'RESERVADA', N'RESERVADA', 408, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (412, N'CLASIFICADA Y RESERVADA', N'CLASIFICADA Y RESERVADA', 408, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (413, N'MEDIO_CONSERVACIÓN', N'MEDIO DE CONSERVACIÓN FÍSICO DE LA INFORMACIÓN - DATOS RESPONSABLES', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (414, N'ARCHIVO CENTRAL', N'ARCHIVO CENTRAL', 413, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (415, N'ARCHIVO DE GESTIÓN', N'ARCHIVO DE GESTIÓN', 413, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (416, N'ARCHIVO HISTÓRICO', N'ARCHIVO HISTÓRICO', 413, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (417, N'COMPUTADOR PERSONAL INSTITUCIONAL', N'COMPUTADOR PERSONAL INSTITUCIONAL', 878, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (418, N'COMPUTADOR PERSONAL NO INSTITUCIONAL', N'COMPUTADOR PERSONAL NO INSTITUCIONAL', 878, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (419, N'SERVIDOR EXTERNO A CARGO DE UN TERCERO', N'SERVIDOR EXTERNO A CARGO DE UN TERCERO', 878, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (420, N'SERVIDOR EXTERNO PROPIO.', N'SERVIDOR EXTERNO PROPIO', 878, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (421, N'SERVIDOR EXTERNO PROPIO A CARGO DE UN TERCERO', N'SERVIDOR EXTERNO PROPIO A CARGO DE UN TERCERO', 878, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (422, N'SERVIDOR PROPIO', N'SERVIDOR PROPIO', 878, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (423, N'OTRO', N'OTRO', 878, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (424, N'FORMATO_RAI', N'FORMATO - DATOS RESPONSABLES', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (425, N'ANIMACIÓN: .SWF', N'ANIMACIÓN: .SWF', 424, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (426, N'AUDIO: .MID', N'AUDIO: .MID', 424, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (427, N'AUDIO: .MP3', N'AUDIO: .MP3', 424, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (428, N'AUDIO: .OGG', N'AUDIO: .OGG', 424, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (429, N'AUDIO: .WAV', N'AUDIO: .WAV', 424, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (430, N'BASES DE DATOS: .MDB', N'BASES DE DATOS: .MDB', 424, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (431, N'BASES DE DATOS: .SQL', N'BASES DE DATOS: .SQL', 424, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (432, N'COMPRESIÓN: .RAR', N'COMPRESIÓN: .RAR', 424, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (433, N'COMPRESIÓN: .ZIP', N'COMPRESIÓN: .ZIP', 424, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (434, N'DATOS ESPACIALES: .SHP', N'DATOS ESPACIALES: .SHP', 424, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (435, N'DOCUMENTOS GRÁFICOS: .GIF', N'DOCUMENTOS GRÁFICOS: .GIF', 424, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (436, N'DOCUMENTOS GRÁFICOS: .JPG', N'DOCUMENTOS GRÁFICOS: .JPG', 424, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (437, N'DOCUMENTOS GRÁFICOS: .PNG', N'DOCUMENTOS GRÁFICOS: .PNG', 424, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (438, N'DOCUMENTOS GRÁFICOS: .TIF', N'DOCUMENTOS GRÁFICOS: .TIF', 424, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (439, N'DOCUMENTOS GRÁFICOS: .TTF', N'DOCUMENTOS GRÁFICOS: .TTF', 424, 15, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (440, N'FÍSICO O PAPEL', N'FÍSICO O PAPEL', 424, 16, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (441, N'HOJAS DE CÁLCULO: .CSV', N'HOJAS DE CÁLCULO: .CSV', 424, 17, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (442, N'HOJAS DE CÁLCULO: .XLM', N'HOJAS DE CÁLCULO: .XLM', 424, 18, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (443, N'HOJAS DE CÁLCULO: .XLS', N'HOJAS DE CÁLCULO: .XLS', 424, 19, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (444, N'HOJAS DE CÁLCULO: .XLT', N'HOJAS DE CÁLCULO: .XLT', 424, 20, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (445, N'PRESENTACIONES: .PPS', N'PRESENTACIONES: .PPS', 424, 21, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (446, N'PRESENTACIONES: .PPT', N'PRESENTACIONES: .PPT', 424, 22, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (447, N'SITIOS WEB: .HTML', N'SITIOS WEB: .HTML', 424, 23, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (448, N'TEXTO: .DOC', N'TEXTO: .DOC', 424, 24, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (449, N'TEXTO: .PDF', N'TEXTO: .PDF', 424, 25, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (450, N'TEXTO: .RTF', N'TEXTO: .RTF', 424, 26, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (451, N'TEXTO: .TXT', N'TEXTO: .TXT', 424, 27, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (452, N'VIDEO: .AVI', N'VIDEO: .AVI', 424, 28, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (453, N'VIDEO: .MOV', N'VIDEO: .MOV', 424, 29, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (454, N'VIDEO: .MPEG', N'VIDEO: .MPEG', 424, 30, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (455, N'OTRO', N'OTRO', 424, 31, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (456, N'FORMA_ACCESO', N'FORMA DE ACCESO A LA INFORMACIÓN - DATOS RESPONSABLES', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (457, N'PUBLICADA', N'PUBLICADA', 456, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (458, N'DISPONIBLE CON SOLICITUD', N'DISPONIBLE CON SOLICITUD', 456, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (459, N'NO DISPONIBLE', N'NO DISPONIBLE', 456, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (460, N'SOPORTE_RAI', N'SOPORTE - DATOS RESPONSABLES', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (461, N'SOPORTE PAPEL', N'SOPORTE PAPEL', 460, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (462, N'SOPORTE MAGNÉTICO', N'SOPORTE MAGNÉTICO', 460, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (463, N'AMBOS', N'AMBOS', 460, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (464, N'DECISION', N'¿ES INFORMACIÓN OBLIGATORIA? - DATOS GENERALES', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (465, N'SÍ', N'SÍ', 464, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (466, N'NO', N'NO', 464, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (467, N'NO SABE', N'NO SABE', 464, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (468, N'TIPO_NORMA', N'INDIQUE EL TIPO DE NORMA QUE OBLIGA - DATOS GENERALES', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (469, N'TRATADO INTERNACIONAL', N'TRATADO INTERNACIONAL', 468, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (470, N'CONSTITUCIÓN POLÍTICA', N'CONSTITUCIÓN POLÍTICA', 468, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (471, N'LEY', N'LEY', 468, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (472, N'DECRETO CON FUERZA DE LEY', N'DECRETO CON FUERZA DE LEY', 468, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (473, N'DECRETO NACIONAL', N'DECRETO NACIONAL', 468, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (474, N'RESOLUCIÓN NACIONAL', N'RESOLUCIÓN NACIONAL', 468, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (475, N'CIRCULAR NACIONAL', N'CIRCULAR NACIONAL', 468, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (476, N'ORDENANZA DEPARTAMENTAL', N'ORDENANZA DEPARTAMENTAL', 468, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (477, N'DECRETO DEPARTAMENTAL CON FUERZA DE ORDENANZA', N'DECRETO DEPARTAMENTAL CON FUERZA DE ORDENANZA', 468, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (478, N'DECRETO DEPARTAMENTAL', N'DECRETO DEPARTAMENTAL', 468, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (479, N'RESOLUCIÓN DEPARTAMENTAL', N'RESOLUCIÓN DEPARTAMENTAL', 468, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (480, N'CIRCULAR DEPARTAMENTAL', N'CIRCULAR DEPARTAMENTAL', 468, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (481, N'ACUERDO DISTRITAL', N'ACUERDO DISTRITAL', 468, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (482, N'DECRETO DISTRITAL CON FUERZA DE ACUERDO', N'DECRETO DISTRITAL CON FUERZA DE ACUERDO', 468, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (483, N'RESOLUCIÓN DISTRITAL', N'RESOLUCIÓN DISTRITAL', 468, 15, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (484, N'CIRCULAR DISTRITRAL', N'CIRCULAR DISTRITRAL', 468, 16, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (485, N'FRECUENCIA_ACTUALIZACIÓN', N'FRECUENCIA DE ACTUALIZACIÓN - CARACTERÍSTICAS', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (486, N'INHABITUAL', N'INHABITUAL', 485, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (487, N'MENSUAL', N'MENSUAL', 485, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (488, N'BIMENSUAL', N'BIMENSUAL', 485, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (489, N'TRIMESTRAL', N'TRIMESTRAL', 485, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (490, N'CUATRIMESTRAL', N'CUATRIMESTRAL', 485, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (491, N'SEMESTRAL', N'SEMESTRAL', 485, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (492, N'ANUAL', N'ANUAL', 485, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (493, N'BIENAL', N'BIENAL', 485, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (494, N'TRIENAL', N'TRIENAL', 485, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (495, N'CUATRIENAL', N'CUATRIENAL', 485, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (496, N'MAYOR A CUATRO AÑOS', N'MAYOR A CUATRO AÑOS', 485, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (497, N'NOMBRE_MENU', N'NOMBRE MENÚ - DATOS GENERALES', NULL, NULL, 1, 1, CAST(N'2024-01-13T09:11:05.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (498, N'TRANSPARENCIA', N'TRANSPARENCIA', 497, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (499, N'PARTICIPA', N'PARTICIPA', 497, 2, 1, 2, NULL)
GO
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (500, N'SERVICIO A LA CIUDADANÍA', N'SERVICIO A LA CIUDADANÍA', 497, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (501, N'OTRO SITIO DEL PORTAL INSITUCIONAL', N'OTRO SITIO DEL PORTAL INSITUCIONAL', 497, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (502, N'TIPO_PUBLICACIÓN', N'TIPO PUBLICACIÓN - ACTIVOS PUBLICADOS', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (503, N'OBLIGATORIA TRANSPARENCIA', N'OBLIGATORIA TRANSPARENCIA', 502, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (504, N'OBLIGATORIA OTRAS NORMAS', N'OBLIGATORIA OTRAS NORMAS', 502, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (505, N'NO OBLIGATORIA', N'NO OBLIGATORIA', 502, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (506, N'NO SABE', N'NO SABE', 502, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (507, N'TIEMPO_PERMANENCIA', N'TIEMPO DE PERMANENCIA - ACTIVOS PUBLICADOS', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (508, N'DE 1 A 30 DÍAS', N'DE 1 A 30 DÍAS', 507, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (509, N'DE 31 A 60 DÍAS', N'DE 31 A 60 DÍAS', 507, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (510, N'DE 61 A 120 DÍAS', N'DE 61 A 120 DÍAS', 507, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (511, N'DE 121 A 180 DÍAS', N'DE 121 A 180 DÍAS', 507, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (512, N'DE 181 A 365 DÍAS', N'DE 181 A 365 DÍAS', 507, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (513, N'DE 1 A 2 AÑOS', N'DE 1 A 2 AÑOS', 507, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (514, N'DE 3 A 4 AÑOS', N'DE 3 A 4 AÑOS', 507, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (515, N'MÁS DE 4 AÑOS', N'MÁS DE 4 AÑOS', 507, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (516, N'MODALIDAD_EXCEPCIÓN', N'CLASIFICACION DE LA EXCEPCION - ACTIVOS RESTRICCIÓN', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (517, N'TOTAL', N'TOTAL', 516, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (518, N'PARCIAL', N'PARCIAL', 516, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (519, N'INFORMACION_EXCEPCIONADA', N'ESPECIFICACION INFORMACION EXCEPCIONADA - ACTIVOS RESTRICCIÓN', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (520, N'NO SE PUEDE ENTREGAR NINGÚN TIPO DE INFORMACIÓN', N'NO SE PUEDE ENTREGAR NINGÚN TIPO DE INFORMACIÓN', 519, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (521, N'SE PUEDE ENTREGAR INFORMACIÓN ANONIMIZADA A SOLICITUD', N'SE PUEDE ENTREGAR INFORMACIÓN ANONIMIZADA A SOLICITUD', 519, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (522, N'SE PUEDE ENTREGAR INFORMACIÓN ESTADÍSTICA A SOLICITUD', N'SE PUEDE ENTREGAR INFORMACIÓN ESTADÍSTICA A SOLICITUD', 519, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (523, N'SE PUEDEN ENTREGAR DATOS GLOBALES A SOLICITUD', N'SE PUEDEN ENTREGAR DATOS GLOBALES A SOLICITUD', 519, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (524, N'TIPO_DOCUMENTO', N'TIPO DOCUMENTO IDENTIDAD RESPONSABLE CALIFICAR LA EXCEPCION - ACTIVOS RESTRICCIÓN', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (525, N'CEDULA DE CIUDADANÍA', N'CEDULA DE CIUDADANÍA', 524, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (526, N'CEDULA DE EXTRANJERÍA', N'CEDULA DE EXTRANJERÍA', 524, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (527, N'DOCUMENTO EXTRANJERO', N'DOCUMENTO EXTRANJERO', 524, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (528, N'PASAPORTE', N'PASAPORTE', 524, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (529, N'PERMISO ESPECIAL DE PERMANENCIA', N'PERMISO ESPECIAL DE PERMANENCIA', 524, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (530, N'REGISTRO CIVIL', N'REGISTRO CIVIL', 524, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (531, N'TARJETA DE IDENTIDAD', N'TARJETA DE IDENTIDAD', 524, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (532, N'SIN DOCUMENTO', N'SIN DOCUMENTO', 524, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (533, N'IDIOMA', N'IDIOMA, CARACTERÍSTICAS', NULL, NULL, 1, 1, CAST(N'2024-01-02T11:08:51.000' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (534, N'ESPAÑOL', N'IDIOMA ESPAÑOL', 533, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (535, N'INGLÉS', N'IDIOMA INGLÉS', 533, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (536, N'FRANCÉS', N'IDIOMA FRANCÉS', 533, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (537, N'PORTUGUÉS', N'IDIOMA PORTUGUÉS', 533, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (538, N'CHINO MANDARÍN', N'IDIOMA CHINO MANDARÍN', 533, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (539, N'HINDI', N'IDIOMA HINDI', 533, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (540, N'ALEMÁN', N'IDIOMA ALEMÁN', 533, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (541, N'AMÁRICO', N'IDIOMA AMÁRICO', 533, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (542, N'ÁRABE ARGELINO', N'IDIOMA ÁRABE ARGELINO', 533, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (543, N'ÁRABE EGIPCIO', N'IDIOMA ÁRABE EGIPCIO', 533, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (544, N'ÁRABE ESTÁNDAR MODERNO', N'IDIOMA ÁRABE ESTÁNDAR MODERNO', 533, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (545, N'ÁRABE SUDANÉS', N'IDIOMA ÁRABE SUDANÉS', 533, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (546, N'BENGALÍ', N'IDIOMA BENGALÍ', 533, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (547, N'BHOSHPURI', N'IDIOMA BHOSHPURI', 533, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (548, N'BIRMANO', N'IDIOMA BIRMANO', 533, 15, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (549, N'CANARÉS', N'IDIOMA CANARÉS', 533, 16, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (550, N'CHINO HAKKA', N'IDIOMA CHINO HAKKA', 533, 17, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (551, N'CHINO JIN', N'IDIOMA CHINO JIN', 533, 18, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (552, N'CHINO MIN NÁN', N'IDIOMA CHINO MIN NÁN', 533, 19, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (553, N'CHINO WU', N'IDIOMA CHINO WU', 533, 20, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (554, N'CHINO YUE (INCLUYE CANTONÉS)', N'IDIOMA CHINO YUE (INCLUYE CANTONÉS)', 533, 21, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (555, N'COREANO', N'IDIOMA COREANO', 533, 22, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (556, N'GUYARATI', N'IDIOMA GUYARATI', 533, 23, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (557, N'HAUSA', N'IDIOMA HAUSA', 533, 24, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (558, N'INDONESIO', N'IDIOMA INDONESIO', 533, 25, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (559, N'ITALIANO', N'IDIOMA ITALIANO', 533, 26, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (560, N'JAPONÉS', N'IDIOMA JAPONÉS', 533, 27, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (561, N'JAVANÉS', N'IDIOMA JAVANÉS', 533, 28, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (562, N'LINGALA', N'IDIOMA LINGALA', 533, 29, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (563, N'MARATÍ', N'IDIOMA MARATÍ', 533, 30, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (564, N'PANYABÍ', N'IDIOMA PANYABÍ', 533, 31, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (565, N'PANYABÍ OCCIDENTAL', N'IDIOMA PANYABÍ OCCIDENTAL', 533, 32, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (566, N'PERSA IRANÍ', N'IDIOMA PERSA IRANÍ', 533, 33, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (567, N'POLACO', N'IDIOMA POLACO', 533, 34, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (568, N'RUSO', N'IDIOMA RUSO', 533, 35, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (569, N'SUAJILI', N'IDIOMA SUAJILI', 533, 36, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (570, N'TAGALO', N'IDIOMA TAGALO', 533, 37, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (571, N'TAILANDÉS', N'IDIOMA TAILANDÉS', 533, 38, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (572, N'TAMIL', N'IDIOMA TAMIL', 533, 39, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (573, N'TELUGÚ', N'IDIOMA TELUGÚ', 533, 40, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (574, N'TURCO', N'IDIOMA TURCO', 533, 41, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (575, N'URDU', N'IDIOMA URDU', 533, 42, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (576, N'VIETNAMITA', N'IDIOMA VIETNAMITA', 533, 43, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (577, N'YORUBA', N'IDIOMA YORUBA', 533, 44, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (578, N'NO APLICA', N'NO APLICA', 497, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (581, N'OBJETIVO_LEGÍTIMO_CLASIFICADOS', N'OBJETIVO LEGÍTIMO CLASIFICADOS - ACTIVOS RESTRICCIÓN', NULL, NULL, 1, 1, CAST(N'2024-01-15T12:31:50.483' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (582, N'Literal a) del Articulo 18 de la Ley 1712 de 2014 "El derecho de toda persona a la intimidad, bajo las limitaciones propias que impone la condición de servidor público, en concordancia con lo estipulado por el artículo 24 de la Ley 1437 de 2011"', N'Literal a) del Articulo 18 de la Ley 1712 de 2014 "El derecho de toda persona a la intimidad, bajo las limitaciones propias que impone la condición de servidor público, en concordancia con lo estipulado por el artículo 24 de la Ley 1437 de 2011"', 581, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (583, N'Literal b) del Articulo 18 de la Ley 1712 de 2014 "El derecho de toda persona a la vida, la salud o la seguridad"', N'Literal b) del Articulo 18 de la Ley 1712 de 2014 "El derecho de toda persona a la vida, la salud o la seguridad"', 581, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (584, N'Literal c) del Articulo 18 de la Ley 1712 de 2014 "Los secretos comerciales, industriales y profesionales"', N'Literal c) del Articulo 18 de la Ley 1712 de 2014 "Los secretos comerciales, industriales y profesionales"', 581, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (585, N'Literal a) del Articulo 19 de la Ley 1712 de 2014 "La defensa y seguridad nacional"', N'Literal a) del Articulo 19 de la Ley 1712 de 2014 "La defensa y seguridad nacional"', 732, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (586, N'Literal b) del Articulo 19 de la Ley 1712 de 2014 "La seguridad pública"', N'Literal b) del Articulo 19 de la Ley 1712 de 2014 "La seguridad pública"', 732, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (587, N'Literal c) del Articulo 19 de la Ley 1712 de 2014 "Las relaciones internacionales"', N'Literal c) del Articulo 19 de la Ley 1712 de 2014 " Las relaciones internacionales"', 732, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (588, N'Literal d) del Articulo 19 de la Ley 1712 de 2014 "La prevención, investigación y persecución de los delitos y las faltas disciplinarias, mientras que no se haga efectiva la medida de aseguramiento o se formule pliego de cargos, según el caso"', N'Literal d) del Articulo 19 de la Ley 1712 de 2014 "La prevención, investigación y persecución de los delitos y las faltas disciplinarias, mientras que no se haga efectiva la medida de aseguramiento o se formule pliego de cargos, según el caso"', 732, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (589, N'Literal e) del Articulo 19 de la Ley 1712 de 2014 " El debido proceso y la igualdad de las partes en los procesos judiciales"', N'Literal e) del Articulo 19 de la Ley 1712 de 2014 " El debido proceso y la igualdad de las partes en los procesos judiciales"', 732, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (590, N'Literal f) del Articulo 19 de la Ley 1712 de 2014 "La administración efectiva de la justicia"', N'Literal f) del Articulo 19 de la Ley 1712 de 2014 "La administración efectiva de la justicia"', 732, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (591, N'Literal g) del Articulo 19 de la Ley 1712 de 2014 "Los derechos de la infancia y la adolescencia"', N'Literal g) del Articulo 19 de la Ley 1712 de 2014 "Los derechos de la infancia y la adolescencia"', 732, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (592, N'Literal h) del Articulo 19 de la Ley 1712 de 2014 "La estabilidad macroeconómica y financiera del país"', N'Literal h) del Articulo 19 de la Ley 1712 de 2014 "La estabilidad macroeconómica y financiera del país"', 732, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (593, N'Literal i) del Articulo 19 de la Ley 1712 de 2014 "La salud pública"', N'Literal i) del Articulo 19 de la Ley 1712 de 2014 "La salud pública"', 732, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (594, N'Literal a) del Articulo 18 de la Ley 1712 de 2014 "El derecho de toda persona a la intimidad, bajo las limitaciones propias que impone la condición de servidor público, en concordancia con lo estipulado por el artículo 24 de la Ley 1437 de 2011"', N'Literal a) del Articulo 18 de la Ley 1712 de 2014 "El derecho de toda persona a la intimidad, bajo las limitaciones propias que impone la condición de servidor público, en concordancia con lo estipulado por el artículo 24 de la Ley 1437 de 2011"', 581, 1, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (595, N'Literal b) del Articulo 18 de la Ley 1712 de 2014 "El derecho de toda persona a la vida, la salud o la seguridad"', N'Literal b) del Articulo 18 de la Ley 1712 de 2014 "El derecho de toda persona a la vida, la salud o la seguridad"', 581, 2, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (596, N'Literal c) del Articulo 18 de la Ley 1712 de 2014 "Los secretos comerciales, industriales y profesionales"', N'Literal c) del Articulo 18 de la Ley 1712 de 2014 "Los secretos comerciales, industriales y profesionales"', 581, 3, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (597, N'Literal a) del Articulo 19 de la Ley 1712 de 2014 "La defensa y seguridad nacional"', N'Literal a) del Articulo 19 de la Ley 1712 de 2014 "La defensa y seguridad nacional"', 581, 4, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (598, N'Literal b) del Articulo 19 de la Ley 1712 de 2014 "La seguridad pública"', N'Literal b) del Articulo 19 de la Ley 1712 de 2014 "La seguridad pública"', 581, 5, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (599, N'Literal c) del Articulo 19 de la Ley 1712 de 2014 "Las relaciones internacionales"', N'Literal c) del Articulo 19 de la Ley 1712 de 2014 " Las relaciones internacionales"', 581, 6, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (600, N'Literal d) del Articulo 19 de la Ley 1712 de 2014 "La prevención, investigación y persecución de los delitos y las faltas disciplinarias, mientras que no se haga efectiva la medida de aseguramiento o se formule pliego de cargos, según el caso"', N'Literal d) del Articulo 19 de la Ley 1712 de 2014 "La prevención, investigación y persecución de los delitos y las faltas disciplinarias, mientras que no se haga efectiva la medida de aseguramiento o se formule pliego de cargos, según el caso"', 581, 7, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (601, N'Literal e) del Articulo 19 de la Ley 1712 de 2014 " El debido proceso y la igualdad de las partes en los procesos judiciales"', N'Literal e) del Articulo 19 de la Ley 1712 de 2014 " El debido proceso y la igualdad de las partes en los procesos judiciales"', 581, 8, 0, 2, NULL)
GO
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (602, N'Literal f) del Articulo 19 de la Ley 1712 de 2014 "La administración efectiva de la justicia"', N'Literal f) del Articulo 19 de la Ley 1712 de 2014 "La administración efectiva de la justicia"', 581, 9, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (603, N'Literal g) del Articulo 19 de la Ley 1712 de 2014 "Los derechos de la infancia y la adolescencia"', N'Literal g) del Articulo 19 de la Ley 1712 de 2014 "Los derechos de la infancia y la adolescencia"', 581, 10, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (604, N'Literal h) del Articulo 19 de la Ley 1712 de 2014 "La estabilidad macroeconómica y financiera del país"', N'Literal h) del Articulo 19 de la Ley 1712 de 2014 "La estabilidad macroeconómica y financiera del país"', 581, 11, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (605, N'Literal i) del Articulo 19 de la Ley 1712 de 2014 "La salud pública"', N'Literal i) del Articulo 19 de la Ley 1712 de 2014 "La salud pública"', 581, 12, 0, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (606, N'ESPECIFICACIÓN', N'ESPECIFICACIÓN INFORMACIÓN EXCEPCIONADA', NULL, NULL, 1, 1, CAST(N'2024-01-16T10:07:08.910' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (607, N'NO SE PUEDE ENTREGAR NINGÚN TIPO DE INFORMACIÓN', N'NO SE PUEDE ENTREGAR NINGÚN TIPO DE INFORMACIÓN', 606, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (608, N'SE PUEDE ENTREGAR INFORMACIÓN ANONIMIZADA A SOLICITUD', N'SE PUEDE ENTREGAR INFORMACIÓN ANONIMIZADA A SOLICITUD', 606, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (609, N'SE PUEDE ENTREGAR INFORMACIÓN ESTADÍSTICA A SOLICITUD', N'SE PUEDE ENTREGAR INFORMACIÓN ESTADÍSTICA A SOLICITUD', 606, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (610, N'SE PUEDEN ENTREGAR DATOS GLOBALES A SOLICITUD', N'SE PUEDEN ENTREGAR DATOS GLOBALES A SOLICITUD', 606, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (611, N'CLASIFICACIÓN', N'CLASIFICACION DE LA EXCEPCIÓN', NULL, NULL, 1, 1, CAST(N'2024-01-16T10:09:51.173' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (612, N'PARCIAL', N'PARCIAL', 611, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (613, N'TOTAL', N'TOTAL', 611, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (614, N'INFORMACIÓN DE LA ENTIDAD', N'INFORMACIÓN DE LA ENTIDAD', 498, 1, 1, 1, CAST(N'2024-01-16T14:36:04.493' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (615, N'NORMATIVA DE LA ALCALDÍA DE MEDELLÍN', N'NORMATIVA DE LA ALCALDÍA DE MEDELLÍN', 498, 2, 1, 1, CAST(N'2024-01-16T14:36:04.503' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (616, N'CONTRATACIÓN', N'CONTRATACIÓN', 498, 3, 1, 1, CAST(N'2024-01-16T14:36:53.710' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (617, N'PLANEACIÓN, PRESUPUESTO E INFORMES', N'PLANEACIÓN, PRESUPUESTO E INFORMES', 498, 4, 1, 1, CAST(N'2024-01-16T14:36:53.720' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (618, N'TRÁMITES Y SERVICIOS', N'TRÁMITES Y SERVICIOS', 498, 5, 1, 1, CAST(N'2024-01-16T14:36:53.720' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (619, N'PARTICIPA', N'PARTICIPA', 498, 6, 1, 1, CAST(N'2024-01-19T19:31:01.957' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (620, N'DATOS ABIERTOS', N'DATOS ABIERTOS', 498, 7, 1, 1, CAST(N'2024-01-19T19:31:01.970' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (621, N'INFORMACIÓN ESPECÍFICA PARA GRUPOS DE INTERÉS', N'INFORMACIÓN ESPECÍFICA PARA GRUPOS DE INTERÉS', 498, 8, 1, 1, CAST(N'2024-01-19T19:31:01.970' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (622, N'OBLIGACIÓN DE REPORTE DE INFORMACIÓN ESPECÍFICA POR PARTE DE LA ENTIDAD', N'OBLIGACIÓN DE REPORTE DE INFORMACIÓN ESPECÍFICA POR PARTE DE LA ENTIDAD', 498, 9, 1, 1, CAST(N'2024-01-19T19:31:01.970' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (623, N'INFORMACIÓN TRIBUTARIA EN ENTIDADES TERRITORIALES LOCALES', N'INFORMACIÓN TRIBUTARIA EN ENTIDADES TERRITORIALES LOCALES', 498, 10, 1, 1, CAST(N'2024-01-19T19:31:01.970' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (624, N'TRANSPARENCIA PASIVA', N'TRANSPARENCIA PASIVA', 498, 11, 1, 1, CAST(N'2024-01-19T19:31:01.970' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (625, N'PROTECCIÓN DE DATOS PERSONALES', N'PROTECCIÓN DE DATOS PERSONALES', 498, 12, 1, 1, CAST(N'2024-01-19T19:31:01.970' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (626, N'NO APLICA', N'NO APLICA', 498, 13, 1, 1, CAST(N'2024-01-19T19:31:01.970' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (627, N'DIAGNÓSTICO E IDENTIFICACIÓN DE PROBLEMAS', N'DIAGNÓSTICO E IDENTIFICACIÓN DE PROBLEMAS', 499, 1, 1, 1, CAST(N'2024-01-19T19:31:01.970' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (628, N'PLANEACIÓN Y PRESUPUESTO PARTICIPATIVO', N'PLANEACIÓN Y PRESUPUESTO PARTICIPATIVO', 499, 2, 1, 1, CAST(N'2024-01-19T19:31:01.970' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (629, N'CONSULTA CIUDADANA', N'CONSULTA CIUDADANA', 499, 3, 1, 1, CAST(N'2024-01-19T19:31:01.970' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (630, N'COLABORACIÓN E INNOVACIÓN', N'COLABORACIÓN E INNOVACIÓN', 499, 4, 1, 1, CAST(N'2024-01-19T22:32:56.900' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (631, N'RENDICIÓN DE CUENTAS', N'RENDICIÓN DE CUENTAS', 499, 5, 1, 1, CAST(N'2024-01-19T22:32:56.913' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (632, N'CONTROL SOCIAL', N'CONTROL SOCIAL', 499, 6, 1, 1, CAST(N'2024-01-19T22:32:56.913' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (633, N'NO APLICA', N'NO APLICA', 499, 7, 1, 1, CAST(N'2024-01-19T22:32:56.913' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (634, N'OFERTA INSTITUCIONAL', N'OFERTA INSTITUCIONAL', 500, 1, 1, 1, CAST(N'2024-01-19T22:35:51.673' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (635, N'CANALES DE ATENCIÓN Y FICHO DIGITAL', N'CANALES DE ATENCIÓN Y FICHO DIGITAL', 500, 2, 1, 1, CAST(N'2024-01-19T22:35:51.673' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (636, N'PETICIONES, QUEJAS, RECLAMOS, SUGERENCIAS Y DENUNCIAS (PQRSD)', N'PETICIONES, QUEJAS, RECLAMOS, SUGERENCIAS Y DENUNCIAS (PQRSD)', 500, 3, 1, 1, CAST(N'2024-01-19T22:35:51.673' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (637, N'NO APLICA', N'NO APLICA', 500, 4, 1, 1, CAST(N'2024-01-19T22:35:51.673' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (638, N'MISIÓN, VISIÓN, FUNCIONES Y DEBERES', N'MISIÓN, VISIÓN, FUNCIONES Y DEBERES', 614, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (639, N'ESTRUCTURA ORGÁNICA Y ORGANIGRAMA', N'ESTRUCTURA ORGÁNICA Y ORGANIGRAMA', 614, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (640, N'MAPAS Y CARTAS DESCRIPTIVAS DE LOS PROCESOS', N'MAPAS Y CARTAS DESCRIPTIVAS DE LOS PROCESOS', 614, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (641, N'DIRECTORIO INSTITUCIONAL INCLUYENDO SEDES, OFICINAS, SUCURSALES, O REGIONALES Y DEPENDENCIAS', N'DIRECTORIO INSTITUCIONAL INCLUYENDO SEDES, OFICINAS, SUCURSALES, O REGIONALES Y DEPENDENCIAS', 614, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (642, N'DIRECTORIO DE SERVIDORES PÚBLICOS, EMPLEADOS O CONTRATISTAS', N'DIRECTORIO DE SERVIDORES PÚBLICOS, EMPLEADOS O CONTRATISTAS', 614, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (643, N'DIRECTORIO DE ENTIDADES', N'DIRECTORIO DE ENTIDADES', 614, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (644, N'DIRECTORIO DE AGREMIACIONES O ASOCIACIONES', N'DIRECTORIO DE AGREMIACIONES O ASOCIACIONES', 614, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (645, N'SERVICIO AL PÚBLICO, NORMAS, FORMULARIOS Y PROTOCOLOS DE ATENCIÓN', N'SERVICIO AL PÚBLICO, NORMAS, FORMULARIOS Y PROTOCOLOS DE ATENCIÓN', 614, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (646, N'PROCEDIMIENTOS QUE SE SIGUEN PARA TOMAR DECISIONES EN LAS DIFERENTES ÁREAS', N'PROCEDIMIENTOS QUE SE SIGUEN PARA TOMAR DECISIONES EN LAS DIFERENTES ÁREAS', 614, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (647, N'MECANISMO DE PRESENTACIÓN DIRECTA DE SOLICITUDES, QUEJAS Y RECLAMOS A DISPOSICIÓN DEL PÚBLICO EN RELACIÓN CON ACCIONES U OMISIONES DEL SUJETO OBLIGADO', N'MECANISMO DE PRESENTACIÓN DIRECTA DE SOLICITUDES, QUEJAS Y RECLAMOS A DISPOSICIÓN DEL PÚBLICO EN RELACIÓN CON ACCIONES U OMISIONES DEL SUJETO OBLIGADO', 614, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (648, N'CALENDARIO DE ACTIVIDADES Y EVENTOS', N'CALENDARIO DE ACTIVIDADES Y EVENTOS', 614, 11, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (649, N'INFORMACIÓN SOBRE DECISIONES QUE PUEDEN AFECTAR AL PÚBLICO', N'INFORMACIÓN SOBRE DECISIONES QUE PUEDEN AFECTAR AL PÚBLICO', 614, 12, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (650, N'ENTES Y AUTORIDADES QUE LO VIGILAN', N'ENTES Y AUTORIDADES QUE LO VIGILAN', 614, 13, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (651, N'PUBLICACIÓN DE HOJAS DE VIDA', N'PUBLICACIÓN DE HOJAS DE VIDA', 614, 14, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (652, N'NORMATIVA DE LA ENTIDAD O AUTORIDAD', N'NORMATIVA DE LA ENTIDAD O AUTORIDAD', 615, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (653, N'BÚSQUEDA DE NORMAS', N'BÚSQUEDA DE NORMAS', 615, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (654, N'PROYECTOS DE NORMAS PARA COMENTARIOS', N'PROYECTOS DE NORMAS PARA COMENTARIOS', 615, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (655, N'PLAN ANUAL DE ADQUISICIONES', N'PLAN ANUAL DE ADQUISICIONES', 616, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (656, N'PUBLICACIÓN DE LA INFORMACIÓN CONTRACTUAL', N'PUBLICACIÓN DE LA INFORMACIÓN CONTRACTUAL', 616, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (657, N'PUBLICACIÓN DE LA EJECUCIÓN DE LOS CONTRATOS', N'PUBLICACIÓN DE LA EJECUCIÓN DE LOS CONTRATOS', 616, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (658, N'MANUAL DE CONTRATACIÓN, ADQUISICIÓN Y/O COMPRAS', N'MANUAL DE CONTRATACIÓN, ADQUISICIÓN Y/O COMPRAS', 616, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (659, N'FORMATOS O MODELO DE CONTRATOS O PLIEGOS TIPO', N'FORMATOS O MODELO DE CONTRATOS O PLIEGOS TIPO', 616, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (660, N'PRESUPUESTO GENERAL DE INGRESOS, GASTOS E INVERSIÓN', N'PRESUPUESTO GENERAL DE INGRESOS, GASTOS E INVERSIÓN', 617, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (661, N'EJECUCIÓN PRESUPUESTAL', N'EJECUCIÓN PRESUPUESTAL', 617, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (662, N'PLAN DE ACCIÓN', N'PLAN DE ACCIÓN', 617, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (663, N'PROYECTOS DE INVERSIÓN', N'PROYECTOS DE INVERSIÓN', 617, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (664, N'INFORMES DE EMPALME', N'INFORMES DE EMPALME', 617, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (665, N'INFORMACIÓN PÚBLICA Y/O RELEVANTE', N'INFORMACIÓN PÚBLICA Y/O RELEVANTE', 617, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (666, N'INFORMES DE GESTIÓN, EVALUACIÓN Y AUDITORÍA', N'INFORMES DE GESTIÓN, EVALUACIÓN Y AUDITORÍA', 617, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (667, N'INFORMES DE LA OFICINA DE CONTROL INTERNO', N'INFORMES DE LA OFICINA DE CONTROL INTERNO', 617, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (668, N'INFORME SOBRE DEFENSA PÚBLICA Y PREVENCIÓN DEL DAÑO ANTIJURÍDICO', N'INFORME SOBRE DEFENSA PÚBLICA Y PREVENCIÓN DEL DAÑO ANTIJURÍDICO', 617, 9, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (669, N'INFORMES TRIMESTRALES SOBRE ACCESO A INFORMACIÓN, QUEJAS Y RECLAMOS', N'INFORMES TRIMESTRALES SOBRE ACCESO A INFORMACIÓN, QUEJAS Y RECLAMOS', 617, 10, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (670, N'TRÁMITES Y SERVICIOS', N'TRÁMITES Y SERVICIOS', 618, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (671, N'INSTRUMENTOS DE GESTIÓN DE LA INFORMACIÓN', N'INSTRUMENTOS DE GESTIÓN DE LA INFORMACIÓN', 620, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (672, N'SECCIÓN DE DATOS ABIERTOS', N'SECCIÓN DE DATOS ABIERTOS', 620, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (673, N'INFORMACIÓN PARA NIÑOS, NIÑAS Y ADOLESCENTES', N'INFORMACIÓN PARA NIÑOS, NIÑAS Y ADOLESCENTES', 621, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (674, N'INFORMACIÓN PARA MUJERES', N'INFORMACIÓN PARA MUJERES', 621, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (675, N'INFORMACIÓN PARA OTROS GRUPOS DE INTERÉS', N'INFORMACIÓN PARA OTROS GRUPOS DE INTERÉS', 621, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (676, N'OBLIGACIÓN DE REPORTE DE INFORMACIÓN ESPECÍFICA POR PARTE DE LA', N'OBLIGACIÓN DE REPORTE DE INFORMACIÓN ESPECÍFICA POR PARTE DE LA', 622, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (677, N'PROCESOS DE RECAUDO DE RENTAS LOCALES', N'PROCESOS DE RECAUDO DE RENTAS LOCALES', 623, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (678, N'TARIFAS DE LIQUIDACIÓN DEL IMPUESTO DE INDUSTRIA Y COMERCIO (ICA)', N'TARIFAS DE LIQUIDACIÓN DEL IMPUESTO DE INDUSTRIA Y COMERCIO (ICA)', 623, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (679, N'MEDIOS DE SEGUIMIENTO PARA LA CONSULTA DEL ESTADO DE LAS SOLICITUDES DE INFORMACIÓN PÚBLICA', N'MEDIOS DE SEGUIMIENTO PARA LA CONSULTA DEL ESTADO DE LAS SOLICITUDES DE INFORMACIÓN PÚBLICA', 624, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (680, N'FORMULARIO PARA LA RECEPCIÓN DE SOLICITUDES DE INFORMACIÓN PÚBLICA', N'FORMULARIO PARA LA RECEPCIÓN DE SOLICITUDES DE INFORMACIÓN PÚBLICA', 624, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (681, N'PUBLICACIÓN TEMAS DE INTERÉS', N'PUBLICACIÓN TEMAS DE INTERÉS', 627, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (682, N'CAJA DE HERRAMIENTAS', N'CAJA DE HERRAMIENTAS', 627, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (683, N'HERRAMIENTAS DE EVALUACIÓN', N'HERRAMIENTAS DE EVALUACIÓN', 627, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (684, N'DIVULGAR RESULTADOS', N'DIVULGAR RESULTADOS', 627, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (685, N'PORCENTAJE DEL PRESUPUESTO PARA EL PROCESO', N'PORCENTAJE DEL PRESUPUESTO PARA EL PROCESO', 628, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (686, N'HABILITAR CANALES DE INTERACCIÓN Y CAJA DE HERRAMIENTAS', N'HABILITAR CANALES DE INTERACCIÓN Y CAJA DE HERRAMIENTAS', 628, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (687, N'PUBLICAR LA INFORMACIÓN SOBRE LAS DECISIONES', N'PUBLICAR LA INFORMACIÓN SOBRE LAS DECISIONES', 628, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (688, N'VISIBILIZAR AVANCES DE DECISIONES Y SU ESTADO (SEMÁFORO)', N'VISIBILIZAR AVANCES DE DECISIONES Y SU ESTADO (SEMÁFORO)', 628, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (689, N'INFORMES PLANEACIÓN DEL DESARROLLO LOCAL Y PRESUPUESTO PARTICIPATIVO', N'INFORMES PLANEACIÓN DEL DESARROLLO LOCAL Y PRESUPUESTO PARTICIPATIVO', 628, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (690, N'TEMA DE CONSULTA (NORMAS, POLÍTICAS, PROGRAMAS O PROYECTOS) Y RESUMEN DEL MISMO', N'TEMA DE CONSULTA (NORMAS, POLÍTICAS, PROGRAMAS O PROYECTOS) Y RESUMEN DEL MISMO', 629, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (691, N'CANALES DE CONSULTA Y CAJA DE HERRAMIENTAS', N'CANALES DE CONSULTA Y CAJA DE HERRAMIENTAS', 629, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (692, N'PUBLICAR OBSERVACIONES Y COMENTARIOS Y LAS RESPUESTAS DE PROYECTOS NORMATIVOS', N'PUBLICAR OBSERVACIONES Y COMENTARIOS Y LAS RESPUESTAS DE PROYECTOS NORMATIVOS', 629, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (693, N'SECCIÓN NORMATIVA', N'SECCIÓN NORMATIVA', 629, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (694, N'HERRAMIENTA DE EVALUACIÓN', N'HERRAMIENTA DE EVALUACIÓN', 629, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (695, N'PLAN ANTICORRUPCIÓN Y DE ATENCIÓN AL CIUDADANO (PAAC)', N'PLAN ANTICORRUPCIÓN Y DE ATENCIÓN AL CIUDADANO (PAAC)', 629, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (696, N'ESPACIO PARA CONSULTA SOBRE TEMAS O PROBLEMÁTICAS', N'ESPACIO PARA CONSULTA SOBRE TEMAS O PROBLEMÁTICAS', 630, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (697, N'CONVOCATORIA A LOS RETOS', N'CONVOCATORIA A LOS RETOS', 630, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (698, N'INFORMAR SOBRE RETOS VIGENTES Y REPORTE CON LA FRECUENCIA DE VOTACIONES DE SOLUCIONES EN CADA RETO', N'INFORMAR SOBRE RETOS VIGENTES Y REPORTE CON LA FRECUENCIA DE VOTACIONES DE SOLUCIONES EN CADA RETO', 630, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (699, N'PUBLICACIÓN DE PROPUESTAS ELEGIDAS Y LOS CRITERIOS PARA SU SELECCIÓN', N'PUBLICACIÓN DE PROPUESTAS ELEGIDAS Y LOS CRITERIOS PARA SU SELECCIÓN', 630, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (700, N'DIVULGAR EL PLAN DE TRABAJO PARA IMPLEMENTAR LA SOLUCIÓN DISEÑADA', N'DIVULGAR EL PLAN DE TRABAJO PARA IMPLEMENTAR LA SOLUCIÓN DISEÑADA', 630, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (701, N'PUBLICAR LA INFORMACIÓN SOBRE LOS DESARROLLOS O PROTOTIPOS', N'PUBLICAR LA INFORMACIÓN SOBRE LOS DESARROLLOS O PROTOTIPOS', 630, 6, 1, 2, NULL)
GO
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (702, N'DIVULGAR EL PLAN DE TRABAJO PARA IMPLEMENTAR LA SOLUCIÓN DISEÑADA', N'DIVULGAR EL PLAN DE TRABAJO PARA IMPLEMENTAR LA SOLUCIÓN DISEÑADA', 631, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (703, N'ESTRATEGIA DE COMUNICACIÓN PARA LA RENDICIÓN DE CUENTAS', N'ESTRATEGIA DE COMUNICACIÓN PARA LA RENDICIÓN DE CUENTAS', 631, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (704, N'CALENDARIO EVENTOS DE DIÁLOGO', N'CALENDARIO EVENTOS DE DIÁLOGO', 631, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (705, N' INFORMES DE RENDICIÓN DE CUENTAS', N' INFORMES DE RENDICIÓN DE CUENTAS', 631, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (706, N' INFORMES DE RENDICIÓN DE CUENTAS', N' INFORMES DE RENDICIÓN DE CUENTAS', 631, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (707, N'PREGUNTAS Y RESPUESTAS DE EVENTOS DE DIÁLOGO', N'PREGUNTAS Y RESPUESTAS DE EVENTOS DE DIÁLOGO', 631, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (708, N'MEMORIAS DE CADA EVENTO', N'MEMORIAS DE CADA EVENTO', 631, 7, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (709, N'ACCIONES DE MEJORA INCORPORADAS', N'ACCIONES DE MEJORA INCORPORADAS', 631, 8, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (710, N'INFORMAR LAS MODALIDADES DE CONTROL SOCIAL', N'INFORMAR LAS MODALIDADES DE CONTROL SOCIAL', 632, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (711, N'CONVOCAR CUANDO INICIE EJECUCIÓN DE PROGRAMA, PROYECTO O CONTRATOS', N'CONVOCAR CUANDO INICIE EJECUCIÓN DE PROGRAMA, PROYECTO O CONTRATOS', 632, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (712, N'HERRAMIENTA DE EVALUACIÓN DE LAS ACTIVIDADES', N'HERRAMIENTA DE EVALUACIÓN DE LAS ACTIVIDADES', 632, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (713, N'OBSERVACIONES VEEDURÍAS', N'OBSERVACIONES VEEDURÍAS', 632, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (714, N'ACCIONES DE MEJORA', N'ACCIONES DE MEJORA', 632, 5, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (715, N'INFORMES DEL INTERVENTOR O EL SUPERVISOR', N'INFORMES DEL INTERVENTOR O EL SUPERVISOR', 632, 6, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (716, N'TRÁMITES Y SERVICIOS', N'TRÁMITES Y SERVICIOS', 634, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (717, N'TAQUILLAS VIRTUALES', N'TAQUILLAS VIRTUALES', 634, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (718, N'CANAL PRESENCIAL', N'CANAL PRESENCIAL', 635, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (719, N'CANAL TELEFÓNICO', N'CANAL TELEFÓNICO', 635, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (720, N'CANAL VIRTUAL', N'CANAL VIRTUAL', 635, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (721, N'SEDES DE ATENCIÓN A LA CIUDADANÍA', N'SEDES DE ATENCIÓN A LA CIUDADANÍA', 635, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (722, N'RADICA TUS PETICIONES, QUEJAS, RECLAMOS O DENUNCIAS', N'RADICA TUS PETICIONES, QUEJAS, RECLAMOS O DENUNCIAS', 636, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (723, N'TIPO_LICENCIA_USO', N'TIPO LICENCIA DE USO - DATOS GENERALES', NULL, NULL, 1, 1, CAST(N'2024-01-21T15:09:39.083' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (724, N'COPYRIGHT', N'COPYRIGHT', 723, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (725, N'COPYLEFT', N'COPYLEFT', 723, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (726, N'CREATIVE COMMONS', N'CREATIVE COMMONS', 723, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (727, N'NO SE HA GESTIONADO LA LICENCIA', N'NO SE HA GESTIONADO LA LICENCIA', 723, 4, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (728, N'UBICACIÓN_ACTIVO', N'UBICACIÓN ACTIVO INFORMACIÓN SOPORTE PAPEL -  CARACTERÍSTICAS', NULL, NULL, 1, 1, CAST(N'2024-01-22T22:39:45.210' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (729, N'ARCHIVO PROPIO INTERNO', N'ARCHIVO PROPIO INTERNO', 728, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (730, N'ARCHIVO PROPIO EXTERNO', N'ARCHIVO PROPIO EXTERNO', 728, 2, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (731, N'ARCHIVO EN CUSTODIA DE UN TERCERO', N'ARCHIVO EN CUSTODIA DE UN TERCERO', 728, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (732, N'OBJETIVO_LEGÍTIMO_RESERVADOS', N'OBJETIVO LEGÍTIMO RESERVADOS - ACTIVOS RESTRICCIÓN', NULL, NULL, 1, 1, CAST(N'2024-01-22T23:21:25.780' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (778, N'OBLIGATORIA TRANSPARENCIA Y OTRAS NORMAS', N'OBLIGATORIA TRANSPARENCIA Y OTRAS NORMAS', 502, 3, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (878, N'MEDIO_CONSERVACIÓN_M', N'MEDIO DE CONSERVACIÓN MAGNÉTICO DE LA INFORMACIÓN - DATOS RESPONSABLES', NULL, NULL, 1, 1, CAST(N'2024-01-30T15:20:28.850' AS DateTime))
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (879, N'NO APLICA', N'NO APLICA', 578, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (880, N'NO APLICA', N'NO APLICA', 879, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (881, N'NO TIENE', N'NO TIENE - ANTEPROYECTOS DE PRESUPUESTO', 5, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (882, N'NO TIENE', N'NO TIENE - AUTORIZACIONES Y PERMISOS', 7, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (883, N'NO TIENE', N'NO TIENE - CAMPAÑAS DE COMUNICACIÓN INSTITUCIONALES', 9, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (884, N'NO TIENE', N'NO TIENE - CONVENCIONES COLECTIVAS DE TRABAJO', 19, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (885, N'NO TIENE', N'NO TIENE - DECRETOS', 22, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (886, N'NO TIENE', N'NO TIENE - DERECHOS DE PETICIÓN', 23, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (887, N'NO TIENE', N'NO TIENE - DESPACHOS COMISORIOS', 24, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (888, N'NO TIENE', N'NO TIENE - ESTUDIOS E INVESTIGACIONES', 25, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (889, N'NO TIENE', N'NO TIENE - FICHAS DE CLASIFICACIÓN SOCIOECONÓMICA', 26, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (890, N'NO TIENE', N'NO TIENE - NÓMINAS', 38, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (891, N'NO TIENE', N'NO TIENE - ÓRDENES DE COMPRA', 39, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (892, N'NO TIENE', N'NO TIENE - POLÍTICAS DE OPERACIÓN DE OBRA PÚBLICA', 41, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (893, N'NO TIENE', N'NO TIENE - POLÍTICAS PÚBLICAS INSTITUCIONALES', 42, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (894, N'NO TIENE', N'NO TIENE - PORTAFOLIOS DE INVERSIONES', 43, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (895, N'NO TIENE', N'NO TIENE - PRESUPUESTOS GENERALES', 44, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (896, N'NO TIENE', N'NO TIENE - PUBLICACIONES INSTITUCIONALES', 48, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (897, N'NO TIENE', N'NO TIENE - REPORTES DE AVANCE A LA GESTIÓN', 49, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (898, N'NO TIENE', N'NO TIENE - RESOLUCIONES', 50, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (899, N'NO APLICA', N'NO APLICA', 626, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (900, N'NO APLICA', N'NO APLICA', 633, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (901, N'NO APLICA', N'NO APLICA', 637, 1, 1, 2, NULL)
INSERT [dbo].[tblMaestros] ([iIdMaestro], [sMaestro], [sDescripcion], [iIdPadre], [iOrden], [bEstado], [iTipo], [dFecActualiza]) VALUES (902, N'NO APLICA', N'NO APLICA', 501, 1, 1, 2, NULL)
SET IDENTITY_INSERT [dbo].[tblMaestros] OFF
GO
SET IDENTITY_INSERT [dbo].[tblParametros] ON 

INSERT [dbo].[tblParametros] ([iIdParametro], [sParametro], [sValor], [bEstado]) VALUES (1, N'Versión del aplicativo', N'Versión 0.0', 1)
INSERT [dbo].[tblParametros] ([iIdParametro], [sParametro], [sValor], [bEstado]) VALUES (2, N'Actualización Maestros', N'26/06/2024 16:27:15', 1)
SET IDENTITY_INSERT [dbo].[tblParametros] OFF
GO
INSERT [dbo].[tblUsuario] ([sIdentificacion], [sNombre], [iIdRol], [sEmail], [dFechaDesde], [dFechaHasta], [bEstado], [iIdDependencia], [sObservaciones]) VALUES (N'123', N'DANIEL POSADA', N'2', N'edwin.ospina.c@hotmail.com', CAST(N'2023-12-27' AS Date), CAST(N'2024-12-31' AS Date), 1, 377, NULL)
INSERT [dbo].[tblUsuario] ([sIdentificacion], [sNombre], [iIdRol], [sEmail], [dFechaDesde], [dFechaHasta], [bEstado], [iIdDependencia], [sObservaciones]) VALUES (N'1234', N'PRUEBA ENLACE', N'3', N'edwin.ospina@medellin.gov.co', CAST(N'2023-12-27' AS Date), CAST(N'2024-12-31' AS Date), 1, 385, NULL)
INSERT [dbo].[tblUsuario] ([sIdentificacion], [sNombre], [iIdRol], [sEmail], [dFechaDesde], [dFechaHasta], [bEstado], [iIdDependencia], [sObservaciones]) VALUES (N'12345', N'GABRIEL JAIME GUTIERREZ', N'4', N'edwin.ospina.c@gmail.com', CAST(N'2024-01-31' AS Date), CAST(N'9999-12-31' AS Date), 1, 377, NULL)
INSERT [dbo].[tblUsuario] ([sIdentificacion], [sNombre], [iIdRol], [sEmail], [dFechaDesde], [dFechaHasta], [bEstado], [iIdDependencia], [sObservaciones]) VALUES (N'123456', N'ELKIN MAURICIO GÓMEZ', N'3', N'edwin.ospina@medellin.gov.co', CAST(N'2024-02-14' AS Date), CAST(N'2024-12-31' AS Date), 0, 376, N'Prueba')
INSERT [dbo].[tblUsuario] ([sIdentificacion], [sNombre], [iIdRol], [sEmail], [dFechaDesde], [dFechaHasta], [bEstado], [iIdDependencia], [sObservaciones]) VALUES (N'1234567', N'PRUEBA APOYO ENLACE', N'5', NULL, CAST(N'2024-04-14' AS Date), CAST(N'2024-12-31' AS Date), 1, 385, NULL)
INSERT [dbo].[tblUsuario] ([sIdentificacion], [sNombre], [iIdRol], [sEmail], [dFechaDesde], [dFechaHasta], [bEstado], [iIdDependencia], [sObservaciones]) VALUES (N'12345678', N'PRUEBA APOYO PROFESIONAL', N'6', NULL, CAST(N'2024-04-14' AS Date), CAST(N'2024-12-31' AS Date), 1, 377, NULL)
INSERT [dbo].[tblUsuario] ([sIdentificacion], [sNombre], [iIdRol], [sEmail], [dFechaDesde], [dFechaHasta], [bEstado], [iIdDependencia], [sObservaciones]) VALUES (N'123456789', N'PRUEBA APOYO LÍDER', N'7', NULL, CAST(N'2024-04-14' AS Date), CAST(N'2024-12-31' AS Date), 1, 377, NULL)
INSERT [dbo].[tblUsuario] ([sIdentificacion], [sNombre], [iIdRol], [sEmail], [dFechaDesde], [dFechaHasta], [bEstado], [iIdDependencia], [sObservaciones]) VALUES (N'71212368', N'EDWIN OSPINA CASTAÑO', N'1', N'edwin.ospina@medellin.gov.co', CAST(N'2023-12-27' AS Date), CAST(N'9999-12-31' AS Date), 1, 396, NULL)
