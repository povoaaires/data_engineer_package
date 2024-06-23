/****** Object:  Table [log].[tb_monitoramento_processos]    Script Date: 07/12/2023 09:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [log].[tb_monitoramento_processos](
	[id] [uniqueidentifier] NOT NULL,
	[id_process] [varchar](255) NULL,
	[name_process] [varchar](100) NOT NULL,
	[staging_step] [varchar](20) NOT NULL,
	[bronze_step] [varchar](20) NOT NULL,
	[silver_step] [varchar](20) NOT NULL,
	[gold_step] [varchar](20) NOT NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
	[type_process] [varchar](100) NULL,
	[rows_read] [varchar](100) NULL,
	[rows_copied] [varchar](100) NULL,
	[status] [varchar](100) NULL,
	[msg] [varchar](850) NULL
) ON [PRIMARY]
GO

ALTER TABLE [log].[tb_monitoramento_processos] ADD  DEFAULT (newid()) FOR [id]
GO

ALTER TABLE [log].[tb_monitoramento_processos] ADD  DEFAULT ('false') FOR [staging_step]
GO

ALTER TABLE [log].[tb_monitoramento_processos] ADD  DEFAULT ('false') FOR [bronze_step]
GO

ALTER TABLE [log].[tb_monitoramento_processos] ADD  DEFAULT ('false') FOR [silver_step]
GO

ALTER TABLE [log].[tb_monitoramento_processos] ADD  DEFAULT ('false') FOR [gold_step]
GO


