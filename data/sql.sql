USE [lfejy]
GO
/****** Object:  Table [dbo].[warntype]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warntype](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Num] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_warntype] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemporaryCard]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemporaryCard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[P_Id] [nvarchar](100) NULL,
	[Addtime] [datetime] NULL,
	[C_Id] [nvarchar](100) NULL,
 CONSTRAINT [PK_TemporaryCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopstype]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopstype](
	[tId] [int] IDENTITY(1,1) NOT NULL,
	[tNum] [nvarchar](50) NULL,
	[tName] [nvarchar](50) NULL,
 CONSTRAINT [PK_shopstype] PRIMARY KEY CLUSTERED 
(
	[tId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shops]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shops](
	[sId] [int] IDENTITY(1,1) NOT NULL,
	[sNum] [nvarchar](50) NULL,
	[sName] [nvarchar](50) NULL,
	[sContact] [nvarchar](50) NULL,
	[sMobile] [nvarchar](50) NULL,
	[sProvince] [nvarchar](50) NULL,
	[sCity] [nvarchar](50) NULL,
	[sTown] [nvarchar](50) NULL,
	[sAddress] [nvarchar](100) NULL,
	[sRemark] [ntext] NULL,
	[stNum] [nvarchar](50) NULL,
	[sMaker] [nvarchar](50) NULL,
	[sDate] [nvarchar](50) NULL,
	[sPrint] [ntext] NULL,
	[sCommission] [ntext] NULL,
 CONSTRAINT [PK_shops] PRIMARY KEY CLUSTERED 
(
	[sId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[rId] [int] IDENTITY(1,1) NOT NULL,
	[rNum] [nvarchar](50) NULL,
	[rName] [nvarchar](50) NULL,
	[rRight] [ntext] NULL,
	[rRightbtn] [ntext] NULL,
	[rsNum] [nvarchar](50) NULL,
	[rRemark] [ntext] NULL,
	[rRightone] [ntext] NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[rId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prsentchange]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prsentchange](
	[cId] [int] IDENTITY(1,1) NOT NULL,
	[cNum] [nvarchar](50) NULL,
	[cMnum] [nvarchar](50) NULL,
	[cGnum] [nvarchar](50) NULL,
	[cShopname] [nvarchar](50) NULL,
	[cDate] [nvarchar](50) NULL,
	[cMaker] [nvarchar](50) NULL,
	[jifen] [nvarchar](50) NULL,
 CONSTRAINT [PK_prsentchange] PRIMARY KEY CLUSTERED 
(
	[cId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[presentimg]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presentimg](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[Imgs] [ntext] NULL,
	[gNum] [nvarchar](50) NULL,
 CONSTRAINT [PK_nt] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[present]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[present](
	[gId] [int] IDENTITY(1,1) NOT NULL,
	[gNum] [nvarchar](50) NULL,
	[gName] [nvarchar](50) NULL,
	[gJifen] [decimal](18, 0) NULL,
	[gState] [nvarchar](50) NULL,
	[gImg] [ntext] NULL,
	[gSnum] [nvarchar](50) NULL,
	[gDate] [nvarchar](50) NULL,
	[gCount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_present] PRIMARY KEY CLUSTERED 
(
	[gId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[messageset]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messageset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[xuhao] [nvarchar](50) NULL,
	[Pwd] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[states] [nvarchar](50) NULL,
	[contents] [nvarchar](50) NULL,
 CONSTRAINT [PK_messageset] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menutwo]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menutwo](
	[tNum] [nvarchar](50) NULL,
	[tName] [nvarchar](50) NULL,
	[tImg] [nvarchar](50) NULL,
	[tSrc] [nvarchar](50) NULL,
	[tHeight] [nvarchar](50) NULL,
	[tWidth] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menuthree]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menuthree](
	[eNum] [nvarchar](50) NULL,
	[eName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menuset]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menuset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Img] [nvarchar](500) NULL,
	[Src] [nvarchar](500) NULL,
	[Height] [nvarchar](50) NULL,
	[Width] [nvarchar](50) NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_menuset] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menuone]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menuone](
	[oNum] [nvarchar](50) NOT NULL,
	[oName] [nvarchar](50) NULL,
 CONSTRAINT [PK_menuone] PRIMARY KEY CLUSTERED 
(
	[oNum] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[membersinfo]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[membersinfo](
	[mNum] [nvarchar](50) NULL,
	[mName] [nvarchar](50) NULL,
	[mSex] [nvarchar](50) NULL,
	[mNoId] [nvarchar](50) NULL,
	[mBirth] [datetime] NULL,
	[mMobile] [nvarchar](50) NULL,
	[mQQ] [nvarchar](50) NULL,
	[mWeChat] [nvarchar](50) NULL,
	[mEmail] [nvarchar](50) NULL,
	[mProvince] [nvarchar](50) NULL,
	[mCity] [nvarchar](50) NULL,
	[mTown] [nvarchar](50) NULL,
	[mAddress] [nvarchar](100) NULL,
	[mMakecard] [nvarchar](50) NULL,
	[mMakedate] [datetime] NULL,
	[mPastdate] [nvarchar](50) NULL,
	[mBalance] [decimal](18, 2) NULL,
	[mIntegral] [nvarchar](50) NULL,
	[mShopNum] [nvarchar](50) NULL,
	[mStates] [nvarchar](50) NULL,
	[mType] [nvarchar](50) NULL,
	[mLevel] [nvarchar](50) NULL,
	[mRemark] [ntext] NULL,
	[mPwd] [nvarchar](50) NULL,
	[mId] [int] IDENTITY(1,1) NOT NULL,
	[mTuiJian] [nchar](50) NULL,
	[mTuiJIanName] [nchar](50) NULL,
 CONSTRAINT [PK_membersinfo] PRIMARY KEY CLUSTERED 
(
	[mId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[memberlevel]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[memberlevel](
	[lId] [int] IDENTITY(1,1) NOT NULL,
	[lNum] [nvarchar](50) NULL,
	[lName] [nvarchar](50) NULL,
	[lDiscount] [decimal](18, 2) NULL,
	[ljifen] [decimal](18, 0) NULL,
	[lNblance] [decimal](18, 2) NULL,
	[lNjifen] [decimal](18, 0) NULL,
	[lBuyprice] [decimal](18, 2) NULL,
	[lRemark] [nvarchar](50) NULL,
	[lPasttime] [datetime] NULL,
	[lShopNum] [ntext] NULL,
	[lStates] [nvarchar](50) NULL,
 CONSTRAINT [PK_memberlevel] PRIMARY KEY CLUSTERED 
(
	[lId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[memberchong]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[memberchong](
	[cId] [int] IDENTITY(1,1) NOT NULL,
	[cNum] [nvarchar](50) NULL,
	[cType] [nvarchar](50) NULL,
	[cDate] [datetime] NULL,
	[cChongMoney] [decimal](18, 2) NULL,
	[cMake] [nvarchar](50) NULL,
	[cShopnum] [nvarchar](50) NULL,
	[cRemark] [ntext] NULL,
	[cYue] [decimal](18, 2) NULL,
	[cGive] [decimal](18, 2) NULL,
	[cmNum] [nvarchar](50) NULL,
	[cmName] [nvarchar](50) NULL,
 CONSTRAINT [PK_memberchong] PRIMARY KEY CLUSTERED 
(
	[cId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consumptiondetail]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consumptiondetail](
	[dId] [int] IDENTITY(1,1) NOT NULL,
	[dNum] [nvarchar](50) NULL,
	[dName] [nvarchar](50) NULL,
	[dPrice] [decimal](18, 2) NULL,
	[dCount] [decimal](18, 0) NULL,
	[dMoney] [decimal](18, 2) NULL,
	[dDate] [datetime] NULL,
	[dcId] [nvarchar](50) NULL,
	[dZhe] [nvarchar](50) NULL,
	[dJifen] [decimal](18, 0) NULL,
	[dStates] [nvarchar](50) NULL,
	[dtId] [nvarchar](50) NULL,
 CONSTRAINT [PK_consumptiondetail] PRIMARY KEY CLUSTERED 
(
	[dId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consumption_Back_select]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumption_Back_select](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[C_Id] [nvarchar](100) NULL,
	[Card_Id] [nvarchar](500) NULL,
	[Type] [nvarchar](50) NULL,
	[Addtime] [datetime] NULL,
	[Users] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[Shop] [nvarchar](100) NULL,
	[Money] [nvarchar](50) NULL,
	[PayType] [nvarchar](50) NULL,
	[Consum_Type] [nvarchar](50) NULL,
	[ClientName] [nvarchar](50) NULL,
	[ShopId] [nvarchar](50) NULL,
	[CardType] [nvarchar](50) NULL,
	[BlancePay] [decimal](18, 2) NULL,
	[CashPay] [decimal](18, 2) NULL,
	[BankPay] [decimal](18, 2) NULL,
	[JifenPay] [decimal](18, 2) NULL,
	[ElsePay] [decimal](18, 2) NULL,
	[hjifen] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consumption_Back]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumption_Back](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[C_Id] [nvarchar](100) NULL,
	[Card_Id] [nvarchar](500) NULL,
	[Type] [nvarchar](50) NULL,
	[Addtime] [datetime] NULL,
	[Users] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[Shop] [nvarchar](100) NULL,
	[Money] [nvarchar](50) NULL,
	[PayType] [nvarchar](50) NULL,
	[Consum_Type] [nvarchar](50) NULL,
	[ClientName] [nvarchar](50) NULL,
	[ShopId] [nvarchar](50) NULL,
	[CardType] [nvarchar](50) NULL,
	[BlancePay] [decimal](18, 2) NULL,
	[CashPay] [decimal](18, 2) NULL,
	[BankPay] [decimal](18, 2) NULL,
	[JifenPay] [decimal](18, 2) NULL,
	[ElsePay] [decimal](18, 2) NULL,
	[hjifen] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consumetype]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consumetype](
	[tId] [int] IDENTITY(1,1) NOT NULL,
	[tNum] [nvarchar](50) NULL,
	[tName] [nvarchar](50) NULL,
	[tRemarks] [ntext] NULL,
	[tsNum] [ntext] NULL,
 CONSTRAINT [PK_consumetype] PRIMARY KEY CLUSTERED 
(
	[tId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consumes]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consumes](
	[cId] [int] IDENTITY(1,1) NOT NULL,
	[cNum] [nvarchar](50) NULL,
	[cName] [nvarchar](50) NULL,
	[cPrice] [decimal](18, 2) NULL,
	[cBargain] [decimal](18, 2) NULL,
	[cIfshow] [nvarchar](50) NULL,
	[cIfbargain] [nvarchar](50) NULL,
	[cTnum] [nvarchar](50) NULL,
	[csNum] [nvarchar](50) NULL,
	[cJifen] [nvarchar](50) NULL,
	[cDiscount] [nvarchar](50) NULL,
	[cRemark] [ntext] NULL,
	[cInprice] [decimal](18, 2) NULL,
	[cCount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_consumes] PRIMARY KEY CLUSTERED 
(
	[cId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[conscishu]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conscishu](
	[uId] [int] IDENTITY(1,1) NOT NULL,
	[uNum] [nvarchar](50) NULL,
	[uName] [nvarchar](50) NULL,
	[uPrice] [decimal](18, 2) NULL,
	[uZhe] [nvarchar](50) NULL,
	[uCount] [decimal](18, 0) NULL,
	[uMoney] [decimal](18, 2) NULL,
	[uDate] [datetime] NULL,
	[ucId] [nvarchar](50) NULL,
	[uJifen] [decimal](18, 0) NULL,
	[uMnum] [nvarchar](50) NULL,
	[uPastdate] [nvarchar](50) NULL,
	[uXiao] [decimal](18, 0) NULL,
	[uAllcount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_conscishu] PRIMARY KEY CLUSTERED 
(
	[uId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admininfo]    Script Date: 09/04/2016 21:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admininfo](
	[aId] [int] IDENTITY(1,1) NOT NULL,
	[aNum] [nvarchar](50) NULL,
	[aName] [nvarchar](50) NULL,
	[aSex] [nvarchar](50) NULL,
	[aPhone] [nvarchar](50) NULL,
	[aUsername] [nvarchar](50) NULL,
	[aPwd] [nvarchar](50) NULL,
	[aDnum] [nvarchar](50) NULL,
	[aRnum] [nvarchar](50) NULL,
	[aSnum] [nvarchar](50) NULL,
	[aIfuser] [nvarchar](50) NULL,
	[aDate] [datetime] NULL,
	[aFast] [ntext] NULL,
 CONSTRAINT [PK_admininfo] PRIMARY KEY CLUSTERED 
(
	[aId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
