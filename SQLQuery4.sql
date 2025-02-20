USE [ProjetoLogin]
GO
/****** Object:  StoredProcedure [dbo].[InsertCliente_SP]    Script Date: 06/10/2024 17:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[InsertCliente_SP]
@IdCliente int,
@NomeCliente varchar(80),
@CNPJCliente varchar(14),
@EnderecoCliente varchar(150),
@EmailCliente varchar(100),
@TelefoneCliente varchar(10)

AS 
BEGIN 
SET IDENTITY_INSERT dbo.Clientes ON;
INSERT INTO Clientes (IdCliente, NomeCliente, CNPJCliente, EnderecoCliente, EmailCliente, TelefoneCliente)
VALUES (@IdCliente, @NomeCliente, @CNPJCliente, @EnderecoCliente, @EmailCliente, @TelefoneCliente)
END