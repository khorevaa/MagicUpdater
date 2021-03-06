USE [MagicUpdater]
GO
/****** Object:  Table [dbo].[ActionsReports]    Script Date: 30.07.2017 16:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionsReports](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[OperationId] [int] NOT NULL,
	[ComputerId] [int] NOT NULL,
	[ActionName] [nvarchar](100) NOT NULL,
	[IsFromLan] [bit] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[DateCompleteOrError] [datetime] NOT NULL,
	[Result] [nvarchar](max) NULL,
 CONSTRAINT [PK_ActionsReports] PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonGlobalSettings]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonGlobalSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Value] [nvarchar](1000) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_CommonGlobalSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComputerErrorsLog]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputerErrorsLog](
	[ErrorId] [int] IDENTITY(1,1) NOT NULL,
	[ComputerId] [int] NOT NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[ErrorDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ComputerErrorsLog] PRIMARY KEY CLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalSettings]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalSettings](
	[ComputerId] [int] NOT NULL,
	[SettingId] [int] NOT NULL,
	[Value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_LocalSettings] PRIMARY KEY CLUSTERED 
(
	[ComputerId] ASC,
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalSettingsDictionary]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalSettingsDictionary](
	[SettingId] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_LocalSettingsDictionary] PRIMARY KEY CLUSTERED 
(
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs1C]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs1C](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ComputerId] [int] NOT NULL,
	[OperationId] [int] NULL,
	[IsError] [bit] NULL,
	[LogMessage] [nvarchar](max) NULL,
	[LogDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Logs1C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationGroups]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_OperationGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operations]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ComputerId] [int] NOT NULL,
	[OperationType] [int] NOT NULL,
	[Attributes] [nvarchar](max) NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreatedUser] [nvarchar](128) NULL,
	[PoolDate] [datetime] NULL,
	[GroupGUID] [uniqueidentifier] NULL,
	[IsFromSheduler] [bit] NULL,
 CONSTRAINT [PK_Operations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationsReports]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationsReports](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[OperationId] [int] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[Result] [nvarchar](max) NULL,
	[DateRead] [datetime] NOT NULL,
	[DateCompleteOrError] [datetime] NULL,
 CONSTRAINT [PK_OperationsReports] PRIMARY KEY CLUSTERED 
(
	[OperationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationsStates]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationsStates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OperationId] [int] NOT NULL,
	[OperStateId] [int] NOT NULL,
	[StateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_OperationsStates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationStatesVoc]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationStatesVoc](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_OperationStates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationTypeAttributes]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationTypeAttributes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OperationTypeId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Attributes] [nvarchar](max) NULL,
 CONSTRAINT [PK_OperationTypeAttributes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationTypes]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationTypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[SavedAttributes] [nvarchar](max) NULL,
	[NameRus] [nvarchar](256) NULL,
	[GroupId] [int] NOT NULL,
	[FileName] [nvarchar](255) NULL,
	[LastModifiedDate] [datetime] NULL,
	[FileMD5] [nvarchar](32) NULL,
	[Description] [nvarchar](max) NULL,
	[GUID] [uniqueidentifier] NULL,
	[Visible] [bit] NULL,
 CONSTRAINT [PK_OperationTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedulerPluginTasks]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedulerPluginTasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Enabled] [bit] NULL,
	[Mode] [int] NOT NULL,
	[NextStartTime] [datetime] NOT NULL,
	[LastStartTime] [datetime] NULL,
	[LastEndTime] [datetime] NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](3000) NULL,
	[CreationDateUtc] [datetime] NULL,
	[CreatedUserLogin] [nvarchar](400) NULL,
	[PluginFileName] [nvarchar](128) NOT NULL,
	[RepeatValue] [int] NULL,
 CONSTRAINT [PK_ShedulerPluginTasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedulerPluginTasksUserHistory]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedulerPluginTasksUserHistory](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Enabled] [bit] NULL,
	[FirstStepId] [int] NULL,
	[Mode] [int] NOT NULL,
	[NextStartTime] [datetime] NOT NULL,
	[LastStartTime] [datetime] NULL,
	[LastEndTime] [datetime] NULL,
	[Status] [int] NOT NULL,
	[HisId] [int] IDENTITY(1,1) NOT NULL,
	[ChangeUserDateUtc] [datetime] NOT NULL,
	[UserLogin] [nvarchar](400) NOT NULL,
	[PluginFileName] [nvarchar](128) NOT NULL,
	[ActionType] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_ShedulerPluginTasksUserHistory] PRIMARY KEY CLUSTERED 
(
	[HisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedulerStatuses]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedulerStatuses](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[NameRus] [nvarchar](256) NULL,
 CONSTRAINT [PK_ShedulerStatuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedulerSteps]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedulerSteps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskId] [int] NOT NULL,
	[OperationType] [int] NOT NULL,
	[RepeatCount] [int] NULL,
	[RepeatTimeout] [int] NULL,
	[OperationCheckIntervalMs] [int] NOT NULL,
	[OnOperationCompleteStep] [int] NOT NULL,
	[OnOperationErrorStep] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[OperationAttributes] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShedulerSteps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedulerStepsUserHistory]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedulerStepsUserHistory](
	[Id] [int] NOT NULL,
	[TaskId] [int] NOT NULL,
	[OperationType] [int] NOT NULL,
	[RepeatCount] [int] NULL,
	[RepeatTimeout] [int] NULL,
	[OperationCheckIntervalMs] [int] NOT NULL,
	[OnOperationCompleteStep] [int] NOT NULL,
	[OnOperationErrorStep] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[HisId] [int] IDENTITY(1,1) NOT NULL,
	[ChangeUserDateUtc] [datetime] NOT NULL,
	[UserLogin] [nvarchar](400) NOT NULL,
	[ActionType] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_ShedulerStepsUserHistory] PRIMARY KEY CLUSTERED 
(
	[HisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedulerTaskHistory]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedulerTaskHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[TaskId] [int] NOT NULL,
	[StepId] [int] NOT NULL,
	[ComputerId] [int] NULL,
	[IsComplete] [bit] NOT NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShedulerTaskHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedulerTaskModes]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedulerTaskModes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[NameRus] [nvarchar](256) NULL,
 CONSTRAINT [PK_ShedulerTaskModes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedulerTasks]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedulerTasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Enabled] [bit] NULL,
	[FirstStepId] [int] NULL,
	[Mode] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[NextStartTime] [datetime] NOT NULL,
	[LastStartTime] [datetime] NULL,
	[LastEndTime] [datetime] NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](3000) NULL,
	[CreationDateUtc] [datetime] NULL,
	[CreatedUserLogin] [nvarchar](400) NULL,
	[RepeatValue] [int] NULL,
 CONSTRAINT [PK_ShedulerTasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedulerTasksComputersList]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedulerTasksComputersList](
	[TaskId] [int] NOT NULL,
	[ComputerId] [int] NOT NULL,
 CONSTRAINT [PK_ShedulerTasksComputersList] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC,
	[ComputerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedulerTasksUserHistory]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedulerTasksUserHistory](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Enabled] [bit] NULL,
	[FirstStepId] [int] NULL,
	[Mode] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[NextStartTime] [datetime] NOT NULL,
	[LastStartTime] [datetime] NULL,
	[LastEndTime] [datetime] NULL,
	[Status] [int] NOT NULL,
	[HisId] [int] IDENTITY(1,1) NOT NULL,
	[ChangeUserDateUtc] [datetime] NOT NULL,
	[UserLogin] [nvarchar](400) NOT NULL,
	[ComputersList] [varchar](max) NULL,
	[ActionType] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_ShedulerTasksUserHistory] PRIMARY KEY CLUSTERED 
(
	[HisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopComputers]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopComputers](
	[ComputerId] [int] IDENTITY(1,1) NOT NULL,
	[ShopId] [nvarchar](100) NOT NULL,
	[ComputerName] [nvarchar](100) NULL,
	[ComputerAddress] [varchar](50) NULL,
	[Is1CServer] [bit] NOT NULL,
	[IsMainCashbox] [bit] NOT NULL,
	[LastUpdateTime] [datetime] NULL,
	[ComputerHash] [nvarchar](32) NULL,
	[Mac] [nvarchar](32) NULL,
	[MagicUpdaterVersion] [nvarchar](32) NULL,
	[External_IP] [varchar](50) NULL,
	[IsTaskerAlive] [bit] NULL,
	[IsSettingsRead] [bit] NULL,
	[IsON]  AS (case when dateadd(minute,(1),[LastUpdateTime])>getutcdate() then (1) else (0) end),
	[LastErrorDate] [datetime] NULL,
	[LastError] [nvarchar](max) NULL,
	[IsAgentSettingsReaded] [bit] NULL,
 CONSTRAINT [PK_ShopComputers] PRIMARY KEY CLUSTERED 
(
	[ComputerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shops]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shops](
	[ShopId] [nvarchar](100) NOT NULL,
	[ShopName] [nvarchar](100) NULL,
	[ShopRegion] [nvarchar](100) NULL,
	[ExchangeError] [bit] NULL,
	[LastSuccessfulUpload] [datetime] NULL,
	[LastSuccessfulReceive] [datetime] NULL,
	[AddressToConnect] [nvarchar](1024) NULL,
	[Phone] [nvarchar](128) NULL,
	[IsClosed] [bit] NULL,
	[Email] [nvarchar](512) NULL,
	[VersionConfig1C] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shops] PRIMARY KEY CLUSTERED 
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](400) NOT NULL,
	[UserName] [nvarchar](400) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ViewOperations]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



    
CREATE VIEW [dbo].[ViewOperations]      
AS      
 SELECT      
  o.ID      
  ,o.OperationType
  ,ot.Name as OperationTypeEn    
  ,ot.NameRus as OperationTypeRu
  ,o.CreatedUser    
  ,o.ComputerId      
  ,sc.ComputerName      
  ,sc.ShopId      
  ,o.Attributes      
  ,orp.IsRead      
  ,o.CreationDate      
  ,orp.DateRead      
  ,lastOperState.OperStateId as OperStateId
  ,lastOperState.Description as OperState      
  ,orp.IsCompleted      
  ,orp.DateCompleteOrError      
  ,orp.Result      
  ,lc.LogDate as LogDate1C      
  ,lc.LogMessage as LogMessage1C      
  ,case when isnull(lc.LogMessage, '') <> '' then case when CHARINDEX('Обновление конфигурации успешно завершено', lc.LogMessage) <> 0 then 0 else 1 end else 0 end as Is1CError    
  ,case when exists(select null from [dbo].[ActionsReports] where OperationId = o.ID and IsCompleted = 0) then 1 else 0 end as IsActionError    
  ,isnull(o.IsFromSheduler, 0) as IsFromSheduler    
  ,o.PoolDate    
  ,o.GroupGUID    
 FROM Operations o       
 join OperationTypes ot on ot.Id = o.OperationType
 LEFT JOIN OperationsReports orp on orp.OperationId = o.ID      
 JOIN ShopComputers sc on sc.ComputerId = o.ComputerId      
 left join       
 (      
  select os.*, osv.Description from OperationsStates os      
  join OperationStatesVoc osv on osv.Id = os.OperStateId      
  join      
  (      
   select max(id) as id, OperationId from OperationsStates      
   group by OperationId       
  ) q on q.id = os.Id and q.OperationId = os.OperationId      
 ) lastOperState on lastOperState.OperationId = o.ID      
 left join   
 (  
 select   
  ComputerId  
  ,OperationId  
  ,IsError  
  ,LogMessage  
  ,MAX(LogDate) as LogDate  
 from Logs1C  
 group by   
  ComputerId  
  ,OperationId  
  ,IsError  
  ,LogMessage  
 having ISNULL(OperationId, 0) <> 0  
 ) lc on lc.OperationId = o.ID   


GO
/****** Object:  View [dbo].[ViewOperationsTop5000]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






    
CREATE VIEW [dbo].[ViewOperationsTop5000]      
AS      
	select top 5000 
		ID
		,OperationType
		,OperationTypeEn
		,OperationTypeRu
		,CreatedUser
		,ComputerId
		,ComputerName
		,ShopId
		,Attributes
		,IsRead
		,CreationDate
		,DateRead
		,OperStateId
		,OperState
		,IsCompleted
		,DateCompleteOrError
		,Result
		,LogDate1C
		,LogMessage1C
		,Is1CError
		,IsActionError
		,IsFromSheduler
		,PoolDate   
		,GroupGUID 
	from [dbo].[ViewOperations] with (nolock)
	order by ID desc





GO
/****** Object:  View [dbo].[ViewOperationsTop1000_New]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






    
CREATE VIEW [dbo].[ViewOperationsTop1000_New]      
AS      
	select top 1000 
		ID
		,OperationType
		,OperationTypeEn
		,OperationTypeRu
		,CreatedUser
		,ComputerId
		,ComputerName
		,ShopId
		,Attributes
		,IsRead
		,CreationDate
		,DateRead
		,OperStateId
		,OperState
		,IsCompleted
		,DateCompleteOrError
		,Result
		,LogDate1C
		,LogMessage1C
		,Is1CError
		,IsActionError
		,IsFromSheduler
		,PoolDate   
		,GroupGUID 
	from [dbo].[ViewOperations] with (nolock)
	order by ID desc





GO
/****** Object:  View [dbo].[ViewOperationsLight]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


    
CREATE VIEW [dbo].[ViewOperationsLight]      
AS      
 SELECT      
  o.ID      
  ,ot.Name as OperationTypeEn    
  ,ot.NameRus as OperationTypeRu 
  ,o.ComputerId                
  ,o.CreationDate     
  ,orp.IsCompleted 
  ,lastOperState.OperStateId as OperStateId
  ,lastOperState.Description as OperState    
  ,case when isnull(lc.LogMessage, '') <> '' then case when CHARINDEX('Обновление конфигурации успешно завершено', lc.LogMessage) <> 0 then 0 else 1 end else 0 end as Is1CError      
 FROM Operations o (nolock)
 join OperationTypes ot on ot.Id = o.OperationType
 JOIN ShopComputers sc on sc.ComputerId = o.ComputerId      
 LEFT JOIN OperationsReports orp on orp.OperationId = o.ID  
 left join   
 (  
 select   
  ComputerId  
  ,OperationId  
  ,IsError  
  ,LogMessage  
  ,MAX(LogDate) as LogDate  
 from Logs1C  
 group by   
  ComputerId  
  ,OperationId  
  ,IsError  
  ,LogMessage  
 having ISNULL(OperationId, 0) <> 0  
 ) lc on lc.OperationId = o.ID   
 left join       
 (      
  select os.*, osv.Description from OperationsStates os (nolock)      
  join OperationStatesVoc osv on osv.Id = os.OperStateId      
  join      
  (      
   select max(id) as id, OperationId from OperationsStates (nolock)    
   group by OperationId       
  ) q on q.id = os.Id and q.OperationId = os.OperationId      
 ) lastOperState on lastOperState.OperationId = o.ID      
GO
/****** Object:  View [dbo].[ViewShopComputersServer]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[ViewShopComputersServer] as
select 
	ISNULL(sc.ComputerId, (ROW_NUMBER() OVER(ORDER BY sc.ComputerId ASC)) * -1) as ComputerId
	,s.ShopId
	,s.ShopName
	,s.ShopRegion
	,s.ExchangeError
	,s.AddressToConnect
	,s.Phone
	,s.IsClosed
	,s.Email
	,case when s.LastSuccessfulUpload = '19000101' then null else s.LastSuccessfulUpload end as LastSuccessfulUpload
	,case when s.LastSuccessfulReceive = '19000101' then null else s.LastSuccessfulReceive end as LastSuccessfulReceive
	,ISNULL(sc.ComputerName, '') as ComputerName
	,ISNULL(sc.ComputerAddress, '') as ComputerAddress
	,ISNULL(sc.Is1CServer, 0) as Is1CServer
	,ISNULL(sc.IsMainCashbox, 0) as IsMainCashbox
	,ISNULL(sc.LastUpdateTime, null) as LastUpdateTime
	,ISNULL(sc.ComputerHash, '') as ComputerHash
	,ISNULL(sc.Mac, '') as Mac
	,ISNULL(sc.MagicUpdaterVersion, '') as MagicUpdaterVersion
	,ISNULL(sc.External_IP, '') as External_IP 
	,ISNULL(sc.IsTaskerAlive, 0) as IsTaskerAlive
	,sc.LastErrorDate
	,ISNULL(sc.LastError, '') as LastError
	,ISNULL(sc.IsON, 0) as IsON
	,case when 
		ISNULL(os.OperationTypeRu, '') <> ''
	 then
		ISNULL(os.OperationTypeRu, '')
	 else
		ISNULL(os.OperationTypeEn, '') 
	 end as OperationTypeRu

	,ISNULL(os.CreationDate, null) as OperationCreationDate

	,ISNULL(case when isnull(os.OperStateId, 0) <> 2 then os.OperState else 
		 case when os.IsCompleted = 1 and os.Is1CError = 0 and os.OperStateId = 2 then 'Завершена успешно'
		 else 'Завершена с ошибкой' end end, '') as OperState
from
(
	select
		*
	from [dbo].[ShopComputers] sc
	where sc.Is1CServer = 1
) sc
left join 
(
	select 
		o.OperationTypeEn
		,o.OperationTypeRu
		,o.ComputerId
		,o.CreationDate
		,o.OperStateId
		,o.IsCompleted
		,o.OperState 
		,o.Is1CError
	from [dbo].[ViewOperationsLight] o
	join
	(
		select
			ComputerId,
			max(ID) as ID
		from [dbo].[ViewOperationsLight]
		group by ComputerId
	) co on co.ID = o.ID
	where o.CreationDate > dateadd(hh,-4,getdate())
) os on os.ComputerId = sc.ComputerId
right join [dbo].[Shops] s on s.ShopId = sc.ShopId
--where s.IsClosed = 0




--select 
--	ISNULL(sc.ComputerId, (ROW_NUMBER() OVER(ORDER BY ComputerId ASC)) * -1) as ComputerId
--	,s.ShopId
--	,s.ShopName
--	,s.ShopRegion
--	,s.ExchangeError
--	,s.AddressToConnect
--	,s.Phone
--	,s.IsClosed
--	,s.Email
--	,case when s.LastSuccessfulUpload = '19000101' then null else s.LastSuccessfulUpload end as LastSuccessfulUpload
--	,case when s.LastSuccessfulReceive = '19000101' then null else s.LastSuccessfulReceive end as LastSuccessfulReceive
--	,ISNULL(sc.ComputerName, '') as ComputerName
--	,ISNULL(sc.ComputerAddress, '') as ComputerAddress
--	,ISNULL(sc.Is1CServer, 0) as Is1CServer
--	,ISNULL(sc.IsMainCashbox, 0) as IsMainCashbox
--	,ISNULL(sc.LastUpdateTime, null) as LastUpdateTime
--	,ISNULL(sc.ComputerHash, '') as ComputerHash
--	,ISNULL(sc.Mac, '') as Mac
--	,ISNULL(sc.MagicUpdaterVersion, '') as MagicUpdaterVersion
--	,ISNULL(sc.External_IP, '') as External_IP 
--	,ISNULL(sc.IsTaskerAlive, 0) as IsTaskerAlive
--	,ISNULL(sc.IsON, 0) as IsON
--	,case when 
--		ISNULL((select OperationTypeRu from [dbo].[ViewOperations] where ID = (select max(ID) from Operations where ComputerId = sc.ComputerId and CreationDate > dateadd(hh,-4,getdate()))), '') <> ''
--	 then
--		ISNULL((select OperationTypeRu from [dbo].[ViewOperations] where ID = (select max(ID) from Operations where ComputerId = sc.ComputerId and CreationDate > dateadd(hh,-4,getdate()))), '')
--	 else
--		ISNULL((select OperationTypeEn from [dbo].[ViewOperations] where ID = (select max(ID) from Operations where ComputerId = sc.ComputerId and CreationDate > dateadd(hh,-4,getdate()))), '') 
--	 end as OperationTypeRu

--	,ISNULL((select CreationDate from [dbo].[ViewOperations] where ID = (select max(ID) from Operations where ComputerId = sc.ComputerId and CreationDate > dateadd(hh,-4,getdate()))), null) as OperationCreationDate
--	,ISNULL((select 
--		 case when isnull(OperStateId, 0) <> 2 then OperState else 
--		 case when IsCompleted = 1 and Is1CError = 0 and OperStateId = 2 then 'Завершена успешно'
--		 else 'Завершена с ошибкой' end end as OperState
--	from [dbo].[ViewOperations]
--	where ID = (select max(ID) from Operations where ComputerId = sc.ComputerId and CreationDate > dateadd(hh,-4,getdate()))), '') as OperState
--	,ISNULL(sc.LastError, '') as LastError
--from
--(
--	select
--		*
--	from [dbo].[ShopComputers] sc
--	where sc.Is1CServer = 1
--) sc
--right join [dbo].[Shops] s on s.ShopId = sc.ShopId
--where s.IsClosed = 0







GO
/****** Object:  View [dbo].[ViewShopComputersServerFull]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE view [dbo].[ViewShopComputersServerFull] as
select 
	ISNULL(sc.ComputerId, (ROW_NUMBER() OVER(ORDER BY ComputerId ASC)) * -1) as ComputerId
	,s.ShopId
	,s.ShopName
	,s.ShopRegion
	,s.ExchangeError
	,s.AddressToConnect
	,s.Phone
	,s.IsClosed
	,s.Email
	,case when s.LastSuccessfulUpload = '19000101' then null else s.LastSuccessfulUpload end as LastSuccessfulUpload
	,case when s.LastSuccessfulReceive = '19000101' then null else s.LastSuccessfulReceive end as LastSuccessfulReceive
	,ISNULL(sc.ComputerName, '') as ComputerName
	,ISNULL(sc.ComputerAddress, '') as ComputerAddress
	,ISNULL(sc.Is1CServer, 0) as Is1CServer
	,ISNULL(sc.IsMainCashbox, 0) as IsMainCashbox
	,ISNULL(sc.LastUpdateTime, null) as LastUpdateTime
	,ISNULL(sc.ComputerHash, '') as ComputerHash
	,ISNULL(sc.Mac, '') as Mac
	,ISNULL(sc.MagicUpdaterVersion, '') as MagicUpdaterVersion
	,ISNULL(sc.External_IP, '') as External_IP 
	,ISNULL(sc.IsTaskerAlive, 0) as IsTaskerAlive
	,ISNULL(sc.IsON, 0) as IsON
	,ISNULL((select OperationTypeRu from [dbo].[ViewOperations] where ID = (select max(ID) from Operations where ComputerId = sc.ComputerId and CreationDate > dateadd(hh,-4,getdate()))), '') as OperationTypeRu
	,ISNULL((select CreationDate from [dbo].[ViewOperations] where ID = (select max(ID) from Operations where ComputerId = sc.ComputerId and CreationDate > dateadd(hh,-4,getdate()))), null) as OperationCreationDate
	,ISNULL((select 
		 case when OperStateId = 5 then OperState else 
		 case when IsCompleted = 1 and Is1CError = 0 and OperStateId = 2 then 'Завершена успешно'
		 else 'Завершена с ошибкой' end end as OperState
	from [dbo].[ViewOperations]
	where ID = (select max(ID) from Operations where ComputerId = sc.ComputerId and CreationDate > dateadd(hh,-4,getdate()))), '') as OperState
	,ISNULL(sc.LastError, '') as LastError
from
(
	select
		*
	from [dbo].[ShopComputers] sc
	--where sc.Is1CServer = 1
) sc
right join [dbo].[Shops] s on s.ShopId = sc.ShopId
--where s.IsClosed = 0



GO
/****** Object:  View [dbo].[ViewOperationsTop1000]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






    
CREATE VIEW [dbo].[ViewOperationsTop1000]      
AS      
	select top 1000 
		ID
		,OperationType
		,OperationTypeEn
		,OperationTypeRu
		,CreatedUser
		,ComputerId
		,ComputerName
		,ShopId
		,Attributes
		,IsRead
		,CreationDate
		,DateRead
		,OperStateId
		,OperState
		,IsCompleted
		,DateCompleteOrError
		,Result
		,LogDate1C
		,LogMessage1C
		,Is1CError
		,IsActionError
		,IsFromSheduler
		,PoolDate   
		,GroupGUID 
	from [dbo].[ViewOperations] with (nolock)
	order by ID desc





GO
/****** Object:  View [dbo].[ComputerErrorsLogView]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ComputerErrorsLogView] as
select 
	cel.ErrorId
	, sc.ShopId
	, cel.ComputerId
	, sc.ComputerName
	, cel.ErrorMessage
	, cel.ErrorDate
	, sc.Mac
from [dbo].[ComputerErrorsLog] cel
join ShopComputers sc on sc.ComputerId = cel.ComputerId
GO
/****** Object:  View [dbo].[LocalSettingsView]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[LocalSettingsView]
as
select 
	ls.ComputerId
	, ls.SettingId
	, lsd.Name
	, ls.Value
	, lsd.Description
from [dbo].[LocalSettings] ls
join [dbo].[LocalSettingsDictionary] lsd on lsd.SettingId = ls.SettingId
GO
/****** Object:  View [dbo].[ViewComputerErrorsLog]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewComputerErrorsLog]  
AS  
 SELECT  
	cel.ErrorId
	, cel.ComputerId
	, sc.ComputerName
	, sc.External_IP
	, sc.Is1CServer
	, sc.IsMainCashbox
	, sc.IsTaskerAlive
	, sc.IsON
	, cel.ErrorMessage
	, cel.ErrorDate
 FROM [dbo].[ComputerErrorsLog] cel   
 JOIN ShopComputers sc on sc.ComputerId = cel.ComputerId  
GO
/****** Object:  View [dbo].[ViewOperationsForExecute]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewOperationsForExecute]
AS
	SELECT 
		o.ID 
		,o.OperationType 
		,o.Attributes
	FROM Operations o 
	LEFT JOIN OperationsReports opr ON opr.OperationId = o.ID
	WHERE 
		isnull(opr.IsRead, 0) = 0
GO
/****** Object:  View [dbo].[ViewOperStates]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ViewOperStates] 
as
select
	os.OperationId
	, o.OperationType
	, sc.ShopId
	, sc.ComputerName
	, os.OperStateId
	, osv.Name
	, osv.Description
	, os.StateDate
from OperationsStates os
join OperationStatesVoc osv on osv.Id = os.OperStateId
join Operations o on o.ID = os.OperationId
join ShopComputers sc on sc.ComputerId = o.ComputerId
GO
/****** Object:  View [dbo].[ViewShedulerSteps]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewShedulerSteps] AS
SELECT
	taskId,
	st.Id AS ParentId,
	st.OnOperationCompleteStep AS ChildId,
	1 AS IsChildPositiveBranch
FROM 
	[dbo].[ShedulerSteps]  st
WHERE st.OnOperationCompleteStep <> 0
UNION
SELECT 
	taskId,
	st.Id AS ParentId,
	st.OnOperationErrorStep AS ChildId,
	0 AS IsChildPositiveBranch
FROM 
	[dbo].[ShedulerSteps]  st
WHERE st.OnOperationErrorStep <> 0
UNION
SELECT 
	Id as taskId,
	0 as ParentId,
	FirstStepId AS ChildId,
	1 AS IsChildPositiveBranch
FROM [dbo].[ShedulerTasks]
GO
/****** Object:  View [dbo].[ViewShedulerStepsVis]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewShedulerStepsVis] AS  
  
WITH steps   
(  
 Id  
 ,Step  
 ,TaskId  
 ,OperationType  
 ,Name  
 ,NameRus  
 ,nameVis  
 ,nameVisCount  
 ,RepeatCount  
 ,RepeatTimeout  
 ,OperationCheckIntervalMs  
 ,OnOperationCompleteStep  
 ,OnOperationErrorStep  
 ,OrderId  
 ,OperationAttributes
)  
AS  
(  
 SELECT  
  ss.Id  
  ,(ROW_NUMBER() OVER(partition by ss.TaskId order by ss.Id)) as Step  
  ,ss.TaskId  
  ,ss.OperationType  
  ,ot.Name  
  ,ot.NameRus  
  ,CASE WHEN ISNULL(ot.NameRus, '') = '' THEN ot.Name ELSE ot.NameRus END as nameVis  
  ,'['+CAST((ROW_NUMBER() OVER(partition by ss.TaskId order by ss.Id)) as nvarchar)+'] ' + CASE WHEN ISNULL(ot.NameRus, '') = '' THEN ot.Name ELSE ot.NameRus END as nameVisCount  
  ,ss.RepeatCount  
  ,ss.RepeatTimeout  
  ,ss.OperationCheckIntervalMs  
  ,ss.OnOperationCompleteStep  
  ,ss.OnOperationErrorStep  
  ,ss.OrderId
  ,ss.OperationAttributes  
 FROM   
  [dbo].[ShedulerSteps] ss  
  join OperationTypes ot on ot.Id = ss.OperationType  
)  
  
SELECT  
 bs.Id  
 ,bs.Step  
 ,bs.TaskId  
 ,bs.OperationType  
 ,bs.Name  
 ,bs.NameRus  
 ,bs.nameVis  
 ,bs.nameVisCount  
 ,bs.RepeatCount  
 ,bs.RepeatTimeout  
 ,bs.OperationCheckIntervalMs  
 ,bs.OnOperationCompleteStep  
 ,cs.Name as NameCompleteStep  
 ,cs.NameRus as NameRusCompleteStep  
 ,cs.NameVis as nameVisCompleteStep  
 ,CASE WHEN ISNULL(cs.NameVisCount, N'') = N'' THEN N'Завершить' ELSE cs.NameVisCount END as nameVisCountCompleteStep  
 ,bs.OnOperationErrorStep  
 ,es.Name as NameErrorStep  
 ,es.NameRus as NameRusErrorStep  
 ,es.NameVis as nameVisErrorStep  
 ,CASE WHEN ISNULL(es.NameVisCount, N'') = N'' THEN N'Завершить' ELSE es.NameVisCount END as nameVisCountErrorStep  
 ,bs.OrderId 
 ,bs.OperationAttributes   
FROM   
 steps bs  
 left join steps cs on cs.Id = bs.OnOperationCompleteStep  
 left join steps es on es.Id = bs.OnOperationErrorStep  
GO
ALTER TABLE [dbo].[Operations] ADD  CONSTRAINT [DF_Operations_CreationDate]  DEFAULT (getutcdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[ActionsReports]  WITH CHECK ADD  CONSTRAINT [FK_ActionsReports_Operations] FOREIGN KEY([OperationId])
REFERENCES [dbo].[Operations] ([ID])
GO
ALTER TABLE [dbo].[ActionsReports] CHECK CONSTRAINT [FK_ActionsReports_Operations]
GO
ALTER TABLE [dbo].[ActionsReports]  WITH CHECK ADD  CONSTRAINT [FK_ActionsReports_ShopComputers] FOREIGN KEY([ComputerId])
REFERENCES [dbo].[ShopComputers] ([ComputerId])
GO
ALTER TABLE [dbo].[ActionsReports] CHECK CONSTRAINT [FK_ActionsReports_ShopComputers]
GO
ALTER TABLE [dbo].[ComputerErrorsLog]  WITH CHECK ADD  CONSTRAINT [FK_ComputerErrorsLog_ShopComputers] FOREIGN KEY([ComputerId])
REFERENCES [dbo].[ShopComputers] ([ComputerId])
GO
ALTER TABLE [dbo].[ComputerErrorsLog] CHECK CONSTRAINT [FK_ComputerErrorsLog_ShopComputers]
GO
ALTER TABLE [dbo].[LocalSettings]  WITH NOCHECK ADD  CONSTRAINT [FK_LocalSettings_LocalSettingsDictionary] FOREIGN KEY([SettingId])
REFERENCES [dbo].[LocalSettingsDictionary] ([SettingId])
GO
ALTER TABLE [dbo].[LocalSettings] CHECK CONSTRAINT [FK_LocalSettings_LocalSettingsDictionary]
GO
ALTER TABLE [dbo].[LocalSettings]  WITH NOCHECK ADD  CONSTRAINT [FK_LocalSettings_ShopComputers] FOREIGN KEY([ComputerId])
REFERENCES [dbo].[ShopComputers] ([ComputerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LocalSettings] CHECK CONSTRAINT [FK_LocalSettings_ShopComputers]
GO
ALTER TABLE [dbo].[Logs1C]  WITH CHECK ADD  CONSTRAINT [FK_Logs1C_ShopComputers] FOREIGN KEY([ComputerId])
REFERENCES [dbo].[ShopComputers] ([ComputerId])
GO
ALTER TABLE [dbo].[Logs1C] CHECK CONSTRAINT [FK_Logs1C_ShopComputers]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_Operations_OperationTypes] FOREIGN KEY([OperationType])
REFERENCES [dbo].[OperationTypes] ([Id])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_Operations_OperationTypes]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_Operations_ShopComputers] FOREIGN KEY([ComputerId])
REFERENCES [dbo].[ShopComputers] ([ComputerId])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_Operations_ShopComputers]
GO
ALTER TABLE [dbo].[OperationsReports]  WITH CHECK ADD  CONSTRAINT [FK_OperationsReports_Operations] FOREIGN KEY([OperationId])
REFERENCES [dbo].[Operations] ([ID])
GO
ALTER TABLE [dbo].[OperationsReports] CHECK CONSTRAINT [FK_OperationsReports_Operations]
GO
ALTER TABLE [dbo].[OperationsStates]  WITH CHECK ADD  CONSTRAINT [FK_OperationsStates_Operations] FOREIGN KEY([OperationId])
REFERENCES [dbo].[Operations] ([ID])
GO
ALTER TABLE [dbo].[OperationsStates] CHECK CONSTRAINT [FK_OperationsStates_Operations]
GO
ALTER TABLE [dbo].[OperationsStates]  WITH NOCHECK ADD  CONSTRAINT [FK_OperationsStates_OperationStatesVoc] FOREIGN KEY([OperStateId])
REFERENCES [dbo].[OperationStatesVoc] ([Id])
GO
ALTER TABLE [dbo].[OperationsStates] CHECK CONSTRAINT [FK_OperationsStates_OperationStatesVoc]
GO
ALTER TABLE [dbo].[OperationTypeAttributes]  WITH NOCHECK ADD  CONSTRAINT [FK_OperationTypeAttributes_OperationTypes] FOREIGN KEY([OperationTypeId])
REFERENCES [dbo].[OperationTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OperationTypeAttributes] CHECK CONSTRAINT [FK_OperationTypeAttributes_OperationTypes]
GO
ALTER TABLE [dbo].[OperationTypeAttributes]  WITH NOCHECK ADD  CONSTRAINT [FK_OperationTypeAttributes_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OperationTypeAttributes] CHECK CONSTRAINT [FK_OperationTypeAttributes_Users]
GO
ALTER TABLE [dbo].[OperationTypes]  WITH CHECK ADD  CONSTRAINT [FK_OperationTypes_OperationGroups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[OperationGroups] ([Id])
GO
ALTER TABLE [dbo].[OperationTypes] CHECK CONSTRAINT [FK_OperationTypes_OperationGroups]
GO
ALTER TABLE [dbo].[ShedulerPluginTasks]  WITH NOCHECK ADD  CONSTRAINT [FK_ShedulerPluginTasks_ShedulerStatuses] FOREIGN KEY([Status])
REFERENCES [dbo].[ShedulerStatuses] ([Id])
GO
ALTER TABLE [dbo].[ShedulerPluginTasks] CHECK CONSTRAINT [FK_ShedulerPluginTasks_ShedulerStatuses]
GO
ALTER TABLE [dbo].[ShedulerPluginTasks]  WITH NOCHECK ADD  CONSTRAINT [FK_ShedulerPluginTasks_ShedulerTaskModes] FOREIGN KEY([Mode])
REFERENCES [dbo].[ShedulerTaskModes] ([Id])
GO
ALTER TABLE [dbo].[ShedulerPluginTasks] CHECK CONSTRAINT [FK_ShedulerPluginTasks_ShedulerTaskModes]
GO
ALTER TABLE [dbo].[ShedulerSteps]  WITH NOCHECK ADD  CONSTRAINT [FK_ShedulerSteps_ShedulerTasks] FOREIGN KEY([TaskId])
REFERENCES [dbo].[ShedulerTasks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShedulerSteps] CHECK CONSTRAINT [FK_ShedulerSteps_ShedulerTasks]
GO
ALTER TABLE [dbo].[ShedulerTaskHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_ShedulerTaskHistory_ShedulerSteps] FOREIGN KEY([StepId])
REFERENCES [dbo].[ShedulerSteps] ([Id])
GO
ALTER TABLE [dbo].[ShedulerTaskHistory] CHECK CONSTRAINT [FK_ShedulerTaskHistory_ShedulerSteps]
GO
ALTER TABLE [dbo].[ShedulerTaskHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_ShedulerTaskHistory_ShedulerTasks] FOREIGN KEY([TaskId])
REFERENCES [dbo].[ShedulerTasks] ([Id])
GO
ALTER TABLE [dbo].[ShedulerTaskHistory] CHECK CONSTRAINT [FK_ShedulerTaskHistory_ShedulerTasks]
GO
ALTER TABLE [dbo].[ShedulerTasks]  WITH NOCHECK ADD  CONSTRAINT [FK_ShedulerTasks_ShedulerStatuses] FOREIGN KEY([Status])
REFERENCES [dbo].[ShedulerStatuses] ([Id])
GO
ALTER TABLE [dbo].[ShedulerTasks] CHECK CONSTRAINT [FK_ShedulerTasks_ShedulerStatuses]
GO
ALTER TABLE [dbo].[ShedulerTasks]  WITH NOCHECK ADD  CONSTRAINT [FK_ShedulerTasks_ShedulerSteps] FOREIGN KEY([FirstStepId])
REFERENCES [dbo].[ShedulerSteps] ([Id])
GO
ALTER TABLE [dbo].[ShedulerTasks] CHECK CONSTRAINT [FK_ShedulerTasks_ShedulerSteps]
GO
ALTER TABLE [dbo].[ShedulerTasks]  WITH NOCHECK ADD  CONSTRAINT [FK_ShedulerTasks_ShedulerTaskModes] FOREIGN KEY([Mode])
REFERENCES [dbo].[ShedulerTaskModes] ([Id])
GO
ALTER TABLE [dbo].[ShedulerTasks] CHECK CONSTRAINT [FK_ShedulerTasks_ShedulerTaskModes]
GO
ALTER TABLE [dbo].[ShedulerTasksComputersList]  WITH NOCHECK ADD  CONSTRAINT [FK_ShedulerTasksComputersList_ShedulerTasks] FOREIGN KEY([TaskId])
REFERENCES [dbo].[ShedulerTasks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShedulerTasksComputersList] CHECK CONSTRAINT [FK_ShedulerTasksComputersList_ShedulerTasks]
GO
ALTER TABLE [dbo].[ShopComputers]  WITH CHECK ADD  CONSTRAINT [FK_ShopComputers_Shops] FOREIGN KEY([ShopId])
REFERENCES [dbo].[Shops] ([ShopId])
GO
ALTER TABLE [dbo].[ShopComputers] CHECK CONSTRAINT [FK_ShopComputers_Shops]
GO
/****** Object:  StoredProcedure [dbo].[AddOperationType]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
        
CREATE PROCEDURE [dbo].[AddOperationType](        
 @Name nvarchar(512)        
 ,@NameRus nvarchar(512)        
 ,@GroupId int        
 ,@FileName nvarchar(510)        
 ,@LastModifiedDate datetime      
 ,@FileMD5 nvarchar(64)        
 ,@Description nvarchar(MAX)        
 )        
AS           
 declare @currentId int        
 declare @errorText varchar(512) = ''        
        
 if(EXISTS(select null from [dbo].[OperationTypes] where UPPER([FileName]) = UPPER(@FileName)))        
  set @errorText = 'Имя файла '+@FileName+' уже зарегистрировано в типах операций'        
 else        
 begin        
  select @currentId = max(Id) from [dbo].[OperationTypes]        
        
  if(@currentId>=10000)        
   set @currentId = @currentId + 1        
  else        
   set @currentId = 10000        
        
  INSERT [dbo].[OperationTypes]          
  (        
   [Id]        
   ,[Name]           
   ,[NameRus]          
   ,[GroupId]          
   ,[FileName]        
   ,[LastModifiedDate]        
   ,[FileMD5]          
   ,[Description]      
   ,[Visible]       
  )        
  VALUES        
  (        
   @currentId        
   ,@Name        
   ,@NameRus        
   ,@GroupId        
   ,@FileName       
   ,@LastModifiedDate       
   ,@FileMD5        
   ,@Description       
   ,1     
  )      
  select @currentId as Id    
 end 
GO
/****** Object:  StoredProcedure [dbo].[AddOperState]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddOperState]
    @OperationId int,
    @OperStateId int
AS 
   SET NOCOUNT ON;

   INSERT INTO [dbo].OperationsStates
   (
		OperationId,
		OperStateId,
		StateDate
   )
   VALUES
   (
		@OperationId,
		@OperStateId,
		GETUTCDATE()
   )
GO
/****** Object:  StoredProcedure [dbo].[AddShopFrom1CIfNotExists]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AddShopFrom1CIfNotExists]( 
  @pShopId nvarchar(200)
) AS   
IF NOT EXISTS(SELECT NULL FROM Shops WHERE (UPPER(ShopName) = UPPER(@pShopId)) or (UPPER(ShopId) = UPPER(@pShopId)))
BEGIN
	INSERT Shops 
	(
		ShopId
		,ShopName
		,ShopRegion
		,ExchangeError
		,LastSuccessfulUpload
		,LastSuccessfulReceive
		,AddressToConnect
		,Phone
		,IsClosed
	)
	VALUES			 
	(
		@pShopId
		,@pShopId 
		,null
		,0
		,null
		,null
		,null
		,null
		,0)
END
GO
/****** Object:  StoredProcedure [dbo].[ChangeComputerParams]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[ChangeComputerParams]( 
  @pComputerId int
  ,@pShopId nvarchar(100)
  ,@ComputerName nvarchar(100)
  ,@ComputerAddress varchar(50)
  ,@pIs1CServer bit
  ,@pIsMainCashbox bit
) AS   
	UPDATE ShopComputers SET 
		ShopId = @pShopId
		, ComputerName = @ComputerName
		, ComputerAddress = @ComputerAddress
		, Is1CServer = @pIs1CServer
		, IsMainCashbox = @pIsMainCashbox
		, LastUpdateTime = GETUTCDATE()
	WHERE ComputerId = @pComputerId

	SELECT NULL FROM ShopComputers WHERE ComputerId = @pComputerId


GO
/****** Object:  StoredProcedure [dbo].[ChangeComputerParams_Servece]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChangeComputerParams_Servece]( 
  @pComputerId int
  ,@pShopId nvarchar(100)
  ,@ComputerName nvarchar(100)
  ,@ComputerAddress varchar(50)
  ,@pIs1CServer bit
  ,@pIsMainCashbox bit
  ,@pMagicUpdaterVersion nvarchar(32)
) AS   
	UPDATE ShopComputers SET 
		ShopId = @pShopId
		, ComputerName = @ComputerName
		, ComputerAddress = @ComputerAddress
		, Is1CServer = @pIs1CServer
		, IsMainCashbox = @pIsMainCashbox
		, LastUpdateTime = GETUTCDATE()
		, MagicUpdaterVersion = @pMagicUpdaterVersion
	WHERE ComputerId = @pComputerId

	SELECT NULL FROM ShopComputers WHERE ComputerId = @pComputerId
GO
/****** Object:  StoredProcedure [dbo].[ChengeShopForComputer]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[ChengeShopForComputer]( 
  @pComputerId int
  ,@pShopId nvarchar(100)
) AS   
	UPDATE ShopComputers SET ShopId = @pShopId WHERE ComputerId = @pComputerId

GO
/****** Object:  StoredProcedure [dbo].[ComputerResponse]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[ComputerResponse]( 
  @pComputerId int
  ,@ComputerName nvarchar(100)
  ,@ComputerAddress varchar(50)
  ,@isTaskerAlive bit = 0
) AS  
	UPDATE ShopComputers SET ComputerName = @ComputerName, ComputerAddress = @ComputerAddress, LastUpdateTime = GETUTCDATE(), IsTaskerAlive = @isTaskerAlive WHERE ComputerId = @pComputerId
GO
/****** Object:  StoredProcedure [dbo].[DeleteComputer]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteComputer]( 
  @ComputerId int
) AS   
	delete ComputerErrorsLog where ComputerId = @ComputerId
	delete ActionsReports where ComputerId = @ComputerId
	delete Logs1C where ComputerId = @ComputerId
	delete OperationsReports where OperationId in (select ID from Operations where ComputerId = @ComputerId)
	delete OperationsStates where OperationId in (select ID from Operations where ComputerId = @ComputerId)
	delete Operations where ComputerId = @ComputerId
	delete ShopComputers where ComputerId = @ComputerId
GO
/****** Object:  StoredProcedure [dbo].[DeleteOneOperationReport]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOneOperationReport]( 
  @OperationId int
) AS   
	delete OperationsStates where OperationId = @OperationId
	delete OperationsReports where OperationId = @OperationId
	delete operations where ID = @OperationId
GO
/****** Object:  StoredProcedure [dbo].[DeleteOperationReports]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOperationReports]( 
  @OperationTypeId int
) AS   
	delete OperationsStates where OperationId in (select id from operations where OperationType = @OperationTypeId) 
	delete OperationsReports where OperationId in (select id from operations where OperationType = @OperationTypeId) 
	delete operations where OperationType = @OperationTypeId
GO
/****** Object:  StoredProcedure [dbo].[DeleteOperationType]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOperationType]( 
  @OperationTypeId int
) AS   
	exec [dbo].[DeleteOperationReports] @OperationTypeId
	delete [dbo].[OperationTypes] where Id = @OperationTypeId
GO
/****** Object:  StoredProcedure [dbo].[GetCommonGlobalSettings]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetCommonGlobalSettings]  
as  
begin  
 select   
  Id  
  , Name  
  , Value  
  , Description  
 from [dbo].[CommonGlobalSettings]
end
GO
/****** Object:  StoredProcedure [dbo].[GetComputerById]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetComputerById] ( 
  @ComputerId int
) AS   
select * from ShopComputers where ComputerId = @ComputerId
GO
/****** Object:  StoredProcedure [dbo].[GetComputerSettings]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[GetComputerSettings]( 
  @pComputerHash nvarchar(32)
) AS   
	SELECT  Computerid, ShopId, Is1CServer, IsMainCashbox FROM ShopComputers WHERE ComputerHash = @pComputerHash
GO
/****** Object:  StoredProcedure [dbo].[GetComputerSettingsViaMac]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetComputerSettingsViaMac]( 
  @pMac nvarchar(32)
) AS   
	SELECT  Computerid, ShopId, Is1CServer, IsMainCashbox FROM ShopComputers WHERE Mac = @pMac
GO
/****** Object:  StoredProcedure [dbo].[GetComputersList]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetComputersList] ( 
  @ComputerId int
) AS   
select ComputerId, ShopId, ComputerName, ComputerAddress, is1CServer, isMainCashbox from ShopComputers where ShopID in (SELECT ShopId FROM ShopComputers WHERE ComputerId = @ComputerId 
) AND ComputerId <> @ComputerId AND IsON = 1
GO
/****** Object:  StoredProcedure [dbo].[GetLocalSettingsForComputer]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetLocalSettingsForComputer]  
(  
 @ComputerId int  
)  
as  
begin  
 select   
  SettingId  
  , Name  
  , Value  
  , Description  
 from [LocalSettingsView]  
 where ComputerId = @ComputerId
end
GO
/****** Object:  StoredProcedure [dbo].[GetOperationTypeByFileName]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetOperationTypeByFileName]( 
  @FileName nvarchar(510)
) AS   
SELECT  
	Id
	,Name
	,NameRus
	,GroupId
	,LastModifiedDate
	,FileMD5
	,[Description]
	,[GUID] 
FROM [dbo].[OperationTypes] WHERE [FileName] = @FileName
GO
/****** Object:  StoredProcedure [dbo].[GetOperationTypesList]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOperationTypesList] AS     
select
	Id
	,Name
	,NameRus
	,GroupId
	,FileName
	,FileMD5
	,Description
	,GUID
from [dbo].[OperationTypes]
GO
/****** Object:  StoredProcedure [dbo].[IsShopExists]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[IsShopExists]
(
	@ShopId nvarchar(200)
)
AS   
	if(exists(SELECT NULL FROM Shops where ShopId = @ShopId))
		select 1 as result
	else
		select 0 as result
GO
/****** Object:  StoredProcedure [dbo].[LogError]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LogError]
    @ComputerId int,
    @ErrorMessage nvarchar(max)
AS 
	SET NOCOUNT ON;

	--Костыль от засорения таблицы неизвестными агентами
	if @ComputerId in (95)
	begin
		return	
	end

	INSERT INTO [dbo].ComputerErrorsLog
	(
		ComputerId,
		ErrorMessage,
		ErrorDate
	)
	VALUES
	(
		@ComputerId,
		@ErrorMessage,
		GETUTCDATE()
	)

GO
/****** Object:  StoredProcedure [dbo].[RegisterComputer]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[RegisterComputer]( 
  @pShopId nvarchar(100)
  ,@pComputerName nvarchar(100)
  ,@pComputerAddress varchar(50)
  ,@pIs1CServer bit
  ,@pIsMainCashbox bit
  ,@pMac nvarchar(32)
) AS   
IF NOT EXISTS(SELECT NULL FROM ShopComputers WHERE Mac = @pMac)
BEGIN
	INSERT ShopComputers (ShopId  , ComputerName  , ComputerAddress  , Is1CServer  , IsMainCashbox  , LastUpdateTime                       , Mac)
		VALUES			 (@pShopId, @pComputerName, @pComputerAddress, @pIs1CServer, @pIsMainCashbox, GETUTCDATE(), @pMac)
	
		SELECT SCOPE_IDENTITY() AS ComputerId, 1 AS isNew
END
ELSE
		SELECT ComputerId, 0 AS isNew FROM ShopComputers WHERE Mac = @pMac
GO
/****** Object:  StoredProcedure [dbo].[RegisterComputer_Service]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 
CREATE PROCEDURE [dbo].[RegisterComputer_Service]( 
  @pShopId nvarchar(100)
  ,@pComputerName nvarchar(100)
  ,@pComputerAddress varchar(50)
  ,@pIs1CServer bit
  ,@pIsMainCashbox bit
  ,@pMac nvarchar(32)
) AS   
IF NOT EXISTS(SELECT NULL FROM ShopComputers WHERE Mac = @pMac)
BEGIN
	INSERT ShopComputers (ShopId  , ComputerName  , ComputerAddress  , Is1CServer  , IsMainCashbox  , LastUpdateTime                       , Mac)
		VALUES			 (@pShopId, @pComputerName, @pComputerAddress, @pIs1CServer, @pIsMainCashbox, GETUTCDATE(), @pMac)
	
		SELECT SCOPE_IDENTITY() AS ComputerId, 1 AS isNew
END
ELSE
		SELECT ComputerId, 0 AS isNew FROM ShopComputers WHERE Mac = @pMac
GO
/****** Object:  StoredProcedure [dbo].[SelectComputersByShop]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[SelectComputersByShop](
	@pComputerID int 
	, @pShopId nvarchar(200)
)AS   
    if isnull(@pComputerID, 0) = 0
		SELECT * FROM ShopComputers where ShopId = @pShopId
	else
		SELECT * FROM ShopComputers where ShopId = @pShopId AND ComputerId <> @pComputerID
GO
/****** Object:  StoredProcedure [dbo].[SelectOperationsList]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectOperationsList](   
  @pComputerID int  
) AS     
SELECT   
 o.ID   
 ,o.OperationType   
 ,o.Attributes  
FROM Operations o   
LEFT JOIN OperationsReports opr ON opr.OperationId = o.ID  
WHERE   
 o.ComputerID = @pComputerID  
 AND isnull(opr.IsRead, 0) = 0
 AND o.OperationType <> 1003
GO
/****** Object:  StoredProcedure [dbo].[SelectOperationsView]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectOperationsView] AS       
SELECT 
	*   
FROM ViewOperations     
GO
/****** Object:  StoredProcedure [dbo].[SelectRestartOperation]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectRestartOperation](   
  @pComputerID int  
) AS     
SELECT   
 o.ID   
 ,o.OperationType   
 ,o.Attributes  
FROM Operations o   
LEFT JOIN OperationsReports opr ON opr.OperationId = o.ID  
WHERE   
 o.ComputerID = @pComputerID  
 AND isnull(opr.IsRead, 0) = 0
 AND o.OperationType = 1003
GO
/****** Object:  StoredProcedure [dbo].[SelectShopsList]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[SelectShopsList]
AS   
	SELECT * FROM Shops

GO
/****** Object:  StoredProcedure [dbo].[SendLog1C]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SendLog1C]
    @ComputerId int,
	@IsError bit,
    @LogMessage nvarchar(max),
	@OperationId int = 0
AS 
   SET NOCOUNT ON;

   INSERT INTO [dbo].Logs1C
   (
		ComputerId,
		IsError,
		LogMessage,
		LogDate,
		OperationId
   )
   VALUES
   (
		@ComputerId,
		@IsError,
		@LogMessage,
		GETUTCDATE(),
		@OperationId
   )
GO
/****** Object:  StoredProcedure [dbo].[SendOperationReport]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[SendOperationReport]( 
  @pOperationID int
  ,@pIsCompleted bit
  ,@pResult varchar(MAX)
) AS   
	UPDATE OperationsReports SET IsCompleted = @pIsCompleted, Result = @pResult, DateCompleteOrError = GETUTCDATE() WHERE OperationId = @pOperationID

GO
/****** Object:  StoredProcedure [dbo].[SetActionReport]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetActionReport]( 
  @pOperationId int
  ,@pComputerId int
  ,@pActionName nvarchar(100)
  ,@pIsFromLan bit
  ,@pIsCompleted bit
  ,@pResult nvarchar(MAX)
) AS   
insert ActionsReports (OperationId, ComputerId, ActionName, IsFromLan, IsCompleted, DateCompleteOrError, Result)
	values
					  (@pOperationId, @pComputerId, @pActionName, @pIsFromLan, @pIsCompleted, GETUTCDATE(), @pResult)



		
GO
/****** Object:  StoredProcedure [dbo].[SetAgentLastError]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetAgentLastError]
    @ComputerId int,
    @ErrorMessage nvarchar(max)
AS 
   SET NOCOUNT ON;

   UPDATE [dbo].[ShopComputers]
   SET 
	LastError = @ErrorMessage
	,LastErrorDate = GETUTCDATE()
   WHERE ComputerId = @ComputerId
GO
/****** Object:  StoredProcedure [dbo].[SetCommonGlobalSettings]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SetCommonGlobalSettings]  
(  
 @SettingName nvarchar(512)  
 , @SettingValue nvarchar(2000)  
)  
as  
begin  
 declare @settingId int  
  
 select @settingId = id from [dbo].[CommonGlobalSettings] where Name = @SettingName  
  
 if (isnull(@settingId, 0) <> 0)  
 begin  
   if not exists(select null from [dbo].[CommonGlobalSettings] where Id = @settingId)  
   begin  
     insert [dbo].[CommonGlobalSettings] (Id, Value)  
     values  
     (@settingId, @SettingValue)  
   end  
   else  
   begin  
     update [dbo].[CommonGlobalSettings] set Value = @SettingValue where Id = @settingId  
   end  
 end  
end
GO
/****** Object:  StoredProcedure [dbo].[SetExternalIp_Service]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetExternalIp_Service]( 
  @pComputerId int
  , @pExternalAddress varchar(50)
) AS  
	UPDATE ShopComputers SET External_IP = @pExternalAddress WHERE ComputerId = @pComputerId
GO
/****** Object:  StoredProcedure [dbo].[SetIsAgentSettingsReaded]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
        
CREATE PROCEDURE [dbo].[SetIsAgentSettingsReaded](        
	@ComputerId int
	,@value bit       
)        
AS           
	update [dbo].[ShopComputers]
		set IsAgentSettingsReaded = @value
	where ComputerId = @ComputerId
 
GO
/****** Object:  StoredProcedure [dbo].[SetLocalSettingsForComputer]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SetLocalSettingsForComputer]  
(  
 @ComputerId int  
 , @SettingName nvarchar(512)  
 , @SettingValue nvarchar(2000)  
)  
as  
begin  
 declare @settingId int  
  
 select @settingId = SettingId from [dbo].[LocalSettingsDictionary] where Name = @SettingName  
  
 if (isnull(@settingId, 0) <> 0)  
 begin  
   if not exists(select null from [dbo].[LocalSettingsView] where ComputerId = @ComputerId and SettingId = @settingId)  
   begin  
     insert [dbo].[LocalSettings] (ComputerId, SettingId, Value)  
     values  
     (@ComputerId, @settingId, @SettingValue)  
   end  
   else  
   begin  
     update [dbo].[LocalSettings] set Value = @SettingValue where ComputerId = @ComputerId and SettingId = @settingId  
   end  
 end  
end
GO
/****** Object:  StoredProcedure [dbo].[SetMacAddress_Service]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetMacAddress_Service]( 
  @pComputerId int
  ,@pShopId nvarchar(100)
  ,@ComputerName nvarchar(100)
  ,@ComputerAddress varchar(50)
  ,@pIs1CServer bit
  ,@pIsMainCashbox bit
  ,@pMac nvarchar(32)
) AS   
	UPDATE ShopComputers SET 
		ShopId = @pShopId
		, ComputerName = @ComputerName
		, ComputerAddress = @ComputerAddress
		, Is1CServer = @pIs1CServer
		, IsMainCashbox = @pIsMainCashbox
		, LastUpdateTime = GETUTCDATE()
		, Mac = @pMac
	WHERE ComputerId = @pComputerId

	SELECT NULL FROM ShopComputers WHERE ComputerId = @pComputerId
GO
/****** Object:  StoredProcedure [dbo].[SetMainSqlSettings]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[SetMainSqlSettings](   
  @pComputerId int  
  ,@pShopId nvarchar(100)  
  ,@pIs1CServer bit  
  ,@pIsMainCashbox bit  
) AS     
 UPDATE ShopComputers SET   
  ShopId = @pShopId  
  , Is1CServer = @pIs1CServer  
  , IsMainCashbox = @pIsMainCashbox  
 WHERE ComputerId = @pComputerId  
GO
/****** Object:  StoredProcedure [dbo].[SetOperationIsReaded]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetOperationIsReaded]( 
  @pOperationID int
) AS   
if not exists(select null from OperationsReports where OperationId = @pOperationID)
begin
	insert OperationsReports 
		(OperationId, IsRead, isCompleted, Result, DateRead) 
		values
		(@pOperationID, 1, 0, '', GETUTCDATE())
	select 1 as Result
end
else
	select 0 as Result
GO
/****** Object:  StoredProcedure [dbo].[SetShopToOpen]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetShopToOpen](   
  @pShopId nvarchar(100)  
) AS     
update [dbo].[Shops] set IsClosed = 0 where ShopId = @pShopId
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTableData]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetTableData] (    
   @TableName varchar(200))    
AS     
   -- Remove any square brackets, we only want the table name    
   SET @TableName = REPLACE(REPLACE(@TableName, '[', ''), ']', '')    
     
   DECLARE @SelectFrom nvarchar(max);    
   -- If temp table exists remove it    
   IF OBJECT_ID('tempdb..#TableNames') IS NOT NULL     
      DROP TABLE #TableNames;    
     
   -- Get a list of all tables that match in all schemas    
   SELECT   TableName = s.NAME + '.' + o.name    
   INTO     #TableNames    
   FROM     sys.objects o    
   JOIN     sys.schemas s ON o.schema_id = s.schema_id    
   WHERE    o.name = @TableName    
            AND o.type in ('U','V')    
     
   -- Loop through all tables and output table results    
   WHILE ( SELECT COUNT (1) FROM #TableNames ) >= 1     
      BEGIN    
         SELECT TOP 1 @SelectFrom = N'SELECT * FROM ' + TableName    
         FROM     #TableNames T    
     
         EXECUTE sp_executesql @SelectFrom;    
     
         DELETE TOP (1) FROM #TableNames    
      END    
     
   -- clean up    
   DROP TABLE #TableNames  
GO
/****** Object:  StoredProcedure [dbo].[UpdateOperationTypeById]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOperationTypeById](     
 @Id int    
 ,@Name nvarchar(512)    
 ,@NameRus nvarchar(512)    
 ,@GroupId int    
 ,@FileName nvarchar(510)    
 ,@LastModifiedDate datetime  
 ,@FileMD5 nvarchar(64)    
 ,@Description nvarchar(MAX)    
) AS       
 UPDATE [dbo].[OperationTypes] SET     
  [Name]   = @Name    
  ,[NameRus]  = @NameRus    
  ,[GroupId]  = @GroupId    
  ,[FileName]  = @FileName   
  ,[LastModifiedDate] = @LastModifiedDate   
  ,[FileMD5]  = @FileMD5    
  ,[Description] = @Description
  ,[Visible] = 1 
 WHERE [Id] = @Id    
    
    
GO
/****** Object:  StoredProcedure [dbo].[UpdateOperationTypesFieldsById]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOperationTypesFieldsById]
	@Id int
	,@FieldName nvarchar(512)
	,@Value nvarchar(max)
AS 
BEGIN TRY 
	declare @IdStr nvarchar(512) = cast(@Id as nvarchar)
	exec (N'update [dbo].[OperationTypes] set ['+@FieldName+'] = '''+@Value+''' where Id = '+@IdStr)
	select 0 as ResultId, N'' as [Message]
END TRY  
BEGIN CATCH
	select -1 as ResultId, N'Ошибка изменения поля '+@FieldName as [Message]
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[UpdateVersion]    Script Date: 30.07.2017 16:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[UpdateVersion]( 
  @pComputerId int
  ,@pVersion nvarchar(32)
) AS   
	UPDATE ShopComputers SET 
		MagicUpdaterVersion = @pVersion
	WHERE ComputerId = @pComputerId

	SELECT NULL FROM ShopComputers WHERE ComputerId = @pComputerId
GO
