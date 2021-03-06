/****** Object:  Table [dbo].[Addresses]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[AddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[CityId] [bigint] NULL,
	[PostalCodeId] [bigint] NULL,
	[AdministrativeRegionId] [int] NULL,
	[CountryId] [smallint] NULL,
	[StreetNumber] [smallint] NULL,
	[StreetPreDirection] [nvarchar](4) NULL,
	[StreetName] [nvarchar](200) NULL,
	[StreetNom] [nvarchar](100) NULL,
	[StreetType] [nvarchar](15) NULL,
	[StreetPostDirection] [nvarchar](4) NULL,
	[UnitType] [nvarchar](10) NULL,
	[UnitNumber] [nvarchar](10) NULL,
	[Residence] [bit] NOT NULL,
	[Destination] [bit] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AdministrativeRegions]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdministrativeRegions](
	[AdministrativeRegionId] [int] IDENTITY(1,1) NOT NULL,
	[AdministrativeRegionCode] [nvarchar](4) NULL,
	[AdministrativeRegion] [nvarchar](75) NULL,
	[AdministrativeRegionCode1] [nvarchar](4) NULL,
	[AdministrativeRegion1] [nvarchar](35) NULL,
	[AdministrativeRegionCode2] [nvarchar](4) NULL,
	[AdministrativeRegion2] [nvarchar](35) NULL,
	[AdministrativeRegionCode3] [nvarchar](4) NULL,
	[AdministrativeRegion3] [nvarchar](35) NULL,
	[AdministrativeRegionCode4] [nvarchar](4) NULL,
	[AdministrativeRegion4] [nvarchar](35) NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_AdministrativeRegions] PRIMARY KEY CLUSTERED 
(
	[AdministrativeRegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Airlines]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airlines](
	[AirlineId] [smallint] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[AirlineCode] [nvarchar](10) NULL,
	[IATACode] [nvarchar](4) NULL,
	[ICAOCode] [nvarchar](4) NULL,
	[AirlineInfo] [nvarchar](150) NULL,
 CONSTRAINT [PK_Airlines] PRIMARY KEY CLUSTERED 
(
	[AirlineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Airports]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airports](
	[AirportCode] [nchar](3) NOT NULL,
	[AirportName] [nvarchar](150) NULL,
	[CountryId] [smallint] NULL,
 CONSTRAINT [PK_Airports] PRIMARY KEY CLUSTERED 
(
	[AirportCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cities]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [bigint] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[TimeZone] [nvarchar](50) NULL,
	[UTC] [nvarchar](10) NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CivilStatus]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CivilStatus](
	[CivilStatusId] [tinyint] IDENTITY(1,1) NOT NULL,
	[CivilStatusCode] [nvarchar](2) NOT NULL,
	[CivilStatus] [nvarchar](25) NULL,
	[CivilStatusDescription] [nvarchar](255) NULL,
 CONSTRAINT [PK_CivilStatus] PRIMARY KEY CLUSTERED 
(
	[CivilStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [smallint] NOT NULL,
	[CountryISOn] [smallint] NULL,
	[CountryCodeA2] [nchar](2) NULL,
	[CountryCodeA3] [nchar](3) NULL,
	[CountryCodeA3_9] [nchar](9) NULL,
	[CountryName] [nvarchar](100) NOT NULL,
	[rowguid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollments](
	[EnrollmentId] [bigint] IDENTITY(1,1) NOT NULL,
	[WAppUserId] [bigint] NOT NULL,
	[PLicensesTypeId] [smallint] NULL,
	[Overdue] [tinyint] NOT NULL,
	[BeginDate] [smalldatetime] NULL,
	[EndDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Enrollments] PRIMARY KEY CLUSTERED 
(
	[EnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Enrollments_Offers]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enrollments_Offers](
	[EnrollmentOfferId] [int] IDENTITY(1,1) NOT NULL,
	[EnrollmentId] [bigint] NULL,
	[OfferId] [int] NULL,
	[OfferValue] [decimal](18, 0) NOT NULL,
	[OfferUnit] [varchar](20) NOT NULL,
	[StartDate] [date] NULL,
	[ExpiryDate] [date] NULL,
	[Description] [nvarchar](255) NULL,
	[Exclusive] [bit] NOT NULL,
 CONSTRAINT [PK_Enrollments_Offers] PRIMARY KEY CLUSTERED 
(
	[EnrollmentOfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Flights]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights](
	[FlightId] [int] IDENTITY(1,1) NOT NULL,
	[AirportCodeDeparture] [nchar](3) NOT NULL,
	[AirportCodeArrival] [nchar](3) NOT NULL,
	[DepartureTime] [datetime] NOT NULL,
	[ArrivalTime] [datetime] NOT NULL,
	[DepartureDelay] [smallint] NULL,
	[ArrivalDelay] [smallint] NULL,
	[TravelClassId] [int] NULL,
	[FlightNo] [nvarchar](4) NULL,
	[FlighCode] [nvarchar](8) NULL,
	[SeatNo] [nvarchar](3) NULL,
	[AirlineId] [smallint] NOT NULL,
	[FlightInformation] [nvarchar](50) NULL,
 CONSTRAINT [PK_Flights] PRIMARY KEY CLUSTERED 
(
	[FlightId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gender]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderId] [tinyint] IDENTITY(1,1) NOT NULL,
	[GenderCode] [nvarchar](1) NOT NULL,
	[Gender] [nvarchar](25) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[GenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupId] [int] IDENTITY(4,1) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
	[IsAppAdmin] [bit] NOT NULL,
	[BeginDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offers]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Offers](
	[OfferId] [int] IDENTITY(1,1) NOT NULL,
	[OfferValue] [decimal](18, 0) NOT NULL,
	[OfferUnit] [varchar](20) NOT NULL,
	[StartDate] [date] NOT NULL,
	[ExpiryDate] [date] NULL,
	[Description] [nvarchar](255) NULL,
	[Exclusive] [bit] NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Passports]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passports](
	[PassportId] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonId] [bigint] NOT NULL,
	[PassportNo] [nvarchar](50) NOT NULL,
	[PassportIssuedDate] [datetime] NULL,
	[PassportExpiryDate] [datetime] NULL,
	[PassportIssueAuthority] [nvarchar](50) NULL,
	[CountryId] [smallint] NOT NULL,
 CONSTRAINT [PK_Passports] PRIMARY KEY CLUSTERED 
(
	[PassportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonId] [bigint] IDENTITY(1,1) NOT NULL,
	[ReferencedPersonId] [bigint] NULL,
	[Salutation] [nvarchar](6) NULL,
	[Title] [nvarchar](15) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Suffix] [nvarchar](10) NULL,
	[DateofBirth] [date] NULL,
	[CivilStatusId] [tinyint] NULL,
	[GenderId] [tinyint] NULL,
	[Citizenship] [nvarchar](50) NULL,
	[WAppUserId] [bigint] NULL,
	[WAppUser] [bit] NULL,
	[PrintForm] [bit] NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons_Addresses]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons_Addresses](
	[PersonAddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonId] [bigint] NULL,
	[AddressId] [bigint] NULL,
	[Residence] [bit] NOT NULL,
	[Destination] [bit] NOT NULL,
 CONSTRAINT [PK_Persons_Addresses] PRIMARY KEY CLUSTERED 
(
	[PersonAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons_Flights]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons_Flights](
	[PersonsToFlightsId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [bigint] NOT NULL,
	[FlightId] [int] NOT NULL,
	[SeatNo] [nvarchar](3) NULL,
	[Checked] [bit] NULL,
 CONSTRAINT [PK_Persons_Flights] PRIMARY KEY CLUSTERED 
(
	[PersonsToFlightsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLicensesTypes]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLicensesTypes](
	[PLicensesTypeId] [smallint] IDENTITY(1,1) NOT NULL,
	[PLicensesType] [varchar](15) NULL,
	[Frequency] [varchar](20) NULL,
	[TrialPeriod] [tinyint] NULL,
	[TrialPeriodMU] [char](1) NULL,
	[Price] [smallmoney] NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [smalldatetime] NULL,
 CONSTRAINT [PK_PLicensesTypes] PRIMARY KEY CLUSTERED 
(
	[PLicensesTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PostalCodes]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostalCodes](
	[PostalCodeId] [bigint] IDENTITY(1,1) NOT NULL,
	[CityId] [int] NULL,
	[PostalCode] [nvarchar](10) NOT NULL,
	[PostalBarCode] [nvarchar](50) NULL,
	[PCUC]  AS (upper([PostalCode])),
 CONSTRAINT [PK_PostalCodes] PRIMARY KEY CLUSTERED 
(
	[PostalCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TablesToDelete]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TablesToDelete](
	[TableToDeleteId] [smallint] IDENTITY(1,1) NOT NULL,
	[TableToDelete] [nvarchar](128) NULL,
	[SQLSt] [varchar](max) NULL,
	[NoSignUp] [bit] NOT NULL,
	[NotKeepData] [bit] NOT NULL,
 CONSTRAINT [PK_TablesToDelete] PRIMARY KEY CLUSTERED 
(
	[TableToDeleteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TravelClasses]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelClasses](
	[TravelClassId] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NULL,
	[TravelClassCode] [nchar](1) NOT NULL,
	[TravelClassDescription] [nvarchar](50) NULL,
 CONSTRAINT [PK_TravelClasses] PRIMARY KEY CLUSTERED 
(
	[TravelClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDataDelete]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDataDelete](
	[UserDataDeleteId] [bigint] IDENTITY(1,1) NOT NULL,
	[WAppUserId] [bigint] NULL,
	[TableDeleted] [nvarchar](128) NULL,
	[OpTime]  AS (getdate()),
	[NoSignUp] [bit] NULL,
 CONSTRAINT [PK_UserDataDelete] PRIMARY KEY CLUSTERED 
(
	[UserDataDeleteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserPwd] [nvarchar](50) NOT NULL,
	[PwdExpiryDate] [datetime] NULL,
	[PwdChangeAtLogin] [bit] NULL,
	[IsAppAdmin] [bit] NOT NULL,
	[BeginDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users_Groups]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_Groups](
	[GroupId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[BeginDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Users_x_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WAppUsers]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WAppUsers](
	[WAppUserId] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonId] [bigint] NULL,
	[AddressId] [int] NULL,
	[WAppUserName] [nvarchar](50) NULL,
	[WAppUserPwd] [nvarchar](50) NOT NULL,
	[WAppUserPwdE] [varbinary](256) NULL,
	[WAppUserEmail] [nvarchar](150) NULL,
	[WAppUserAltEmail] [nvarchar](150) NULL,
	[PwdExpiryDate] [datetime] NULL,
	[PwdChangeAtLogin] [bit] NULL,
	[BeginDate] [smalldatetime] NULL,
	[EndDate] [smalldatetime] NULL,
	[NoSignUp] [bit] NOT NULL,
	[NotKeepData] [bit] NULL,
 CONSTRAINT [PK_WAppUsers] PRIMARY KEY CLUSTERED 
(
	[WAppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WArrivingBy]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WArrivingBy](
	[WArrivingById] [smallint] IDENTITY(1,1) NOT NULL,
	[WArrivingBy] [nvarchar](20) NULL,
 CONSTRAINT [PK_WArrivingBy] PRIMARY KEY CLUSTERED 
(
	[WArrivingById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WArrivingFrom]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WArrivingFrom](
	[WArrivingFromId] [smallint] IDENTITY(1,1) NOT NULL,
	[WArrivingFrom] [nvarchar](30) NULL,
 CONSTRAINT [PK_WArrivingFrom] PRIMARY KEY CLUSTERED 
(
	[WArrivingFromId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCountryTripInfoDetails]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCountryTripInfoDetails](
	[WCountryTripInfoDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [smallint] NULL,
	[InfoShowOrder] [smallint] NULL,
	[InfoDetail] [nvarchar](255) NULL,
	[Comments] [nvarchar](255) NULL,
	[BeginDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NULL,
 CONSTRAINT [PK_WCountryTripInfoDetails] PRIMARY KEY CLUSTERED 
(
	[WCountryTripInfoDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WPersonsTripInfoDetails]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WPersonsTripInfoDetails](
	[WPersonsTripInfoDetailsId] [bigint] NOT NULL,
	[PersonId] [bigint] NULL,
	[CountryId] [int] NULL,
	[WTripInfoId] [bigint] NULL,
	[WCountryTripInfoDetailsId] [int] NULL,
	[InfoDetailValue] [nvarchar](255) NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [PK_WPersonsTripInfoDetails] PRIMARY KEY CLUSTERED 
(
	[WPersonsTripInfoDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WTripInfo]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WTripInfo](
	[WTripInfoId] [bigint] IDENTITY(1,1) NOT NULL,
	[WAppUserId] [bigint] NULL,
	[WArrivingById] [smallint] NULL,
	[WTripPurposeId] [smallint] NULL,
 CONSTRAINT [PK_WTripInfo] PRIMARY KEY CLUSTERED 
(
	[WTripInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WTripInfoCAN]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WTripInfoCAN](
	[WTripInfoCANId] [bigint] IDENTITY(1,1) NOT NULL,
	[WAppUserId] [bigint] NULL,
	[WArrivingBy] [tinyint] NULL,
	[WTripPurpose] [tinyint] NULL,
	[WArrivingFrom] [tinyint] NULL,
	[TransportationId] [nvarchar](100) NULL,
	[Firearms] [char](1) NULL,
	[CommercialGoods] [char](1) NULL,
	[MeatProducts] [char](1) NULL,
	[CurrencyValue] [char](1) NULL,
	[Goods] [char](1) NULL,
	[FarmVisit] [char](1) NULL,
	[ExceedDutyFree] [char](1) NULL,
	[ExceedExemptions] [char](1) NULL,
	[DurationOfStay] [smallint] NULL,
	[TripDate] [smalldatetime] NULL,
 CONSTRAINT [PK_WTripInfoCAN] PRIMARY KEY CLUSTERED 
(
	[WTripInfoCANId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WTripInfoCANDetailsP]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WTripInfoCANDetailsP](
	[WTripInfoCANDetailsP] [bigint] IDENTITY(1,1) NOT NULL,
	[WTripInfoCANId] [bigint] NULL,
	[PersonId] [bigint] NULL,
	[ValueGoods] [money] NULL,
	[DateLeftCanada] [date] NULL,
 CONSTRAINT [PK_WTripInfoCANDetailsP] PRIMARY KEY CLUSTERED 
(
	[WTripInfoCANDetailsP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WTripInfoDetails]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WTripInfoDetails](
	[WTripInfoDetailsId] [bigint] IDENTITY(1,1) NOT NULL,
	[WTripInfoId] [bigint] NULL,
	[WCountryTripInfoDetailsId] [int] NULL,
	[InfoDetailValue] [nvarchar](255) NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [PK_WTripInfoDetails] PRIMARY KEY CLUSTERED 
(
	[WTripInfoDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WTripInfoUSA]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WTripInfoUSA](
	[WTripInfoUSAId] [bigint] IDENTITY(1,1) NOT NULL,
	[WAppUserId] [bigint] NULL,
	[NoFamMembers] [tinyint] NULL,
	[CountryResidence] [smallint] NULL,
	[ContriesVisited] [nvarchar](300) NULL,
	[CountriesVisited2] [nvarchar](300) NULL,
	[TransportationId] [nvarchar](100) NULL,
	[TripPPurposeBusiness] [bit] NULL,
	[BringFruits] [bit] NULL,
	[BringMeats] [bit] NULL,
	[BringDiseaseAgents] [bit] NULL,
	[BringSoil] [bit] NULL,
	[Livestock] [bit] NULL,
	[CurrencyValue] [bit] NULL,
	[CommercialMerchandise] [bit] NULL,
	[RGoodsValue] [money] NULL,
	[VGoodsValue] [money] NULL,
	[TripDate] [date] NULL,
 CONSTRAINT [PK_WTripInfoUSA] PRIMARY KEY CLUSTERED 
(
	[WTripInfoUSAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WTripInfoUSADetailsP]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WTripInfoUSADetailsP](
	[WTripInfoUSADetailsPId] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonId] [bigint] NULL,
	[WTripInfoUSAId] [bigint] NULL,
	[WTripInfoDetail] [nvarchar](150) NULL,
	[WTripInfoDetailValue] [money] NULL,
	[Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_WTripInfoUSADetailsP] PRIMARY KEY CLUSTERED 
(
	[WTripInfoUSADetailsPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WTripPurpose]    Script Date: 7/2/2015 1:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WTripPurpose](
	[WTripPurposeId] [smallint] IDENTITY(1,1) NOT NULL,
	[TripPurpose] [nvarchar](15) NOT NULL,
	[CountryId] [int] NULL,
	[BeginDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NULL,
 CONSTRAINT [PK_WTripPurpose] PRIMARY KEY CLUSTERED 
(
	[WTripPurposeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Addresses] ADD  CONSTRAINT [DF_Addresses_Residence]  DEFAULT ((0)) FOR [Residence]
GO
ALTER TABLE [dbo].[Addresses] ADD  CONSTRAINT [DF_Addresses_Destination]  DEFAULT ((0)) FOR [Destination]
GO
ALTER TABLE [dbo].[AdministrativeRegions] ADD  CONSTRAINT [DF__Administr__Count__403A8C7D]  DEFAULT ('') FOR [CountryId]
GO
ALTER TABLE [dbo].[Enrollments] ADD  CONSTRAINT [DF_Enrollments_Overdue]  DEFAULT ((0)) FOR [Overdue]
GO
ALTER TABLE [dbo].[Enrollments] ADD  CONSTRAINT [DF_Enrollments_BeginDate]  DEFAULT (getdate()) FOR [BeginDate]
GO
ALTER TABLE [dbo].[Enrollments_Offers] ADD  CONSTRAINT [DF_Enrollments_Offers_OfferValue]  DEFAULT ((0)) FOR [OfferValue]
GO
ALTER TABLE [dbo].[Enrollments_Offers] ADD  CONSTRAINT [DF_Enrollments_Offers_OfferUnit]  DEFAULT ('') FOR [OfferUnit]
GO
ALTER TABLE [dbo].[Enrollments_Offers] ADD  CONSTRAINT [DF_Enrollments_Offers_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[Enrollments_Offers] ADD  CONSTRAINT [DF_Enrollments_Offers_Exclusive]  DEFAULT ((1)) FOR [Exclusive]
GO
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF__Groups__IsAppAdm__07F6335A]  DEFAULT ((0)) FOR [IsAppAdmin]
GO
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF__Groups__BeginDat__08EA5793]  DEFAULT (getdate()) FOR [BeginDate]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF_Offers_OfferValue]  DEFAULT ((0)) FOR [OfferValue]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF_Offers_OfferUnit]  DEFAULT ('') FOR [OfferUnit]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF_Offers_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF_Offers_Exclusive]  DEFAULT ((1)) FOR [Exclusive]
GO
ALTER TABLE [dbo].[Persons] ADD  CONSTRAINT [DF_Persons_WAppUser]  DEFAULT ((0)) FOR [WAppUser]
GO
ALTER TABLE [dbo].[Persons] ADD  CONSTRAINT [DF_Persons_Print]  DEFAULT ((0)) FOR [PrintForm]
GO
ALTER TABLE [dbo].[Persons_Addresses] ADD  CONSTRAINT [DF_Persons_Addresses_Residence]  DEFAULT ((0)) FOR [Residence]
GO
ALTER TABLE [dbo].[Persons_Addresses] ADD  CONSTRAINT [DF_Persons_Addresses_Destination]  DEFAULT ((0)) FOR [Destination]
GO
ALTER TABLE [dbo].[Persons_Flights] ADD  CONSTRAINT [DF__Persons_F__Check__0CBAE877]  DEFAULT ((1)) FOR [Checked]
GO
ALTER TABLE [dbo].[PostalCodes] ADD  CONSTRAINT [DF_PostalCodes_CityId]  DEFAULT ((0)) FOR [CityId]
GO
ALTER TABLE [dbo].[TablesToDelete] ADD  CONSTRAINT [DF_TablesToDelete_NoSignUp]  DEFAULT ((0)) FOR [NoSignUp]
GO
ALTER TABLE [dbo].[TablesToDelete] ADD  CONSTRAINT [DF_TablesToDelete_NotKeepData]  DEFAULT ((0)) FOR [NotKeepData]
GO
ALTER TABLE [dbo].[UserDataDelete] ADD  CONSTRAINT [DF_UserDataDelete_NoSignUp]  DEFAULT ((0)) FOR [NoSignUp]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsAppAdmi__108B795B]  DEFAULT ((0)) FOR [IsAppAdmin]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__BeginDate__117F9D94]  DEFAULT (getdate()) FOR [BeginDate]
GO
ALTER TABLE [dbo].[Users_Groups] ADD  CONSTRAINT [DF__Users_Gro__Begin__1367E606]  DEFAULT (getdate()) FOR [BeginDate]
GO
ALTER TABLE [dbo].[WAppUsers] ADD  CONSTRAINT [DF_WAppUsers_PersonId]  DEFAULT ((-1)) FOR [PersonId]
GO
ALTER TABLE [dbo].[WAppUsers] ADD  CONSTRAINT [DF_WAppUsers_NoSignUp]  DEFAULT ((0)) FOR [NoSignUp]
GO
ALTER TABLE [dbo].[WAppUsers] ADD  CONSTRAINT [DF_WAppUsers_NotKeepData]  DEFAULT ((0)) FOR [NotKeepData]
GO
ALTER TABLE [dbo].[WCountryTripInfoDetails] ADD  CONSTRAINT [DF_WCountryTripInfoDetails_BeginDate]  DEFAULT (getdate()) FOR [BeginDate]
GO
ALTER TABLE [dbo].[WTripPurpose] ADD  CONSTRAINT [DF_WTripPurpose_BeginDate]  DEFAULT (getdate()) FOR [BeginDate]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_AdministrativeRegions] FOREIGN KEY([AdministrativeRegionId])
REFERENCES [dbo].[AdministrativeRegions] ([AdministrativeRegionId])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_AdministrativeRegions]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([CityId])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Cities]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Countries]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_PostalCodes] FOREIGN KEY([PostalCodeId])
REFERENCES [dbo].[PostalCodes] ([PostalCodeId])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_PostalCodes]
GO
ALTER TABLE [dbo].[Airports]  WITH CHECK ADD  CONSTRAINT [FK_Airports_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Airports] CHECK CONSTRAINT [FK_Airports_Countries]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_PLicensesTypes] FOREIGN KEY([PLicensesTypeId])
REFERENCES [dbo].[PLicensesTypes] ([PLicensesTypeId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_PLicensesTypes]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_WAppUsers] FOREIGN KEY([WAppUserId])
REFERENCES [dbo].[WAppUsers] ([WAppUserId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_WAppUsers]
GO
ALTER TABLE [dbo].[Enrollments_Offers]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_Offers_Enrollments] FOREIGN KEY([EnrollmentId])
REFERENCES [dbo].[Enrollments] ([EnrollmentId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Enrollments_Offers] CHECK CONSTRAINT [FK_Enrollments_Offers_Enrollments]
GO
ALTER TABLE [dbo].[Enrollments_Offers]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_Offers_Offers] FOREIGN KEY([OfferId])
REFERENCES [dbo].[Offers] ([OfferId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Enrollments_Offers] CHECK CONSTRAINT [FK_Enrollments_Offers_Offers]
GO
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [FK_Flights_Airlines] FOREIGN KEY([AirlineId])
REFERENCES [dbo].[Airlines] ([AirlineId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [FK_Flights_Airlines]
GO
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [FK_Flights_Airports_1] FOREIGN KEY([AirportCodeDeparture])
REFERENCES [dbo].[Airports] ([AirportCode])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [FK_Flights_Airports_1]
GO
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [FK_Flights_Airports_2] FOREIGN KEY([AirportCodeArrival])
REFERENCES [dbo].[Airports] ([AirportCode])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [FK_Flights_Airports_2]
GO
ALTER TABLE [dbo].[Passports]  WITH CHECK ADD  CONSTRAINT [FK_Passports_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Passports] CHECK CONSTRAINT [FK_Passports_Countries]
GO
ALTER TABLE [dbo].[Passports]  WITH CHECK ADD  CONSTRAINT [FK_Passports_Persons] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([PersonId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Passports] CHECK CONSTRAINT [FK_Passports_Persons]
GO
ALTER TABLE [dbo].[Persons]  WITH CHECK ADD  CONSTRAINT [FK_Persons_CivilStatus] FOREIGN KEY([CivilStatusId])
REFERENCES [dbo].[CivilStatus] ([CivilStatusId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Persons] CHECK CONSTRAINT [FK_Persons_CivilStatus]
GO
ALTER TABLE [dbo].[Persons]  WITH CHECK ADD  CONSTRAINT [FK_Persons_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([GenderId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Persons] CHECK CONSTRAINT [FK_Persons_Gender]
GO
ALTER TABLE [dbo].[Persons]  WITH NOCHECK ADD  CONSTRAINT [FK_Persons_Persons] FOREIGN KEY([ReferencedPersonId])
REFERENCES [dbo].[Persons] ([PersonId])
GO
ALTER TABLE [dbo].[Persons] CHECK CONSTRAINT [FK_Persons_Persons]
GO
ALTER TABLE [dbo].[Persons]  WITH CHECK ADD  CONSTRAINT [FK_Persons_WAppUsers] FOREIGN KEY([WAppUserId])
REFERENCES [dbo].[WAppUsers] ([WAppUserId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Persons] CHECK CONSTRAINT [FK_Persons_WAppUsers]
GO
ALTER TABLE [dbo].[Persons_Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Persons_Addresses_Addresses] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Addresses] ([AddressId])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Persons_Addresses] CHECK CONSTRAINT [FK_Persons_Addresses_Addresses]
GO
ALTER TABLE [dbo].[Persons_Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Persons_Addresses_Persons] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([PersonId])
GO
ALTER TABLE [dbo].[Persons_Addresses] CHECK CONSTRAINT [FK_Persons_Addresses_Persons]
GO
ALTER TABLE [dbo].[Persons_Flights]  WITH CHECK ADD  CONSTRAINT [FK_Persons_Flights_Flights] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Flights] ([FlightId])
GO
ALTER TABLE [dbo].[Persons_Flights] CHECK CONSTRAINT [FK_Persons_Flights_Flights]
GO
ALTER TABLE [dbo].[Persons_Flights]  WITH CHECK ADD  CONSTRAINT [FK_Persons_Flights_Persons] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([PersonId])
GO
ALTER TABLE [dbo].[Persons_Flights] CHECK CONSTRAINT [FK_Persons_Flights_Persons]
GO
ALTER TABLE [dbo].[Users_Groups]  WITH CHECK ADD  CONSTRAINT [FK_Users_Groups_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Users_Groups] CHECK CONSTRAINT [FK_Users_Groups_Groups]
GO
ALTER TABLE [dbo].[Users_Groups]  WITH CHECK ADD  CONSTRAINT [FK_Users_Groups_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Users_Groups] CHECK CONSTRAINT [FK_Users_Groups_Users]
GO
ALTER TABLE [dbo].[WTripInfoCAN]  WITH CHECK ADD  CONSTRAINT [FK_WTripInfoCAN_WAppUsers] FOREIGN KEY([WAppUserId])
REFERENCES [dbo].[WAppUsers] ([WAppUserId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WTripInfoCAN] CHECK CONSTRAINT [FK_WTripInfoCAN_WAppUsers]
GO
ALTER TABLE [dbo].[WTripInfoCANDetailsP]  WITH CHECK ADD  CONSTRAINT [FK_WTripInfoCANDetailsP_Persons] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([PersonId])
GO
ALTER TABLE [dbo].[WTripInfoCANDetailsP] CHECK CONSTRAINT [FK_WTripInfoCANDetailsP_Persons]
GO
ALTER TABLE [dbo].[WTripInfoCANDetailsP]  WITH CHECK ADD  CONSTRAINT [FK_WTripInfoCANDetailsP_WTripInfoCAN] FOREIGN KEY([WTripInfoCANId])
REFERENCES [dbo].[WTripInfoCAN] ([WTripInfoCANId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WTripInfoCANDetailsP] CHECK CONSTRAINT [FK_WTripInfoCANDetailsP_WTripInfoCAN]
GO
ALTER TABLE [dbo].[WTripInfoUSA]  WITH CHECK ADD  CONSTRAINT [FK_WTripInfoUSA_Countries] FOREIGN KEY([CountryResidence])
REFERENCES [dbo].[Countries] ([CountryId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WTripInfoUSA] CHECK CONSTRAINT [FK_WTripInfoUSA_Countries]
GO
ALTER TABLE [dbo].[WTripInfoUSA]  WITH CHECK ADD  CONSTRAINT [FK_WTripInfoUSA_WAppUsers] FOREIGN KEY([WAppUserId])
REFERENCES [dbo].[WAppUsers] ([WAppUserId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WTripInfoUSA] CHECK CONSTRAINT [FK_WTripInfoUSA_WAppUsers]
GO
ALTER TABLE [dbo].[WTripInfoUSADetailsP]  WITH CHECK ADD  CONSTRAINT [FK_WTripInfoUSADetailsP_Persons] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([PersonId])
GO
ALTER TABLE [dbo].[WTripInfoUSADetailsP] CHECK CONSTRAINT [FK_WTripInfoUSADetailsP_Persons]
GO
ALTER TABLE [dbo].[WTripInfoUSADetailsP]  WITH CHECK ADD  CONSTRAINT [FK_WTripInfoUSADetailsP_WTripInfoUSA] FOREIGN KEY([WTripInfoUSAId])
REFERENCES [dbo].[WTripInfoUSA] ([WTripInfoUSAId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WTripInfoUSADetailsP] CHECK CONSTRAINT [FK_WTripInfoUSADetailsP_WTripInfoUSA]
GO
