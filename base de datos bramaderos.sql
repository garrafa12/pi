USE [colegio_bramadero]
GO
/****** Object:  Table [dbo].[autor]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autor](
	[Cod_autor] [varchar](5) NOT NULL,
	[nombre_autor] [varchar](100) NULL,
	[nacionalidad] [varchar](100) NULL,
	[FechaNaciminto] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Biblioteca]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Biblioteca](
	[Id_biblioteca] [int] IDENTITY(1,1) NOT NULL,
	[nombre_colegio] [varchar](50) NULL,
	[direccion_biblioteca] [varchar](50) NULL,
	[comuna_biblioteca] [varchar](50) NULL,
	[region_biblioteca] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_biblioteca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[Id_contacto] [int] IDENTITY(1,1) NOT NULL,
	[Cod_persona] [int] NOT NULL,
	[telefono] [int] NULL,
	[Correo] [varchar](30) NULL,
	[direccion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[Cod_curso] [int] IDENTITY(1,1) NOT NULL,
	[Cod_persona] [int] NOT NULL,
	[numero] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Editorial]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editorial](
	[Cod_editorial] [varchar](5) NOT NULL,
	[editorial] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_editorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Existencia]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Existencia](
	[Cod_existencia] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_existencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[Cod_libro] [varchar](5) NOT NULL,
	[titulo_libro] [varchar](100) NULL,
	[Cod_tipo_libro] [varchar](5) NOT NULL,
	[Cod_editorial] [varchar](5) NOT NULL,
	[Cod_autor] [varchar](5) NOT NULL,
	[Id_biblioteca] [int] NOT NULL,
	[Cod_existencia] [int] NOT NULL,
	[Fecha_lanzamiento] [date] NULL,
	[edicion] [varchar](100) NULL,
	[Fecha_carga] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_libro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro_editorial]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro_editorial](
	[cod_tipo_editorial] [int] NOT NULL,
	[Cod_libro] [varchar](5) NOT NULL,
	[Cod_editorial] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tipo_editorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros_autor]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros_autor](
	[Cod_libro_autor] [int] IDENTITY(1,1) NOT NULL,
	[Cod_libro] [varchar](5) NOT NULL,
	[Cod_autor] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_libro_autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[Cod_persona] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido_paterno] [varchar](100) NULL,
	[apellido_matero] [varchar](100) NULL,
	[run] [varchar](12) NULL,
	[Cod_rol] [varchar](5) NOT NULL,
	[Nacionalidad] [varchar](50) NULL,
	[Fecha_carga] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamo](
	[Cod_prestamo] [varchar](5) NOT NULL,
	[Cod_persona] [int] NOT NULL,
	[Cod_libro] [varchar](5) NOT NULL,
	[fecha_prestamo] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_prestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_libro]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_libro](
	[Cod_tipo_libro] [varchar](5) NOT NULL,
	[tipo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_tipo_libro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_persona]    Script Date: 11-10-2022 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_persona](
	[Cod_rol] [varchar](5) NOT NULL,
	[rol] [varchar](100) NULL,
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[autor] ([Cod_autor], [nombre_autor], [nacionalidad], [FechaNaciminto]) VALUES (N'CM001', N'Constanza Muñoz', N'	Española', CAST(N'1995-08-10' AS Date))
INSERT [dbo].[autor] ([Cod_autor], [nombre_autor], [nacionalidad], [FechaNaciminto]) VALUES (N'JR001', N'Jorge Rojas', N'Chino', CAST(N'1922-05-29' AS Date))
INSERT [dbo].[autor] ([Cod_autor], [nombre_autor], [nacionalidad], [FechaNaciminto]) VALUES (N'KM001', N'Kevin Molina', N'Alemana', CAST(N'1920-12-24' AS Date))
INSERT [dbo].[autor] ([Cod_autor], [nombre_autor], [nacionalidad], [FechaNaciminto]) VALUES (N'RB001', N'Rafael Bravo', N'Peruano', CAST(N'1810-02-12' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Biblioteca] ON 

INSERT [dbo].[Biblioteca] ([Id_biblioteca], [nombre_colegio], [direccion_biblioteca], [comuna_biblioteca], [region_biblioteca]) VALUES (1, N'1', N'Escuela Bramadero', N'Bramadero,San Clemente, Maule', N'Maule')
SET IDENTITY_INSERT [dbo].[Biblioteca] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacto] ON 

INSERT [dbo].[Contacto] ([Id_contacto], [Cod_persona], [telefono], [Correo], [direccion]) VALUES (1, 1, 78432879, N'mbappe@gmail.com', N'Av 302, Francia')
INSERT [dbo].[Contacto] ([Id_contacto], [Cod_persona], [telefono], [Correo], [direccion]) VALUES (2, 2, 12539574, N'brereton.diaz@gmail.com', N'Santiago de chile')
INSERT [dbo].[Contacto] ([Id_contacto], [Cod_persona], [telefono], [Correo], [direccion]) VALUES (3, 3, 21510006, N'malo@gmail.com', N'Londres')
SET IDENTITY_INSERT [dbo].[Contacto] OFF
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([Cod_curso], [Cod_persona], [numero]) VALUES (1, 1, 3)
INSERT [dbo].[Curso] ([Cod_curso], [Cod_persona], [numero]) VALUES (2, 2, 3)
INSERT [dbo].[Curso] ([Cod_curso], [Cod_persona], [numero]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
INSERT [dbo].[Editorial] ([Cod_editorial], [editorial]) VALUES (N'ARCA4', N'Arcano IV')
INSERT [dbo].[Editorial] ([Cod_editorial], [editorial]) VALUES (N'CUNT0', N'Cuneta')
INSERT [dbo].[Editorial] ([Cod_editorial], [editorial]) VALUES (N'CVNT0', N'Cuatro vientos')
INSERT [dbo].[Editorial] ([Cod_editorial], [editorial]) VALUES (N'KACT0', N'Kactus')
INSERT [dbo].[Editorial] ([Cod_editorial], [editorial]) VALUES (N'KNDB0', N'Kindberg')
GO
SET IDENTITY_INSERT [dbo].[Existencia] ON 

INSERT [dbo].[Existencia] ([Cod_existencia], [cantidad]) VALUES (1, 1)
INSERT [dbo].[Existencia] ([Cod_existencia], [cantidad]) VALUES (2, 2)
INSERT [dbo].[Existencia] ([Cod_existencia], [cantidad]) VALUES (3, 3)
INSERT [dbo].[Existencia] ([Cod_existencia], [cantidad]) VALUES (4, 4)
INSERT [dbo].[Existencia] ([Cod_existencia], [cantidad]) VALUES (5, 5)
SET IDENTITY_INSERT [dbo].[Existencia] OFF
GO
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([Cod_persona], [nombre], [apellido_paterno], [apellido_matero], [run], [Cod_rol], [Nacionalidad], [Fecha_carga]) VALUES (1, N'Kylian', N'Mbappe', N'Lottin', N'11.111.111-1', N'ESTUD', N'Chilena', CAST(N'2022-09-28' AS Date))
INSERT [dbo].[Persona] ([Cod_persona], [nombre], [apellido_paterno], [apellido_matero], [run], [Cod_rol], [Nacionalidad], [Fecha_carga]) VALUES (2, N'Benjamin', N'Brereton', N'Diaz', N'22.222.222-2', N'ESTUD', N'Chilena', CAST(N'2022-09-28' AS Date))
INSERT [dbo].[Persona] ([Cod_persona], [nombre], [apellido_paterno], [apellido_matero], [run], [Cod_rol], [Nacionalidad], [Fecha_carga]) VALUES (3, N'Jacob', N'Harry', N'Maguire', N'44.444.444-4', N'PROFE', N'Chilena', CAST(N'2022-09-28' AS Date))
SET IDENTITY_INSERT [dbo].[Persona] OFF
GO
INSERT [dbo].[Tipo_libro] ([Cod_tipo_libro], [tipo]) VALUES (N'COME1', N'Comedia')
INSERT [dbo].[Tipo_libro] ([Cod_tipo_libro], [tipo]) VALUES (N'CUEN1', N'Cuento')
INSERT [dbo].[Tipo_libro] ([Cod_tipo_libro], [tipo]) VALUES (N'DIOS1', N'Cientifico')
INSERT [dbo].[Tipo_libro] ([Cod_tipo_libro], [tipo]) VALUES (N'ENCI1', N'Enciclopedia')
INSERT [dbo].[Tipo_libro] ([Cod_tipo_libro], [tipo]) VALUES (N'FICC1', N'Ficcion')
INSERT [dbo].[Tipo_libro] ([Cod_tipo_libro], [tipo]) VALUES (N'JUVE1', N'Juvenil')
INSERT [dbo].[Tipo_libro] ([Cod_tipo_libro], [tipo]) VALUES (N'NOVE1', N'Novela')
INSERT [dbo].[Tipo_libro] ([Cod_tipo_libro], [tipo]) VALUES (N'POET1', N'Poetico')
INSERT [dbo].[Tipo_libro] ([Cod_tipo_libro], [tipo]) VALUES (N'RECR1', N'Recreativo')
GO
INSERT [dbo].[Tipo_persona] ([Cod_rol], [rol], [descripcion]) VALUES (N'ESTUD', N'estudiante', N'Persona que estudia')
INSERT [dbo].[Tipo_persona] ([Cod_rol], [rol], [descripcion]) VALUES (N'PROFE', N'Profesor', N'Persona que enseña')
GO
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD FOREIGN KEY([Cod_persona])
REFERENCES [dbo].[Persona] ([Cod_persona])
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD FOREIGN KEY([Cod_persona])
REFERENCES [dbo].[Persona] ([Cod_persona])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([Cod_autor])
REFERENCES [dbo].[autor] ([Cod_autor])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([Cod_editorial])
REFERENCES [dbo].[Editorial] ([Cod_editorial])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([Cod_existencia])
REFERENCES [dbo].[Existencia] ([Cod_existencia])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([Cod_tipo_libro])
REFERENCES [dbo].[Tipo_libro] ([Cod_tipo_libro])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([Id_biblioteca])
REFERENCES [dbo].[Biblioteca] ([Id_biblioteca])
GO
ALTER TABLE [dbo].[Libro_editorial]  WITH CHECK ADD FOREIGN KEY([Cod_editorial])
REFERENCES [dbo].[Editorial] ([Cod_editorial])
GO
ALTER TABLE [dbo].[Libro_editorial]  WITH CHECK ADD FOREIGN KEY([Cod_libro])
REFERENCES [dbo].[Libro] ([Cod_libro])
GO
ALTER TABLE [dbo].[Libros_autor]  WITH CHECK ADD FOREIGN KEY([Cod_autor])
REFERENCES [dbo].[autor] ([Cod_autor])
GO
ALTER TABLE [dbo].[Libros_autor]  WITH CHECK ADD FOREIGN KEY([Cod_libro])
REFERENCES [dbo].[Libro] ([Cod_libro])
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD FOREIGN KEY([Cod_rol])
REFERENCES [dbo].[Tipo_persona] ([Cod_rol])
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD FOREIGN KEY([Cod_libro])
REFERENCES [dbo].[Libro] ([Cod_libro])
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD FOREIGN KEY([Cod_persona])
REFERENCES [dbo].[Persona] ([Cod_persona])
GO
