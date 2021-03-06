USE [CDPW]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'CurrencyValue'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'Livestock'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'BringSoil'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'BringDiseaseAgents'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'BringMeats'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'BringFruits'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'TripPPurposeBusiness'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'TransportationId'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'DurationOfStay'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'FarmVisit'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'Goods'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'CurrencyValue'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'MeatProducts'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'CommercialGoods'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'Firearms'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'WArrivingFrom'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'WTripPurpose'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'WArrivingBy'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLicensesTypes', @level2type=N'COLUMN',@level2name=N'TrialPeriodMU'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enrollments_Offers', @level2type=N'COLUMN',@level2name=N'OfferUnit'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enrollments', @level2type=N'COLUMN',@level2name=N'Overdue'

GO
ALTER TABLE [dbo].[WTripInfoUSADetailsP] DROP CONSTRAINT [FK_WTripInfoUSADetailsP_WTripInfoUSA]
GO
ALTER TABLE [dbo].[WTripInfoUSADetailsP] DROP CONSTRAINT [FK_WTripInfoUSADetailsP_Persons]
GO
ALTER TABLE [dbo].[WTripInfoUSA] DROP CONSTRAINT [FK_WTripInfoUSA_WAppUsers]
GO
ALTER TABLE [dbo].[WTripInfoUSA] DROP CONSTRAINT [FK_WTripInfoUSA_Countries]
GO
ALTER TABLE [dbo].[WTripInfoCANDetailsP] DROP CONSTRAINT [FK_WTripInfoCANDetailsP_WTripInfoCAN]
GO
ALTER TABLE [dbo].[WTripInfoCANDetailsP] DROP CONSTRAINT [FK_WTripInfoCANDetailsP_Persons]
GO
ALTER TABLE [dbo].[WTripInfoCAN] DROP CONSTRAINT [FK_WTripInfoCAN_WAppUsers]
GO
ALTER TABLE [dbo].[Users_Groups] DROP CONSTRAINT [FK_Users_Groups_Users]
GO
ALTER TABLE [dbo].[Users_Groups] DROP CONSTRAINT [FK_Users_Groups_Groups]
GO
ALTER TABLE [dbo].[Persons_Flights] DROP CONSTRAINT [FK_Persons_Flights_Persons]
GO
ALTER TABLE [dbo].[Persons_Flights] DROP CONSTRAINT [FK_Persons_Flights_Flights]
GO
ALTER TABLE [dbo].[Persons_Addresses] DROP CONSTRAINT [FK_Persons_Addresses_Persons]
GO
ALTER TABLE [dbo].[Persons_Addresses] DROP CONSTRAINT [FK_Persons_Addresses_Addresses]
GO
ALTER TABLE [dbo].[Persons] DROP CONSTRAINT [FK_Persons_WAppUsers]
GO
ALTER TABLE [dbo].[Persons] DROP CONSTRAINT [FK_Persons_Persons]
GO
ALTER TABLE [dbo].[Persons] DROP CONSTRAINT [FK_Persons_Gender]
GO
ALTER TABLE [dbo].[Persons] DROP CONSTRAINT [FK_Persons_CivilStatus]
GO
ALTER TABLE [dbo].[Passports] DROP CONSTRAINT [FK_Passports_Persons]
GO
ALTER TABLE [dbo].[Passports] DROP CONSTRAINT [FK_Passports_Countries]
GO
ALTER TABLE [dbo].[Flights] DROP CONSTRAINT [FK_Flights_Airports_2]
GO
ALTER TABLE [dbo].[Flights] DROP CONSTRAINT [FK_Flights_Airports_1]
GO
ALTER TABLE [dbo].[Flights] DROP CONSTRAINT [FK_Flights_Airlines]
GO
ALTER TABLE [dbo].[Enrollments_Offers] DROP CONSTRAINT [FK_Enrollments_Offers_Offers]
GO
ALTER TABLE [dbo].[Enrollments_Offers] DROP CONSTRAINT [FK_Enrollments_Offers_Enrollments]
GO
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT [FK_Enrollments_WAppUsers]
GO
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT [FK_Enrollments_PLicensesTypes]
GO
ALTER TABLE [dbo].[Airports] DROP CONSTRAINT [FK_Airports_Countries]
GO
ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_Addresses_PostalCodes]
GO
ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_Addresses_Countries]
GO
ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_Addresses_Cities]
GO
ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_Addresses_AdministrativeRegions]
GO
ALTER TABLE [dbo].[WTripPurpose] DROP CONSTRAINT [DF_WTripPurpose_BeginDate]
GO
ALTER TABLE [dbo].[WCountryTripInfoDetails] DROP CONSTRAINT [DF_WCountryTripInfoDetails_BeginDate]
GO
ALTER TABLE [dbo].[WAppUsers] DROP CONSTRAINT [DF_WAppUsers_NotKeepData]
GO
ALTER TABLE [dbo].[WAppUsers] DROP CONSTRAINT [DF_WAppUsers_NoSignUp]
GO
ALTER TABLE [dbo].[WAppUsers] DROP CONSTRAINT [DF_WAppUsers_PersonId]
GO
ALTER TABLE [dbo].[Users_Groups] DROP CONSTRAINT [DF__Users_Gro__Begin__1367E606]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__BeginDate__117F9D94]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__IsAppAdmi__108B795B]
GO
ALTER TABLE [dbo].[UserDataDelete] DROP CONSTRAINT [DF_UserDataDelete_NoSignUp]
GO
ALTER TABLE [dbo].[TablesToDelete] DROP CONSTRAINT [DF_TablesToDelete_NotKeepData]
GO
ALTER TABLE [dbo].[TablesToDelete] DROP CONSTRAINT [DF_TablesToDelete_NoSignUp]
GO
ALTER TABLE [dbo].[PostalCodes] DROP CONSTRAINT [DF_PostalCodes_CityId]
GO
ALTER TABLE [dbo].[Persons_Flights] DROP CONSTRAINT [DF__Persons_F__Check__0CBAE877]
GO
ALTER TABLE [dbo].[Persons_Addresses] DROP CONSTRAINT [DF_Persons_Addresses_Destination]
GO
ALTER TABLE [dbo].[Persons_Addresses] DROP CONSTRAINT [DF_Persons_Addresses_Residence]
GO
ALTER TABLE [dbo].[Persons] DROP CONSTRAINT [DF_Persons_Print]
GO
ALTER TABLE [dbo].[Persons] DROP CONSTRAINT [DF_Persons_WAppUser]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF_Offers_Exclusive]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF_Offers_StartDate]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF_Offers_OfferUnit]
GO
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [DF_Offers_OfferValue]
GO
ALTER TABLE [dbo].[Groups] DROP CONSTRAINT [DF__Groups__BeginDat__08EA5793]
GO
ALTER TABLE [dbo].[Groups] DROP CONSTRAINT [DF__Groups__IsAppAdm__07F6335A]
GO
ALTER TABLE [dbo].[Enrollments_Offers] DROP CONSTRAINT [DF_Enrollments_Offers_Exclusive]
GO
ALTER TABLE [dbo].[Enrollments_Offers] DROP CONSTRAINT [DF_Enrollments_Offers_StartDate]
GO
ALTER TABLE [dbo].[Enrollments_Offers] DROP CONSTRAINT [DF_Enrollments_Offers_OfferUnit]
GO
ALTER TABLE [dbo].[Enrollments_Offers] DROP CONSTRAINT [DF_Enrollments_Offers_OfferValue]
GO
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT [DF_Enrollments_BeginDate]
GO
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT [DF_Enrollments_Overdue]
GO
ALTER TABLE [dbo].[AdministrativeRegions] DROP CONSTRAINT [DF__Administr__Count__403A8C7D]
GO
ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [DF_Addresses_Destination]
GO
ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [DF_Addresses_Residence]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_US_FlightInfo_4]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_US_FlightInfo_4]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_US_FlightInfo_3]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_US_FlightInfo_3]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_US_FlightInfo]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_US_FlightInfo]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_Persons]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_CAN_Persons]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_Goods1_3]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_CAN_Goods1_3]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_FlightInfo_4]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_CAN_FlightInfo_4]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_FlightInfo_3]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_CAN_FlightInfo_3]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_FlightInfo]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_CAN_FlightInfo]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_Goods2_3]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_CAN_Goods2_3]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_Goods2]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_CAN_Goods2]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_Goods1]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_CAN_Goods1]
GO
/****** Object:  Table [dbo].[WTripPurpose]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WTripPurpose]
GO
/****** Object:  Table [dbo].[WTripInfoUSADetailsP]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WTripInfoUSADetailsP]
GO
/****** Object:  Table [dbo].[WTripInfoUSA]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WTripInfoUSA]
GO
/****** Object:  Table [dbo].[WTripInfoDetails]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WTripInfoDetails]
GO
/****** Object:  Table [dbo].[WTripInfoCANDetailsP]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WTripInfoCANDetailsP]
GO
/****** Object:  Table [dbo].[WTripInfoCAN]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WTripInfoCAN]
GO
/****** Object:  Table [dbo].[WTripInfo]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WTripInfo]
GO
/****** Object:  Table [dbo].[WPersonsTripInfoDetails]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WPersonsTripInfoDetails]
GO
/****** Object:  Table [dbo].[WCountryTripInfoDetails]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WCountryTripInfoDetails]
GO
/****** Object:  Table [dbo].[WArrivingFrom]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WArrivingFrom]
GO
/****** Object:  Table [dbo].[WArrivingBy]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WArrivingBy]
GO
/****** Object:  Table [dbo].[WAppUsers]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[WAppUsers]
GO
/****** Object:  Table [dbo].[Users_Groups]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Users_Groups]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserDataDelete]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[UserDataDelete]
GO
/****** Object:  Table [dbo].[TravelClasses]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[TravelClasses]
GO
/****** Object:  Table [dbo].[TablesToDelete]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[TablesToDelete]
GO
/****** Object:  Table [dbo].[PostalCodes]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[PostalCodes]
GO
/****** Object:  Table [dbo].[PLicensesTypes]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[PLicensesTypes]
GO
/****** Object:  Table [dbo].[Persons_Flights]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Persons_Flights]
GO
/****** Object:  Table [dbo].[Persons_Addresses]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Persons_Addresses]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Persons]
GO
/****** Object:  Table [dbo].[Passports]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Passports]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Offers]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Groups]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Gender]
GO
/****** Object:  Table [dbo].[Flights]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Flights]
GO
/****** Object:  Table [dbo].[Enrollments_Offers]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Enrollments_Offers]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Enrollments]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Countries]
GO
/****** Object:  Table [dbo].[CivilStatus]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[CivilStatus]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Cities]
GO
/****** Object:  Table [dbo].[Airports]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Airports]
GO
/****** Object:  Table [dbo].[Airlines]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Airlines]
GO
/****** Object:  Table [dbo].[AdministrativeRegions]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[AdministrativeRegions]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP TABLE [dbo].[Addresses]
GO
/****** Object:  UserDefinedFunction [dbo].[WTripInfoCAN_DurationOfStay]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[WTripInfoCAN_DurationOfStay]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_US_FlightInfo2]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP FUNCTION [dbo].[Get_US_FlightInfo2]
GO
/****** Object:  StoredProcedure [dbo].[WAppsUser_Login]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[WAppsUser_Login]
GO
/****** Object:  StoredProcedure [dbo].[WAppsUser_Add]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[WAppsUser_Add]
GO
/****** Object:  StoredProcedure [dbo].[WAppsNoUser_Add]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[WAppsNoUser_Add]
GO
/****** Object:  StoredProcedure [dbo].[UserData_Delete]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[UserData_Delete]
GO
/****** Object:  StoredProcedure [dbo].[USAForm_Get]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[USAForm_Get]
GO
/****** Object:  StoredProcedure [dbo].[USAForm_Add_Person]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[USAForm_Add_Person]
GO
/****** Object:  StoredProcedure [dbo].[USAForm_Add]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[USAForm_Add]
GO
/****** Object:  StoredProcedure [dbo].[MSettings_Update]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[MSettings_Update]
GO
/****** Object:  StoredProcedure [dbo].[MSettings_Get]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[MSettings_Get]
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_Register]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[Enrollment_Register]
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_Cancel]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[Enrollment_Cancel]
GO
/****** Object:  StoredProcedure [dbo].[Country_Province_List]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[Country_Province_List]
GO
/****** Object:  StoredProcedure [dbo].[CanadaForm_Get]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[CanadaForm_Get]
GO
/****** Object:  StoredProcedure [dbo].[CanadaForm_Add_Person]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[CanadaForm_Add_Person]
GO
/****** Object:  StoredProcedure [dbo].[CanadaForm_Add]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[CanadaForm_Add]
GO
/****** Object:  StoredProcedure [dbo].[AllUserData_Delete]    Script Date: 7/2/2015 9:35:18 AM ******/
DROP PROCEDURE [dbo].[AllUserData_Delete]
GO
/****** Object:  StoredProcedure [dbo].[AllUserData_Delete]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AllUserData_Delete]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @WUId_D bigint

	DECLARE utd_cursor CURSOR FAST_FORWARD FOR 
	SELECT WAppUserId FROM WAppUsers
		WHERE NoSignUp = 1

			OPEN utd_cursor
				FETCH NEXT FROM utd_cursor INTO @WUId_D
				WHILE @@FETCH_STATUS = 0
				BEGIN
					EXEC	[UserData_Delete] @WUId = @WUId_D, @Action = 0,  @NoSignUp = 1, @NotKeepData = 0	
					FETCH NEXT FROM utd_cursor INTO @WUId_D
				END

	CLOSE utd_cursor
	DEALLOCATE utd_cursor

END


GO
/****** Object:  StoredProcedure [dbo].[CanadaForm_Add]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Dragos Barbu>
-- Create date: <09/14/2012 03:07>
-- Modified date: <10/12/2012 01:06>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CanadaForm_Add]
(
	@WAppUserId			bigint = NULL,
	@P1Id				bigint = NULL,
	@WAppUserName		nvarchar(50) = NULL,
	@AddressName		nvarchar(200),
	@CityName			nvarchar(50) = NULL,
	@ProvinceID			int			 = NULL,
	@CountryId			smallint	 = NULL,
	@PostalCode			nvarchar(10) = NULL,
	@ArrivingBy			tinyint = NULL,
	@TransportationId	nvarchar(100) = NULL,	
	@PurposeTrip		tinyint	 = NULL,
	@ArrivingFrom		tinyint	 = NULL,
	@Firearms			char(1)	= NULL,
	@CommercialGoods	char(1) = NULL,
	@MeatProducts		char(1) = NULL,
	@Currency			char(1) = NULL,
	@GoodsShipped		char(1) = NULL,
	@FarmVisit			char(1) = NULL,
	@Duration			smallint = NULL,
	@ExceededDutyFree	char(1) = NULL,
	@ExceededExemptions	char(1) = NULL,
	@dDate				smalldatetime = NULL,
	@WTripInfoCANId		bigint OUTPUT,
	--@AddressID			int OUTPUT,
	@WAppUserIdNoSignUp	bigint OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @AddressID bigint
	
	/*
		-- Check if user is authenticated
		BEGIN
			IF @WAppUserId IS NULL OR @WAppUserId = 0
				BEGIN
					INSERT INTO WAppUsers(WAppUserName, WAppUserPwd, WAppUserEmail, NoSignUp) 
						VALUES(@WAppUserName, '', '', 1)
					SELECT @WAppUserId = SCOPE_IDENTITY()
					SET @WAppUserIdNoSignUp = @WAppUserId
				END
		END
	*/	
		-- CITY
		DECLARE @CityID BIGINT = NULL
		BEGIN
			--IF NOT EXISTS(SELECT 1 FROM Cities WHERE (UPPER(City) = UPPER(@CityName)))
			--	BEGIN
			--		INSERT INTO Cities(City) VALUES(UPPER(@CityName))
			--		SELECT @CityID = SCOPE_IDENTITY()
			--	END
			--ELSE
			--	SELECT @CityID = CityId FROM Cities WHERE (UPPER(City) = UPPER(@CityName))
			
			IF NOT EXISTS(SELECT 1 FROM Cities WHERE (UPPER(City) = ISNULL(UPPER(@CityName), '')))
				BEGIN
					INSERT INTO Cities(City) VALUES(ISNULL(UPPER(@CityName), ''))
					SELECT @CityID = SCOPE_IDENTITY()
				END
			ELSE
				SELECT @CityID = CityId FROM Cities 
					WHERE (UPPER(City) = ISNULL(UPPER(@CityName), ''))
		END
		
		-- POSTAL CODE
		DECLARE @PostalCodeID BIGINT = NULL
		BEGIN
			--IF NOT EXISTS(SELECT 1 FROM PostalCodes WHERE (UPPER(PostalCode) = UPPER(@PostalCode)))
			--	BEGIN
			--		INSERT INTO PostalCodes(CityId, PostalCode) VALUES (@CityID, @PostalCode)
			--		SELECT @PostalCodeID = SCOPE_IDENTITY()
			--	END
			--ELSE
			--	BEGIN
			--		SELECT @PostalCodeID = PostalCodeId FROM PostalCodes 
			--			WHERE ((CityId = @CityID) AND (PostalCode = UPPER(@PostalCode)))
			--	END
			
			IF NOT EXISTS(SELECT 1 FROM PostalCodes WHERE (UPPER(PostalCode) = ISNULL(UPPER(@PostalCode), '')))
				BEGIN
					INSERT INTO PostalCodes(PostalCode) VALUES (ISNULL(UPPER(@PostalCode), ''))
					SELECT @PostalCodeID = SCOPE_IDENTITY()
				END
			ELSE
				BEGIN
					SELECT @PostalCodeID = PostalCodeId FROM PostalCodes 
						WHERE (PostalCode = ISNULL(UPPER(@PostalCode), ''))
				END
		END
			
		-- ADDRESS
		BEGIN
		/*
			IF EXISTS(SELECT 1 FROM Persons WHERE (WAppUserId = @WAppUserId AND AddressId IS NULL))
				BEGIN
					INSERT INTO Addresses(CityId, PostalCodeId, AdministrativeRegionId, CountryId, StreetName, Residence) 
						VALUES(@CityID, @PostalCodeID, @ProvinceID, @CountryId, @AddressName, 1)
					SELECT @AddressID = SCOPE_IDENTITY()
					UPDATE Persons SET AddressId = @AddressID
						WHERE (WAppUserId = @WAppUserId)
				END
			ELSE
				BEGIN
					SELECT @AddressID = AddressId FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser = 1)
					UPDATE Addresses SET CityId = @CityID, PostalCodeId = @PostalCodeID, 
							AdministrativeRegionId = @ProvinceID, CountryId = @CountryId, StreetName = @AddressName
						WHERE (AddressId = @AddressID)
				END
			*/	
			
				IF NOT EXISTS (SELECT 1 FROM Persons INNER JOIN
                      Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
                      WHERE Persons_Addresses.PersonId = @P1Id AND Persons_Addresses.Residence = 1 )
					BEGIN
						INSERT INTO Addresses(CityId, PostalCodeId, AdministrativeRegionId, CountryId, StreetName) 
							VALUES(@CityID, @PostalCodeID, @ProvinceID, @CountryId, @AddressName)
							
							SELECT @AddressID = SCOPE_IDENTITY()
							
						INSERT INTO [Persons_Addresses] ([PersonId],[AddressId] ,[Residence],[Destination])
							VALUES (@P1Id, @AddressID , 1, 0)							
					END
				 ELSE
				    BEGIN
				    	SELECT @AddressID = Persons_Addresses.AddressId FROM Persons INNER JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId INNER JOIN
							Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
							WHERE Persons_Addresses.PersonId = @P1Id AND Persons_Addresses.Residence = 1 
							
				    	UPDATE Addresses SET CityId = @CityID, PostalCodeId = @PostalCodeID, 
							AdministrativeRegionId = @ProvinceID, CountryId = @CountryId, StreetName = @AddressName
							WHERE (AddressId = @AddressID)

				    END
				
		END

		-- WTripInfoCAN
		BEGIN
			IF NOT EXISTS(SELECT 1 FROM WTripInfoCAN WHERE (WAppUserId = @WAppUserId))
				BEGIN
					INSERT INTO WTripInfoCAN(WAppUserId, WArrivingBy, TransportationId ,WTripPurpose, WArrivingFrom, Firearms, CommercialGoods,
											 MeatProducts, CurrencyValue, Goods, FarmVisit, ExceedDutyFree, 
											 ExceedExemptions, DurationOfStay, TripDate)
						VALUES(@WAppUserId, @ArrivingBy, @TransportationId,@PurposeTrip, @ArrivingFrom, @Firearms, @CommercialGoods, 
							@MeatProducts, @Currency, @GoodsShipped, @FarmVisit, @ExceededDutyFree, @ExceededExemptions,
							@Duration, @dDate)
					SELECT @WTripInfoCANId = SCOPE_IDENTITY()
				END
			ELSE
				BEGIN
					SELECT @WTripInfoCANId = WTripInfoCANId FROM WTripInfoCAN WHERE (WAppUserId = @WAppUserId)
					UPDATE WTripInfoCAN 
							SET WArrivingBy = @ArrivingBy, TransportationId = @TransportationId, WTripPurpose = @PurposeTrip, WArrivingFrom = @ArrivingFrom,
								Firearms = @Firearms, CommercialGoods = @CommercialGoods, MeatProducts = @MeatProducts,
								CurrencyValue = @Currency, Goods = @GoodsShipped, FarmVisit = @FarmVisit, 
								ExceedDutyFree = @ExceededDutyFree, ExceedExemptions = @ExceededExemptions, 
								DurationOfStay = @Duration, TripDate = @dDate
						WHERE (WTripInfoCANId = @WTripInfoCANId)
				END
		END
END


GO
/****** Object:  StoredProcedure [dbo].[CanadaForm_Add_Person]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Dragos Barbu>
-- Create date: <09/14/2012 03:30>
-- Modified: <10/03/2012 05:10>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CanadaForm_Add_Person]
(
	@WAppUserId			bigint = NULL,
	@P1Id				bigint = NULL,
	@person1LastName	nvarchar(50),
	@person1FirstName	nvarchar(50),
	@person1MiddleName	nvarchar(50) = NULL,
	@person1DoB			date		 = NULL,
	@person1Citizenship	nvarchar(50) = NULL,
	@person1DateLeft	date		 = NULL,
	@person1ValueGoods	smallmoney	 = NULL,
	@P2Id				bigint = NULL,
	@person2LastName	nvarchar(50) = NULL,
	@person2FirstName	nvarchar(50) = NULL,
	@person2MiddleName	nvarchar(50) = NULL,
	@person2DoB			date		 = NULL,
	@person2Citizenship	nvarchar(50) = NULL,
	@person2DateLeft	date		 = NULL,
	@person2ValueGoods	smallmoney	 = NULL,
	@P3Id				bigint = NULL,
	@person3LastName	nvarchar(50) = NULL,
	@person3FirstName	nvarchar(50) = NULL,
	@person3MiddleName	nvarchar(50) = NULL,
	@person3DoB			date		 = NULL,
	@person3Citizenship	nvarchar(50) = NULL,
	@person3DateLeft	date		 = NULL,
	@person3ValueGoods	smallmoney	 = NULL,
	@P4Id				bigint = NULL,
	@person4LastName	nvarchar(50) = NULL,
	@person4FirstName	nvarchar(50) = NULL,
	@person4MiddleName	nvarchar(50) = NULL,
	@person4DoB			date		 = NULL,
	@person4Citizenship	nvarchar(50) = NULL,
	@person4DateLeft	date		 = NULL,
	@person4ValueGoods	smallmoney	 = NULL,
	@WTripInfoCANId		bigint		 = NULL
)
AS
BEGIN
	SET NOCOUNT ON;
	
		DECLARE @PersonID bigint = NULL
		DECLARE @LP1Id bigint = 0, @LP2Id bigint = 0, @LP3Id bigint = 0, @LP4Id bigint = 0 
		DECLARE @LWTripInfoCANId bigint = 0
		
		-- verif tripinfocanid
		IF ISNULL(@WTripInfoCANId,0) = 0 
			BEGIN
				INSERT INTO WTripInfoCAN(WAppUserId) VALUES (@WAppUserId) 
				SET @LWTripInfoCANId = SCOPE_IDENTITY()	
			END
		ELSE
			SET @LWTripInfoCANId = @WTripInfoCANId
		
		
		-- First person
		BEGIN
			--IF (@person1FirstName IS NOT NULL AND @person1LastName IS NOT NULL)
			IF (ISNULL(@P1Id,0) <> 0)
				BEGIN
					UPDATE Persons 
							SET FirstName = @person1FirstName, MiddleName = @person1MiddleName, LastName = @person1LastName, 
							DateofBirth = @person1DoB, Citizenship = @person1Citizenship
							WHERE PersonId = @P1Id	
						--WHERE ((WAppUserId = @WAppUserId) AND (WAppUser = 1))
						
					--SELECT top 1 @PersonID = PersonId FROM Persons WHERE ((WAppUserId = @WAppUserId) AND (WAppUser = 1))
					SET @LP1Id = @P1Id
				END	
			ELSE
			 BEGIN

				INSERT INTO [Persons] ([FirstName] ,[MiddleName] ,[LastName] ,[DateofBirth]  ,[Citizenship]
							,[WAppUserId] ,[WAppUser], [PrintForm])
					VALUES (@person1FirstName, @person1MiddleName, @person1LastName , @person1DoB, @person1Citizenship,@WAppUserId,0,1)		
							
				SET @LP1Id = SCOPE_IDENTITY()
			 END
			
	
					
			IF NOT EXISTS(SELECT 1 FROM WTripInfoCANDetailsP WHERE ((PersonId = @LP1Id) AND (WTripInfoCANId = @LWTripInfoCANId)))
				BEGIN
					INSERT INTO WTripInfoCANDetailsP(WTripInfoCANId, PersonId, ValueGoods, DateLeftCanada)
						VALUES(@LWTripInfoCANId, @LP1Id, @person1ValueGoods, @person1DateLeft)
				END	
			ELSE
				BEGIN
					UPDATE WTripInfoCANDetailsP
							SET ValueGoods = @person1ValueGoods, DateLeftCanada = @person1DateLeft
						WHERE ((PersonId = @LP1Id) AND (WTripInfoCANId = @LWTripInfoCANId))
				END
					--SET @PersonID = @PersonID + 1
				
		END
		
		-- Second person
		BEGIN
			--SELECT top 1 @PersonID = PersonId FROM Persons 	WHERE ((WAppUserId = @WAppUserId) AND (WAppUser = 0))
			
			IF (ISNULL(@P2Id,0) <> 0)
				BEGIN
					UPDATE Persons 
						SET FirstName = ISNULL(@person2FirstName, ''), MiddleName = ISNULL(@person2MiddleName,''), 
						LastName = ISNULL(@person2LastName, ''), DateofBirth = @person2DoB, Citizenship = @person2Citizenship
					WHERE (PersonId = @P2Id)
					SET @LP2Id = @P2Id
				END	
			ELSE
				BEGIN
					INSERT INTO [Persons] ([FirstName] ,[MiddleName] ,[LastName] ,[DateofBirth]  ,[Citizenship]
							,[WAppUserId] ,[WAppUser], [PrintForm])
					VALUES (@person2FirstName, @person2MiddleName, @person2LastName , @person2DoB, @person2Citizenship,@WAppUserId,0,1)		

					SET @LP2Id = SCOPE_IDENTITY()
				END
				
			IF NOT EXISTS(SELECT 1 FROM WTripInfoCANDetailsP WHERE ((PersonId = @LP2Id) AND (WTripInfoCANId = @LWTripInfoCANId)))
				BEGIN
					INSERT INTO WTripInfoCANDetailsP(WTripInfoCANId, PersonId, ValueGoods, DateLeftCanada)
					VALUES(@LWTripInfoCANId, @LP2Id, @person2ValueGoods, @person2DateLeft)
				END	
			ELSE
				BEGIN
					UPDATE WTripInfoCANDetailsP
						SET ValueGoods = @person2ValueGoods, DateLeftCanada = @person2DateLeft
						WHERE ((PersonId = @LP2Id) AND (WTripInfoCANId = @LWTripInfoCANId))
				END
			--SET @PersonID = @PersonID + 1
		END
		
		-- Third person
		BEGIN
			IF (ISNULL(@P3Id,0) <> 0)
				BEGIN
					UPDATE Persons 
						SET FirstName = ISNULL(@person3FirstName, ''), MiddleName = @person3MiddleName, 
						LastName = ISNULL(@person3LastName, ''), DateofBirth = @person3DoB, Citizenship = @person3Citizenship
						WHERE (PersonId = @P3Id)
						SET @LP3Id = @P3Id
				END
			ELSE
				BEGIN
					INSERT INTO [Persons] ([FirstName] ,[MiddleName] ,[LastName] ,[DateofBirth]  ,[Citizenship]
							,[WAppUserId] ,[WAppUser], [PrintForm])
					VALUES (@person3FirstName, @person3MiddleName, @person3LastName , @person3DoB, @person3Citizenship,@WAppUserId,0,1)		

					SET @LP3Id = SCOPE_IDENTITY()
				END
						
			IF NOT EXISTS(SELECT 1 FROM WTripInfoCANDetailsP WHERE ((PersonId = @LP3Id) AND (WTripInfoCANId = @LWTripInfoCANId)))
						BEGIN
							INSERT INTO WTripInfoCANDetailsP(WTripInfoCANId, PersonId, ValueGoods, DateLeftCanada)
								VALUES(@LWTripInfoCANId, @LP3Id, @person3ValueGoods, @person3DateLeft)
						END	
					ELSE
						BEGIN
							UPDATE WTripInfoCANDetailsP
									SET ValueGoods = @person3ValueGoods, DateLeftCanada = @person3DateLeft
								WHERE ((PersonId = @LP3Id) AND (WTripInfoCANId = @LWTripInfoCANId))
						END
			--SET @PersonID = @PersonID + 1
		END
		
		-- Fourth person
		BEGIN
		
			IF (ISNULL(@P4Id,0) <> 0)
				BEGIN
					UPDATE Persons 
						SET FirstName = ISNULL(@person4FirstName, ''), MiddleName = @person4MiddleName, 
						LastName = ISNULL(@person4LastName, ''), DateofBirth = @person4DoB, Citizenship = @person4Citizenship
						WHERE (PersonId = @P4Id)
					SET @LP4Id = @P4Id						
				END
			ELSE
				BEGIN
					INSERT INTO [Persons] ([FirstName] ,[MiddleName] ,[LastName] ,[DateofBirth]  ,[Citizenship]
							,[WAppUserId] ,[WAppUser], [PrintForm])
					VALUES (@person4FirstName, @person4MiddleName, @person4LastName , @person4DoB, @person4Citizenship,@WAppUserId,0,1)		

					SET @LP4Id = SCOPE_IDENTITY()
				END
				
			IF NOT EXISTS(SELECT 1 FROM WTripInfoCANDetailsP WHERE ((PersonId = @LP4Id) AND (WTripInfoCANId = @LWTripInfoCANId)))
				BEGIN
					INSERT INTO WTripInfoCANDetailsP(WTripInfoCANId, PersonId, ValueGoods, DateLeftCanada)
						VALUES(@LWTripInfoCANId, @LP4Id, @person4ValueGoods, @person4DateLeft)
				END	
			ELSE
				BEGIN
					UPDATE WTripInfoCANDetailsP
							SET ValueGoods = @person4ValueGoods, DateLeftCanada = @person4DateLeft
						WHERE ((PersonId = @LP4Id) AND (WTripInfoCANId = @LWTripInfoCANId))
				END
				
		END
END


GO
/****** Object:  StoredProcedure [dbo].[CanadaForm_Get]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery8.sql|7|0|C:\Users\silviu\AppData\Local\Temp\~vsD77A.sql
-- Batch submitted through debugger: SQLQuery1.sql|7|0|C:\Users\silviu\AppData\Local\Temp\~vsB310.sql
-- =============================================
-- Author:		<Dragos Barbu>
-- Create date: <09/26/2012 03:07>
-- Modified: <10/09/2012 19:58>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CanadaForm_Get]
(
	@WAppUserId			bigint = NULL,
	@PGId			bigint = NULL
)
AS
BEGIN
	SET NOCOUNT ON;
	
	  --Prepare Persons
		IF ISNULL(@PGId,0) = 0
		BEGIN
			  
			DECLARE @NoP tinyint = 4, @NoAP tinyint =0, @PId bigint, @PAId BIGINT
			
			SELECT @NoAP = COUNT(1) FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser =0)
			WHILE (@NoAP < @NoP)
				BEGIN
					INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId, PrintForm) VALUES ('', '', 0, @WAppUserId,1);	
					SET @NoAP = @NoAP + 1				
				END
			
			--SELECT TOP 1 @PId = PersonId FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser =0) ORDER BY PersonId
			
			--Get the user info and put on Persons, so the user record will not be updated
			--DECLARE @USal nvarchar(6), @UTitle nvarchar(15), @UFName nvarchar(50), @UMName nvarchar(50), @ULName nvarchar(50) 
			--DECLARE @USuffix nvarchar(10), @UDoB date, @UCivilStatusId tinyint, @UGenderId tinyint, @UCitizenship nvarchar(50)
			--DECLARE @UAddressId bigint, @UWAppUserId bigint,  @UPId bigint
			
			--SELECT   @USal= [Salutation] , @UTitle = [Title], @UFName = [FirstName], @UMName = [MiddleName] 
			--		,@ULName = [LastName], @USuffix = [Suffix], @UDoB = [DateofBirth], @UCivilStatusId = [CivilStatusId]
			--		,@UGenderId=[GenderId], @UCitizenship = [Citizenship]
			--		FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser =1)
					
			
			--UPDATE [Persons]
			-- SET   [Salutation] = @USal, [Title] = @UTitle, [FirstName] = @UFName ,[MiddleName] = @UMName
			--	  ,[LastName] = @ULName , [Suffix] = @USuffix ,[DateofBirth] = @UDoB ,[CivilStatusId] = @UCivilStatusId
			--	  ,[GenderId] = @UGenderId ,[Citizenship] = @UCitizenship 
			--	  ,[WAppUserId] = @WAppUserId 
			--  WHERE PersonId = @PId	
			  
			--UPDATE [Persons] SET PrintForm = 0 WHERE (WAppUserId = @WAppUserId) 	  
			--UPDATE [Persons] SET PrintForm = 1 WHERE (WAppUserId = @WAppUserId AND WAppUser =0)
	
		END
		ELSE
		BEGIN
			SELECT TOP 1 @PId = PersonId FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser =0) ORDER BY PersonId
			--UPDATE [Persons] SET PrintForm = 0 WHERE (WAppUserId = @WAppUserId) 	  
			--UPDATE [Persons] SET PrintForm = 1 WHERE (WAppUserId = @WAppUserId AND WAppUser =0)
		END
		-- Get Persons Lists
		DECLARE @AddressID bigint, @CityID bigint, @CountryID smallint, @WTripInfoCANId bigint, @NPLAddressId bigint
		BEGIN
			SELECT PersonId, LastName +' '+ FirstName + ISNULL(' '+ MiddleName, '') As Name, DateofBirth, Citizenship
				FROM Persons 
					WHERE (WAppUserId = @WAppUserId AND WAppUser = 0) ORDER BY PersonId
		
			--SELECT @AddressID = AddressId FROM Persons WHERE PersonId = @PId --(WAppUserId = @WAppUserId)
			SELECT @AddressID = Persons_Addresses.AddressId FROM  Persons_Addresses INNER JOIN
                      Persons ON Persons_Addresses.PersonId = Persons.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
					  WHERE (Persons_Addresses.PersonId = @PId AND Persons_Addresses.Residence = 1)
			
			SELECT @NPLAddressId = AddressId FROM WAppUsers WHERE WAppUserId = @WAppUserId
			
			--Add address from users
			IF (ISNULL(@AddressID,0) = 0 AND ISNULL(@NPLAddressId,0) <> 0)
			BEGIN	

				INSERT INTO [Addresses]([CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
						,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
						,[StreetPostDirection] ,[UnitType] ,[UnitNumber])
				SELECT [CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
						,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
						,[StreetPostDirection] ,[UnitType] ,[UnitNumber]
				FROM [Addresses]  WHERE AddressId = @NPLAddressId
				
				SET @NPLAddressId = SCOPE_IDENTITY()
				
				/*IF NOT EXISTS (SELECT 1 FROM WAppUsers INNER JOIN
                      Persons_Addresses ON WAppUsers.PersonId = Persons_Addresses.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
                      WHERE Persons_Addresses.PersonId = @PId AND Persons_Addresses.Residence = 1 )
				*/
					INSERT INTO [Persons_Addresses] ([PersonId],[AddressId] ,[Residence],[Destination])
							VALUES (@PId, @NPLAddressId, 1, 0)
				/*
				ELSE 
					SELECT @PAId = Persons_Addresses.PersonAddressId FROM WAppUsers INNER JOIN
						Persons_Addresses ON WAppUsers.PersonId = Persons_Addresses.PersonId INNER JOIN
						Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
						WHERE Persons_Addresses.PersonId = @PId AND Persons_Addresses.Residence = 1 
						
						UPDATE Persons_Addresses SET [AddressId] = @NPLAddressId , Persons_Addresses.Destination = 0
							WHERE Persons_Addresses.PersonAddressId  = @PAId 
				*/
				--UPDATE Persons SET AddressId = @NPLAddressId WHERE PersonId = @PId
				SET @AddressID = @NPLAddressId
				
			END
			
		END
		BEGIN
			SELECT StreetName, Cities.City, Addresses.CountryId, Addresses.AdministrativeRegionId, 
				PostalCodes.PostalCode
				FROM Addresses 
					LEFT JOIN Cities ON Addresses.CityId = Cities.CityId
					LEFT JOIN PostalCodes ON Addresses.PostalCodeId = PostalCodes.PostalCodeId
				WHERE (Addresses.AddressId = @AddressID)
			
			SELECT * FROM WTripInfoCAN WHERE (WAppUserId = @WAppUserId)
			
			SELECT @WTripInfoCANId = WTripInfoCANId FROM WTripInfoCAN WHERE (WAppUserId = @WAppUserId)
			
			SELECT * FROM WTripInfoCANDetailsP WHERE (WTripInfoCANId = @WTripInfoCANId)
		END
		

		
END


GO
/****** Object:  StoredProcedure [dbo].[Country_Province_List]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Dragos Barbu>
-- Create date: <09/14/2012 01:07>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Country_Province_List]
(
	@Action	tinyint,
	@CountryId	smallint	= NULL
)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @Action = 0
		-- Province/State list
		
		SELECT AdministrativeRegionId, AdministrativeRegionCode, AdministrativeRegion
			FROM AdministrativeRegions
				WHERE ((CountryId = @CountryId) OR (ISNULL(@CountryId,0) = 0)) OR AdministrativeRegionId = 0
				ORDER BY AdministrativeRegion
		
	ELSE
		-- Countries list
		SELECT CountryId, CountryCodeA2, CountryName
			FROM Countries
			ORDER BY CountryName
	
END


GO
/****** Object:  StoredProcedure [dbo].[Enrollment_Cancel]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Enrollment_Cancel]
	-- Add the parameters for the stored procedure here
	@UserId bigint,
	@PlanType varchar(15),
    @PlanId bigint
    
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	--DECLARE @PLanId bigint;

	
	--SELECT @PLanId = PLicensesTypeId FROM PLicensesTypes WHERE PLicensesType = @PlanType AND EndDate IS NULL
	/* UPDATE Enrollments SET EndDate = GetDate() 
	WHERE WAppUserId = @UserId AND PLicensesTypeId = @PlanId AND EndDate IS NULL  */


	UPDATE Enrollments SET EndDate = GetDate() 
	WHERE EnrollmentId = @PlanId  
END


GO
/****** Object:  StoredProcedure [dbo].[Enrollment_Register]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery1.sql|7|0|C:\Users\silviu\AppData\Local\Temp\~vs51A7.sql
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Enrollment_Register]
	-- Add the parameters for the stored procedure here
	@UserId bigint,
	@PlanType varchar(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @PLanId bigint;

	--SET @PLanId = N'SELECT PLicensesTypeId FROM PLicensesTypes WHERE PLicensesType = @PlanType AND EndDate IS NULL';  
	SELECT @PLanId = PLicensesTypeId FROM PLicensesTypes WHERE PLicensesType = @PlanType AND EndDate IS NULL
	--EXEC sp_executesql N'SELECT @PLanId = PLicensesTypeId FROM PLicensesTypes WHERE PLicensesType = @PlanType AND EndDate IS NULL';  

    -- Insert statements for procedure here
	INSERT INTO Enrollments (WAppUserId, PLicensesTypeId, BeginDate)
	VALUES(@UserId,@PlanId, GETDATE())
	
END


GO
/****** Object:  StoredProcedure [dbo].[MSettings_Get]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MSettings_Get]
	-- Add the parameters for the stored procedure here
	(@WAppUId bigint)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 --remove selected fields - already in CUSer
		SELECT WAppUserId, PersonId, WAppUserName, WAppUserPwd, WAppUserEmail, WAppUserAltEmail ,NoSignUp , ISNULL(NotKeepData,0) NotKeepData
			FROM WAppUsers 
			WHERE WAppUserId = @WAppUId
			
		SELECT     Persons.Salutation, Persons.FirstName, Persons.MiddleName, Persons.LastName , Persons.GenderId, Persons.DateofBirth
		--, Gender.GenderCode
			FROM WAppUsers  JOIN Persons ON WAppUsers.PersonId = Persons.PersonId
			--LEFT JOIN Gender ON Persons.GenderId = Gender.GenderId       
			WHERE WAppUsers.WAppUserId = @WAppUId			

		SELECT     Addresses.AddressId, Addresses.StreetNumber, Addresses.StreetType, Addresses.StreetName, Addresses.StreetNom, Addresses.StreetPostDirection, Addresses.UnitNumber, 
                      Addresses.AdministrativeRegionId, Addresses.CountryId
			FROM  Addresses INNER JOIN
                      WAppUsers ON Addresses.AddressId = WAppUsers.AddressId
                      WHERE WAppUsers.WAppUserId = @WAppUId 
                      
				  -- GET Postal Code
		          
				  SELECT     Addresses.PostalCodeId, PostalCodes.PostalCode
					FROM  Addresses INNER JOIN
				  PostalCodes ON Addresses.PostalCodeId = PostalCodes.PostalCodeId INNER JOIN
				  WAppUsers ON Addresses.AddressId = WAppUsers.AddressId
				  WHERE WAppUsers.WAppUserId = @WAppUId 
		          
				  --GET City
				  SELECT     Addresses.CityId, Cities.City
					FROM  Addresses INNER JOIN
					WAppUsers ON Addresses.AddressId = WAppUsers.AddressId
				  INNER JOIN  Cities ON Addresses.CityId = Cities.CityId
				  WHERE WAppUsers.WAppUserId = @WAppUId


                      
END


GO
/****** Object:  StoredProcedure [dbo].[MSettings_Update]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MSettings_Update]
	-- Add the parameters for the stored procedure here
	@Passphrase nvarchar(256),
	@WAppUId bigint,
	@PersonId bigint,
	@UserName	nvarchar(50),
	@UserPasswd	nvarchar(50),
	@UserEmail	nvarchar(150) = NULL,
	@UserAltEmail	nvarchar(150) = NULL,
	@NotKeepData bit = 0,
	@UpdInfoCF bit = 0,
	@UpdAddressCF bit = 0,
	@Sal nvarchar(6) = '',
	@FirstName	nvarchar(50)= '',
	@MiddleName	nvarchar(50)= '',
	@LastName	nvarchar(50)= '',
	@DoB		date = NULL,
	@Gender tinyint = NULL,
	@AddressId bigint = 0,
	@UnitNo nvarchar(10),
	@StreetNo smallint,
	@StreetType nvarchar(15),
	@StreetPDir nvarchar(4),
	@StreetName nvarchar(200),
	@StreetNom nvarchar(100),
	@City nvarchar(50) = '',
	@PCode nvarchar(10)='',
	@CountryId smallint = 0,
	@AdminRegId int = 0,
	@RAddresId bigint =0 OUTPUT
	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @PId bigint , @PAId bigint , @PPId bigint
	DECLARE @CityId bigint = 0, @PCodeId bigint = 0, @LAddressId bigint = 0, @PLAddressId bigint = 0;
    DECLARE      @lCityId bigint,
      @lPostalCodeId bigint,
      @lAdministrativeRegionId int,
      @lCountryId  smallint,
      @lStreetNumber smallint,
      @lStreetPreDirection nvarchar(4),
      @lStreetName nvarchar(200),
      @lStreetNom nvarchar(100),
      @lStreetType nvarchar(15),
      @lStreetPostDirection nvarchar(4),
      @lUnitType nvarchar(10),
      @lUnitNumber nvarchar(5),
      @lResidence bit,
      @lDestination bit


    
	UPDATE WAppUsers SET WAppUserName = @UserName, WAppUserPwd = @UserPasswd, WAppUserEmail = @UserEmail, 
						WAppUserAltEmail = @UserAltEmail, NotKeepData = @NotKeepData
					WHERE (WAppUserId = @WAppUId)

    IF (ISNULL(@PersonId,0)= 0 OR NOT EXISTS(SELECT 1 FROM Persons WHERE PersonId = @PersonId)) 
		BEGIN
			INSERT INTO [Persons]
				   ([Salutation],[FirstName] ,[MiddleName],[LastName], [DateofBirth], [GenderId],[WAppUserId] ,[WAppUser])
			VALUES(@Sal, @FirstName, @MiddleName, @LastName, @DoB ,@Gender ,@WAppUId , 1);
			SET @PId=SCOPE_IDENTITY();
			UPDATE WAppUsers SET PersonId=@PId WHERE (WAppUserId = @WAppUId);
	    END
	     
    ELSE
		BEGIN
			UPDATE [Persons]  SET Salutation = @Sal, FirstName = @FirstName ,MiddleName = @MiddleName
			,LastName = @LastName , DateofBirth = @DoB ,GenderId = @Gender ,WAppUserId = @WAppUId ,WAppUser = 1
				WHERE PersonId = @PersonId
				--(WAppUserId = @WAppUId AND WAppUser =1)
			SET @PId = @PersonId	
		END

     IF ISNULL(@UpdInfoCF,0) = 1
		BEGIN
			SELECT TOP 1 @PPId = PersonId FROM Persons WHERE (WAppUserId = @WAppUId AND WAppUser =0) ORDER BY PersonId

			IF ISNULL(@PPId,0) <> 0
				BEGIN
					UPDATE Persons 
						SET [Salutation] = ISNULL(@Sal,''), FirstName = ISNULL(@FirstName,''), MiddleName = ISNULL(@MiddleName,''), LastName = ISNULL(@LastName,''), 
						DateofBirth = @DoB, [GenderId] = @Gender 
						WHERE PersonId = @PPId	
				END
			ELSE
				BEGIN
					INSERT INTO Persons (Salutation, FirstName, MiddleName,LastName, DateofBirth, GenderId ,WAppUserId, WAppUser, PrintForm) 
					VALUES (@Sal, @FirstName, @MiddleName, @LastName, @DoB, @Gender, @WAppUId, 0, 1); 
				END
		END

	--handle addresses if no record
	--IF (@AdressesListener=0
	IF (@City IS NOT NULL AND LEN(@City) > 0)
		BEGIN
			-- perf
			IF NOT EXISTS(SELECT 1 FROM Cities WHERE (UPPER(City) = UPPER(@City))) 
				BEGIN
					INSERT INTO Cities(City) VALUES(@City);
					SELECT @CityId = SCOPE_IDENTITY();
				END
			ELSE
				SELECT @CityID = CityId FROM Cities WHERE (UPPER(City) = UPPER(@City)) 
			
	
		END	
	ELSE 
		SET @CityID = 0

	IF (@PCode IS NOT NULL AND LEN(@PCode) > 0)
		BEGIN
			-- perf
			IF NOT EXISTS(SELECT 1 FROM PostalCodes WHERE (UPPER(PostalCode) = UPPER(@PCode)))
				BEGIN
					INSERT INTO PostalCodes(PostalCode) VALUES (@PCode);
					SELECT @PCodeId = SCOPE_IDENTITY();
				END
			ELSE
				SELECT @PCodeId = PostalCodeId FROM PostalCodes WHERE (UPPER(PostalCode) = UPPER(@PCode))
		END	
	ELSE 
		SET @PCodeId = 0
	
		
	   IF (ISNULL(@AddressId,0)=0)
			BEGIN
				INSERT INTO [Addresses]
           ([CityId] ,[PostalCodeId],[AdministrativeRegionId],[CountryId],[StreetNumber],[StreetPreDirection]
           ,[StreetName],[StreetNom],[StreetType],[StreetPostDirection],[UnitType] ,[UnitNumber] ,[Residence] ,[Destination])        
				VALUES  (@CityID , @PCodeId, @AdminRegId, @CountryId, @StreetNo, '', @StreetName, @StreetNom , @StreetType
						, @StreetPDir, '', @UnitNo, 1 , 0)
            
            	SET @LAddressId = SCOPE_IDENTITY()
			END
		ELSE
			BEGIN
				UPDATE [Addresses]
				SET [CityId] = @CityID ,[PostalCodeId] = @PCodeId ,[AdministrativeRegionId] = @AdminRegId
				  ,[CountryId] = @CountryId ,[StreetNumber] = @StreetNo ,[StreetPreDirection] = '' 			  
				  ,[StreetName] = @StreetName, [StreetNom] = @StreetNom, [StreetType] = @StreetType ,[StreetPostDirection] = @StreetPDir
				  ,[UnitType] = '' , [UnitNumber] = @UnitNo
				  ,[Residence] = 1 ,[Destination] = 0
				WHERE AddressId = @AddressId;		
					
				SET @LAddressId = @AddressId;
			END		
			
		UPDATE WAppUsers SET AddressId = @LAddressId WHERE WAppUserId = @WAppUId
		
		DECLARE @NPLAddressId int
		
		-- Update [Residence] =1,[Destination]=1 so to be available in DCAN & DUSA
		IF ISNULL(@UpdAddressCF,0) = 1
			BEGIN
				SELECT TOP 1 @PPId = PersonId FROM Persons WHERE (WAppUserId = @WAppUId AND WAppUser =0) ORDER BY PersonId
				
				IF ISNULL(@PPId,0) <> 0
				BEGIN
				--check if exists residence address
				/*IF NOT EXISTS (SELECT 1 FROM WAppUsers INNER JOIN
                      Persons_Addresses ON WAppUsers.PersonId = Persons_Addresses.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
                      WHERE Persons_Addresses.PersonId = @PPId AND Persons_Addresses.Residence = 1 )
                 */     
				IF NOT EXISTS(SELECT 1 FROM Persons INNER JOIN
                      Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
                      WHERE Persons_Addresses.PersonId = @PPId AND Persons_Addresses.Residence = 1)
                      
					
					BEGIN
					
						INSERT INTO [Addresses]([CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
								,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
								,[StreetPostDirection] ,[UnitType] ,[UnitNumber])
						SELECT [CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
								,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
								,[StreetPostDirection] ,[UnitType] ,[UnitNumber] 
						FROM [Addresses]  WHERE AddressId = @LAddressId
				
						SET @NPLAddressId = SCOPE_IDENTITY()					
					
						INSERT INTO [Persons_Addresses] ([PersonId],[AddressId] ,[Residence],[Destination])
							VALUES (@PPId, @NPLAddressId, 1, 0)
							
					END
				  ELSE
					BEGIN
						--INSERT INTO [Addresses]([CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
						--	,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
						--	,[StreetPostDirection] ,[UnitType] ,[UnitNumber])
						--SELECT [CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
						--	,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
						--	,[StreetPostDirection] ,[UnitType] ,[UnitNumber] 
						--FROM [Addresses]  WHERE AddressId = @LAddressId
			
						SELECT @lCityId = [CityId]
							  ,@lPostalCodeId = [PostalCodeId]
							  ,@lAdministrativeRegionId = [AdministrativeRegionId]
							  ,@lCountryId = [CountryId]
							  ,@lStreetNumber = [StreetNumber]
							  ,@lStreetPreDirection = [StreetPreDirection]
							  ,@lStreetName = [StreetName]
							  ,@lStreetNom = [StreetNom]
							  ,@lStreetType = [StreetType]
							  ,@lStreetPostDirection = [StreetPostDirection]
							  ,@lUnitType = [UnitType]
							  ,@lUnitNumber = [UnitNumber]
							  ,@lResidence = [Residence]
							  ,@lDestination = [Destination]
						  FROM [dbo].[Addresses] WHERE [AddressId] = @LAddressId
									
					
						SELECT @PAId = Persons_Addresses.PersonAddressId, @NPLAddressId = Persons_Addresses.AddressId 
							FROM --WAppUsers INNER JOIN
							Persons_Addresses --ON WAppUsers.PersonId = Persons_Addresses.PersonId INNER JOIN
							--Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
							WHERE Persons_Addresses.PersonId = @PPId AND Persons_Addresses.Residence = 1 

						UPDATE [dbo].[Addresses]
							SET [CityId] = @lCityId
								,[PostalCodeId] = @lPostalCodeId
								,[AdministrativeRegionId] = @lAdministrativeRegionId
								,[CountryId] = @lCountryId
								,[StreetNumber] = @lStreetNumber
								,[StreetPreDirection] = @lStreetPreDirection
								,[StreetName] = @lStreetName
								,[StreetNom] = @lStreetNom
								,[StreetType] = @lStreetType
								,[StreetPostDirection] = @lStreetPostDirection
								,[UnitType] = @lUnitType
								,[UnitNumber] = @lUnitNumber
								,[Residence] = @lResidence
								,[Destination] = @lDestination
							WHERE [AddressId] = @NPLAddressId
						
						--UPDATE Persons_Addresses SET [AddressId] = @LAddressId , Persons_Addresses.Destination = 0
							--WHERE Persons_Addresses.PersonAddressId  = @PAId 
					END
				
				-- check for destination address
				/*     
				IF NOT EXISTS (SELECT 1 FROM WAppUsers INNER JOIN
                      Persons_Addresses ON WAppUsers.PersonId = Persons_Addresses.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
                      WHERE Persons_Addresses.PersonId = @PPId AND Persons_Addresses.Destination = 1)	
				*/
				IF NOT EXISTS(SELECT 1 FROM Persons INNER JOIN
                      Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
                      WHERE Persons_Addresses.PersonId = @PPId AND Persons_Addresses.Destination = 1)
                      
					BEGIN	
					
						INSERT INTO [Addresses]([CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
								,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
								,[StreetPostDirection] ,[UnitType] ,[UnitNumber])
						SELECT [CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
								,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
								,[StreetPostDirection] ,[UnitType] ,[UnitNumber] 
						FROM [Addresses]  WHERE AddressId = @LAddressId
				
						SET @NPLAddressId = SCOPE_IDENTITY()
					
						INSERT INTO [Persons_Addresses] ([PersonId],[AddressId] ,[Residence],[Destination])
							VALUES (@PPId, @NPLAddressId, 0, 1)
					END
				ELSE
					BEGIN
					
						--INSERT INTO [Addresses]([CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
						--		,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
						--		,[StreetPostDirection] ,[UnitType] ,[UnitNumber])
						--SELECT [CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
						--		,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
						--		,[StreetPostDirection] ,[UnitType] ,[UnitNumber] 
						--FROM [Addresses]  WHERE AddressId = @LAddressId
				
					   SELECT @lCityId = [CityId]
								,@lPostalCodeId = [PostalCodeId]
								,@lAdministrativeRegionId = [AdministrativeRegionId]
								,@lCountryId = [CountryId]
								,@lStreetNumber = [StreetNumber]
								,@lStreetPreDirection = [StreetPreDirection]
								,@lStreetName = [StreetName]
								,@lStreetNom = [StreetNom]
								,@lStreetType = [StreetType]
								,@lStreetPostDirection = [StreetPostDirection]
								,@lUnitType = [UnitType]
								,@lUnitNumber = [UnitNumber]
								,@lResidence = [Residence]
								,@lDestination = [Destination]
							FROM [dbo].[Addresses] WHERE [AddressId] = @LAddressId
					
						SELECT @PAId = Persons_Addresses.PersonAddressId, @NPLAddressId = Persons_Addresses.AddressId 
							FROM --WAppUsers INNER JOIN
							Persons_Addresses --ON WAppUsers.PersonId = Persons_Addresses.PersonId INNER JOIN
							--Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
							WHERE Persons_Addresses.PersonId = @PPId AND Persons_Addresses.Destination = 1 

						UPDATE [dbo].[Addresses]
							SET [CityId] = @lCityId
								,[PostalCodeId] = @lPostalCodeId
								,[AdministrativeRegionId] = @lAdministrativeRegionId
								,[CountryId] = @lCountryId
								,[StreetNumber] = @lStreetNumber
								,[StreetPreDirection] = @lStreetPreDirection
								,[StreetName] = @lStreetName
								,[StreetNom] = @lStreetNom
								,[StreetType] = @lStreetType
								,[StreetPostDirection] = @lStreetPostDirection
								,[UnitType] = @lUnitType
								,[UnitNumber] = @lUnitNumber
								,[Residence] = @lResidence
								,[Destination] = @lDestination
							WHERE [AddressId] = @NPLAddressId
					
					END
				
				/*			
				INSERT INTO [Addresses]([CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
						,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
						,[StreetPostDirection] ,[UnitType] ,[UnitNumber] ,[Residence] ,[Destination])
				SELECT [CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
						,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
						,[StreetPostDirection] ,[UnitType] ,[UnitNumber] ,1 ,1
				FROM [Addresses]  WHERE AddressId = @LAddressId
				
				SET @NPLAddressId = SCOPE_IDENTITY()
				
				
				SELECT @PLAddressId = AddressId FROM Persons WHERE PersonId = @PersonId 
				
				UPDATE Persons Set AddressId = @NPLAddressId WHERE AddressId = @PLAddressId
				*/
				
				UPDATE [Addresses]
					SET [CityId] = NULL ,[PostalCodeId] = NULL ,[AdministrativeRegionId] = NULL ,[CountryId] = NULL
					WHERE AddressId NOT IN (SELECT AddressID FROM Persons_Addresses) AND AddressId NOT IN (SELECT AddressId FROM WAppUsers)
					
				DELETE FROM [Addresses]	WHERE AddressId NOT IN (SELECT AddressID FROM Persons_Addresses) AND AddressId NOT IN (SELECT AddressId FROM WAppUsers)
				
			END
			END
			
		SET @RAddresId = @LAddressId
					
END



GO
/****** Object:  StoredProcedure [dbo].[USAForm_Add]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Dragos Barbu>
-- Create date: <09/17/2012 13:07>
-- Modified date: <10/12/2012 01:06>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USAForm_Add]
(
	@WAppUserId				bigint		= NULL,
	@PId			        bigint		= NULL,		
	@WAppUserName			nvarchar(50) = NULL,
	@AddressName			nvarchar(200),
	@CityName				nvarchar(50) = NULL,
	@ProvinceID				int			= NULL,
	--@CountryId				smallint	= NULL,
	@NoFamMembers			tinyint		= NULL,
	@CountryResidence		smallint	= NULL,
	@ContriesVisited		nvarchar(300) = NULL,
	@ContriesVisited2		nvarchar(300) = NULL,
	@TransportationId		nvarchar(100) = NULL,
	@TripPPurposeBusiness	char(1)		= NULL,
	@BringFruits			char(1)		= NULL,
	@BringMeats				char(1)		= NULL,
	@BringDiseaseAgents		char(1)		= NULL,
	@BringSoil				char(1)		= NULL,
	@Livestock				char(1)		= NULL,
	@CurrencyValue			char(1)		= NULL,
	@CommercialMerchandise	char(1)		= NULL,
	@RGoodsValue			smallmoney	= NULL,
	@VGoodsValue			smallmoney	= NULL,
	@TripDate				date		= NULL,	
	@WTripInfoUSAId			bigint OUTPUT,
	@WAppUserIdNoSignUp		bigint OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @AddressID bigint
	DECLARE @CountryIdResidence smallint
	
	/*
		-- Check if user is authenticated
		BEGIN
			IF ISNULL(@WAppUserId,0) = 0 -- IS NULL OR @WAppUserId = 0
				BEGIN
					INSERT INTO WAppUsers(WAppUserName, WAppUserPwd, WAppUserEmail, NoSignUp) 
						VALUES(@WAppUserName, '', '', 1)
					SELECT @WAppUserId = SCOPE_IDENTITY()
					SET @WAppUserIdNoSignUp = @WAppUserId
				END
		END
	*/
		
		DECLARE @LPId bigint = NULL
		
		IF (ISNULL(@PId,0) <> 0)
			BEGIN
				SET @LPId = @PId
			END	
		ELSE
		 BEGIN
			INSERT INTO Persons (FirstName, LastName, WAppUserId, WAppUser, PrintForm) VALUES ('', '', @WAppUserId, 0, 1); 
			SET @LPId = SCOPE_IDENTITY()
		 END				
		
		-- Check if City exists in DB
		DECLARE @CityID BIGINT = NULL
		BEGIN
			--IF NOT EXISTS(SELECT 1 FROM Cities WHERE (UPPER(City) = UPPER(@CityName)))
			--	BEGIN
			--		INSERT INTO Cities(City) VALUES(UPPER(@CityName))
			--		SELECT @CityID = SCOPE_IDENTITY()
			--	END
			--ELSE
			--	SELECT @CityID = CityId FROM Cities 
			--		WHERE (UPPER(City) = UPPER(@CityName))
			
			IF NOT EXISTS(SELECT 1 FROM Cities WHERE (UPPER(City) = ISNULL(UPPER(@CityName), '')))
				BEGIN
					INSERT INTO Cities(City) VALUES(ISNULL(UPPER(@CityName), ''))
					SELECT @CityID = SCOPE_IDENTITY()
				END
			ELSE
				SELECT @CityID = CityId FROM Cities 
					WHERE (UPPER(City) = ISNULL(UPPER(@CityName), ''))
		END
			
		-- Insert Address in DB
		BEGIN
			--IF EXISTS(SELECT 1 FROM Persons WHERE (WAppUserId = @WAppUserId AND AddressId IS NULL))
			/*IF NOT EXISTS(SELECT 1 FROM WAppUsers INNER JOIN
                      Persons_Addresses ON WAppUsers.PersonId = Persons_Addresses.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
                      WHERE Persons_Addresses.PersonId = @LPId AND Persons_Addresses.Destination = 1)
             */
			IF NOT EXISTS(SELECT 1 FROM Persons INNER JOIN
                      Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
                      WHERE Persons_Addresses.PersonId = @LPId AND Persons_Addresses.Destination = 1)
                      
				BEGIN
					INSERT INTO Addresses(CityId, AdministrativeRegionId, CountryId, StreetName, Destination) 
						VALUES(@CityID, @ProvinceID, 254, @AddressName, 1)
						
					SET @AddressID = SCOPE_IDENTITY()
					
					INSERT INTO [Persons_Addresses] ([PersonId],[AddressId] ,[Residence],[Destination])
						VALUES (@LPId, @AddressID, 0, 1)
					--UPDATE Persons SET AddressId = @AddressID WHERE (PersonId = @LPId)
				END
			ELSE
				BEGIN
					--SELECT @AddressID = AddressId FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser = 1)
					--SELECT @AddressID = Addresses.AddressId FROM Persons JOIN Addresses ON Persons.AddressId = Addresses.AddressId 
					--		WHERE (PersonId = @LPId AND Destination = 1)

			    	SELECT @AddressID = Persons_Addresses.AddressId FROM Persons INNER JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId INNER JOIN
							Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
							WHERE Persons_Addresses.PersonId = @LPId AND Persons_Addresses.Destination = 1 
							
					UPDATE Addresses SET CityId = @CityID, AdministrativeRegionId = @ProvinceID, 
									CountryId = 254, StreetName = @AddressName
									WHERE (AddressId = @AddressID)
									
				    	SELECT @AddressID = Persons_Addresses.AddressId FROM Persons INNER JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId INNER JOIN
							Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
							WHERE Persons_Addresses.PersonId = @LPId AND Persons_Addresses.Destination = 1 
							
				END
		END

		-- Residence Address
			IF NOT EXISTS(SELECT 1 FROM Persons INNER JOIN
                      Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
                      WHERE Persons_Addresses.PersonId = @LPId AND Persons_Addresses.Residence = 1)
                      
				BEGIN
					INSERT INTO Addresses(CountryId) 
						VALUES (@CountryResidence)
						
					SET @AddressID = SCOPE_IDENTITY()
					
					INSERT INTO [Persons_Addresses] ([PersonId],[AddressId] ,[Residence],[Destination])
						VALUES (@LPId, @AddressID, 1, 0)
					
				END
			ELSE
				BEGIN
					--SELECT @AddressID = AddressId FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser = 1)
					--SELECT @AddressID = Addresses.AddressId FROM Persons INNER JOIN
					--		Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId INNER JOIN
					--		Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
     --                 WHERE Persons_Addresses.PersonId = @LPId AND Persons_Addresses.Residence = 1
					
					SELECT @CountryIdResidence = CountryId, @AddressID = Addresses.AddressId FROM Persons INNER JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId INNER JOIN
							Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
							WHERE Persons_Addresses.PersonId = @LPId AND Persons_Addresses.Residence = 1 
			
					IF (@CountryIdResidence <> @CountryResidence)
						BEGIN
							UPDATE [dbo].[Addresses]
							   SET [CityId] = null ,[PostalCodeId] = null ,[AdministrativeRegionId] = null ,[CountryId] = @CountryResidence ,[StreetNumber] = null
								  ,[StreetPreDirection] = null ,[StreetName] = null ,[StreetNom] = null ,[StreetType] = null
								  ,[StreetPostDirection] = null ,[UnitType] = null ,[UnitNumber] = null ,[Residence] = 1 ,[Destination] = 0
							 WHERE (AddressId = @AddressID)
						END

							
				END
		
		-- WTripInfoUSA
		BEGIN
			IF NOT EXISTS(SELECT 1 FROM WTripInfoUSA WHERE (WAppUserId = @WAppUserId))
				BEGIN
					INSERT INTO WTripInfoUSA(WAppUserId, NoFamMembers, CountryResidence, ContriesVisited, CountriesVisited2, TransportationId,
							TripPPurposeBusiness, BringFruits, BringMeats, BringDiseaseAgents, BringSoil, Livestock,
							CurrencyValue, CommercialMerchandise, RGoodsValue, VGoodsValue, TripDate)
						VALUES(@WAppUserId, @NoFamMembers, @CountryResidence, @ContriesVisited, @ContriesVisited2 ,@TransportationId,
								@TripPPurposeBusiness, @BringFruits, @BringMeats, @BringDiseaseAgents, @BringSoil, 
								@Livestock, @CurrencyValue, @CommercialMerchandise, @RGoodsValue, @VGoodsValue, @TripDate)
					
					SELECT @WTripInfoUSAId = SCOPE_IDENTITY()
				END
			ELSE
				BEGIN
					SELECT @WTripInfoUSAId = WTripInfoUSAId FROM WTripInfoUSA WHERE (WAppUserId = @WAppUserId)
					
					UPDATE WTripInfoUSA
							SET NoFamMembers = @NoFamMembers, CountryResidence = @CountryResidence, 
								ContriesVisited = @ContriesVisited, CountriesVisited2 =@ContriesVisited2, TransportationId = @TransportationId,
								TripPPurposeBusiness = @TripPPurposeBusiness, BringFruits = @BringFruits, 
								BringMeats = @BringMeats, BringDiseaseAgents = @BringDiseaseAgents, 
								BringSoil = @BringSoil, Livestock = @Livestock, CurrencyValue = @CurrencyValue, 
								CommercialMerchandise = @CommercialMerchandise, RGoodsValue = @RGoodsValue, 
								VGoodsValue = @VGoodsValue, TripDate = @TripDate
						WHERE (WTripInfoUSAId = @WTripInfoUSAId)
				END
		END
END


GO
/****** Object:  StoredProcedure [dbo].[USAForm_Add_Person]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Dragos Barbu>
-- Create date: <09/17/2012 19:30>
-- Modified: <10/11/2012 08:58>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USAForm_Add_Person]
(
	@WAppUserId			  bigint		= NULL,
	@PId			      bigint		= NULL,	
	@LastName			  nvarchar(50),
	@FirstName			  nvarchar(50),
	@MiddleName			  nvarchar(50)	= NULL,
	@DoB				  date			= NULL,
	@CountryPassport	  smallint,
	@PassportIssueAuthority		  nvarchar(50)	= NULL,
	@PassportNo			  nvarchar(50),
	@TripInfoDetail1	  nvarchar(150) = NULL,
	@TripInfoDetailValue1 smallmoney	= NULL,
	@TripInfoDetail2	  nvarchar(150) = NULL,
	@TripInfoDetailValue2 smallmoney	= NULL,
	@TripInfoDetail3	  nvarchar(150) = NULL,
	@TripInfoDetailValue3 smallmoney	= NULL,
	@TripInfoDetail4	  nvarchar(150) = NULL,
	@TripInfoDetailValue4 smallmoney	= NULL,
	@TripInfoDetail5	  nvarchar(150) = NULL,
	@TripInfoDetailValue5 smallmoney	= NULL,
	@TripInfoDetail6	  nvarchar(150) = NULL,
	@TripInfoDetailValue6 smallmoney	= NULL,
	
	@WTripInfoUSAId		  bigint		= NULL
)
AS
BEGIN
	SET NOCOUNT ON;
	
		DECLARE @LPId bigint = NULL, @LWTripInfoUSAId bigint = 0
		
		IF ISNULL(@WTripInfoUSAId,0) = 0 
			BEGIN
				INSERT INTO WTripInfoUSA(WAppUserId) VALUES (@WAppUserId) 
				SET @LWTripInfoUSAId = SCOPE_IDENTITY()	
			END
		ELSE
			SET @LWTripInfoUSAId = @WTripInfoUSAId

		-- PERSON
		
		IF (ISNULL(@PId,0) <> 0)
			BEGIN
				UPDATE Persons 
						SET FirstName = ISNULL(@FirstName,''), MiddleName = ISNULL(@MiddleName,''), LastName = ISNULL(@LastName,''), 
						DateofBirth = @DoB
						WHERE PersonId = @PId	
					--WHERE ((WAppUserId = @WAppUserId) AND (WAppUser = 1))
					
				--SELECT top 1 @PersonID = PersonId FROM Persons WHERE ((WAppUserId = @WAppUserId) AND (WAppUser = 1))
				SET @LPId = @PId
			END	
		ELSE
		 BEGIN
			INSERT INTO Persons (FirstName, LastName, WAppUserId, WAppUser, PrintForm) VALUES ('', '', @WAppUserId, 0, 1); 
			SET @LPId = SCOPE_IDENTITY()
		 END		
	
		-- PASSPORT
		BEGIN
			IF NOT EXISTS(SELECT 1 FROM Passports WHERE (PersonId = @LPId))
				BEGIN
					INSERT INTO Passports(PersonId, PassportNo, PassportIssueAuthority, CountryId)
						VALUES(@LPId, @PassportNo, @PassportIssueAuthority, @CountryPassport)
				END
			ELSE
				BEGIN
					UPDATE Passports
							SET PassportNo = @PassportNo, PassportIssueAuthority = @PassportIssueAuthority, 
								CountryId = @CountryPassport
						WHERE (PersonId = @LPId)
				END
		END
		
		DECLARE @WTripInfoUSADetailsPId bigint = NULL
		-- perf ? replace with delete/insert
		-- First detail
		--IF @TripInfoDetail1 IS NOT NULL
		
		DELETE FROM WTripInfoUSADetailsP WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId))

		INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
			VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail1, @TripInfoDetailValue1)

		INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
			VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail2, @TripInfoDetailValue2)

		INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
			VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail3, @TripInfoDetailValue3)
			
		INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
			VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail4, @TripInfoDetailValue4)

		INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
			VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail5, @TripInfoDetailValue5)

		INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
			VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail6, @TripInfoDetailValue6)

		/*
			BEGIN
				IF NOT EXISTS(SELECT 1 FROM WTripInfoUSADetailsP WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId)))
					BEGIN
						INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
							VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail1, @TripInfoDetailValue1)
							
							SELECT WTripInfoUSADetailsPId = SCOPE_IDENTITY()
					END
				ELSE
					BEGIN
						SELECT TOP 1 @WTripInfoUSADetailsPId = WTripInfoUSADetailsPId
							FROM WTripInfoUSADetailsP
								WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId))
								 
						UPDATE WTripInfoUSADetailsP
								SET WTripInfoDetail = @TripInfoDetail1, WTripInfoDetailValue = @TripInfoDetailValue1
							WHERE (WTripInfoUSADetailsPId = @WTripInfoUSADetailsPId)
					END
			END
		
		-- Second detail
		--IF @TripInfoDetail2 IS NOT NULL
			BEGIN
				IF NOT EXISTS(SELECT 1 FROM WTripInfoUSADetailsP WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId) AND (WTripInfoUSADetailsPId > @WTripInfoUSADetailsPId)))
					BEGIN
						INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
							VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail2, @TripInfoDetailValue2)
					END
				ELSE
					BEGIN
						SELECT TOP 1 @WTripInfoUSADetailsPId = WTripInfoUSADetailsPId
							FROM WTripInfoUSADetailsP
								WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId) AND (WTripInfoUSADetailsPId > @WTripInfoUSADetailsPId))
								 
						UPDATE WTripInfoUSADetailsP
								SET WTripInfoDetail = @TripInfoDetail2, WTripInfoDetailValue = @TripInfoDetailValue2
							WHERE (WTripInfoUSADetailsPId = @WTripInfoUSADetailsPId)
					END
			END
			
		-- Third detail
		--IF @TripInfoDetail3 IS NOT NULL
			BEGIN
				IF NOT EXISTS(SELECT 1 FROM WTripInfoUSADetailsP WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId) AND (WTripInfoUSADetailsPId > @WTripInfoUSADetailsPId)))
					BEGIN
						INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
							VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail3, @TripInfoDetailValue3)
					END
				ELSE
					BEGIN
						SELECT TOP 1 @WTripInfoUSADetailsPId = WTripInfoUSADetailsPId
							FROM WTripInfoUSADetailsP
								WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId) AND (WTripInfoUSADetailsPId > @WTripInfoUSADetailsPId))
								 
						UPDATE WTripInfoUSADetailsP
								SET WTripInfoDetail = @TripInfoDetail3, WTripInfoDetailValue = @TripInfoDetailValue3
							WHERE (WTripInfoUSADetailsPId = @WTripInfoUSADetailsPId)
					END
			END
		
		-- Fourth detail
		--IF @TripInfoDetail4 IS NOT NULL
			BEGIN
				IF NOT EXISTS(SELECT 1 FROM WTripInfoUSADetailsP WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId) AND (WTripInfoUSADetailsPId > @WTripInfoUSADetailsPId)))
					BEGIN
						INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
							VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail4, @TripInfoDetailValue4)
					END
				ELSE
					BEGIN
						SELECT TOP 1 @WTripInfoUSADetailsPId = WTripInfoUSADetailsPId
							FROM WTripInfoUSADetailsP
								WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId) AND (WTripInfoUSADetailsPId > @WTripInfoUSADetailsPId))
								 
						UPDATE WTripInfoUSADetailsP
								SET WTripInfoDetail = @TripInfoDetail4, WTripInfoDetailValue = @TripInfoDetailValue4
							WHERE (WTripInfoUSADetailsPId = @WTripInfoUSADetailsPId)
					END
			END
		
		-- Fifth detail
		--IF @TripInfoDetail5 IS NOT NULL
			BEGIN
				IF NOT EXISTS(SELECT 1 FROM WTripInfoUSADetailsP WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId) AND (WTripInfoUSADetailsPId > @WTripInfoUSADetailsPId)))
					BEGIN
						INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
							VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail5, @TripInfoDetailValue5)
					END
				ELSE
					BEGIN
						SELECT TOP 1 @WTripInfoUSADetailsPId = WTripInfoUSADetailsPId
							FROM WTripInfoUSADetailsP
								WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId) AND (WTripInfoUSADetailsPId > @WTripInfoUSADetailsPId))
								 
						UPDATE WTripInfoUSADetailsP
								SET WTripInfoDetail = @TripInfoDetail5, WTripInfoDetailValue = @TripInfoDetailValue5
							WHERE (WTripInfoUSADetailsPId = @WTripInfoUSADetailsPId)
					END
			END
		
		-- Sixth detail
		IF @TripInfoDetail6 IS NOT NULL
			BEGIN
				IF NOT EXISTS(SELECT 1 FROM WTripInfoUSADetailsP WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId) AND (WTripInfoUSADetailsPId > @WTripInfoUSADetailsPId)))
					BEGIN
						INSERT INTO WTripInfoUSADetailsP(WTripInfoUSAId, PersonId, WTripInfoDetail, WTripInfoDetailValue)
							VALUES(@LWTripInfoUSAId, @LPId, @TripInfoDetail6, @TripInfoDetailValue6)
					END
				ELSE
					BEGIN
						SELECT TOP 1 @WTripInfoUSADetailsPId = WTripInfoUSADetailsPId
							FROM WTripInfoUSADetailsP
								WHERE ((PersonId = @LPId) AND (WTripInfoUSAId = @LWTripInfoUSAId) AND (WTripInfoUSADetailsPId > @WTripInfoUSADetailsPId))
								 
						UPDATE WTripInfoUSADetailsP
								SET WTripInfoDetail = @TripInfoDetail6, WTripInfoDetailValue = @TripInfoDetailValue6
							WHERE (WTripInfoUSADetailsPId = @WTripInfoUSADetailsPId)
					END
			END
			*/
END


GO
/****** Object:  StoredProcedure [dbo].[USAForm_Get]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Dragos Barbu>
-- Create date: <10/05/2012 13:07>
-- Modified: <10/11/2012 10:05>
-- =============================================
CREATE PROCEDURE [dbo].[USAForm_Get] 
(
	@WAppUserId		bigint = NULL,
	@PGId			bigint = NULL,
	@CountryIdRes	smallint OUT
)
AS
BEGIN
	
	SET NOCOUNT ON;


	  --Prepare Persons
	DECLARE @NoP tinyint = 1, @NoAP tinyint =0, @PId bigint
	DECLARE @NPLAddressId bigint

    IF ISNULL(@PGId,0) = 0
		BEGIN
			SELECT @NoAP = COUNT(1) FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser =0)
			WHILE (@NoAP < @NoP)
				BEGIN
					INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId, PrintForm) VALUES ('', '', 0, @WAppUserId,1);	
					SET @NoAP = @NoAP + 1				
				END
		
			SELECT TOP 1 @PId = PersonId FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser =0) ORDER BY PersonId

			--Get the user info and put on Persons, so the user record will not be updated
			--DECLARE @USal nvarchar(6), @UTitle nvarchar(15), @UFName nvarchar(50), @UMName nvarchar(50), @ULName nvarchar(50) 
			--DECLARE @USuffix nvarchar(10), @UDoB date, @UCivilStatusId tinyint, @UGenderId tinyint, @UCitizenship nvarchar(50)
			--DECLARE @UAddressId bigint, @UWAppUserId bigint,  @UPId bigint
			
			--SELECT   @USal= [Salutation] , @UTitle = [Title], @UFName = [FirstName], @UMName = [MiddleName] 
			--		,@ULName = [LastName], @USuffix = [Suffix], @UDoB = [DateofBirth], @UCivilStatusId = [CivilStatusId]
			--		,@UGenderId=[GenderId], @UCitizenship = [Citizenship]
			--		FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser =1)
					
			
			--UPDATE [Persons]
			-- SET   [Salutation] = @USal, [Title] = @UTitle, [FirstName] = @UFName ,[MiddleName] = @UMName
			--	  ,[LastName] = @ULName , [Suffix] = @USuffix ,[DateofBirth] = @UDoB ,[CivilStatusId] = @UCivilStatusId
			--	  ,[GenderId] = @UGenderId ,[Citizenship] = @UCitizenship 
			--	  ,[WAppUserId] = @WAppUserId 
			--  WHERE PersonId = @PId	
			  
			 --temp table ? redundant
			 --UPDATE [Persons] SET PrintForm = 0 WHERE (WAppUserId = @WAppUserId) 	  
			 --UPDATE [Persons] SET PrintForm = 1 WHERE (PersonId = @PId)
		END     
	ELSE
		BEGIN
			--SELECT TOP 1 @PId = PersonId FROM Persons WHERE (WAppUserId = @WAppUserId AND WAppUser =0) ORDER BY PersonId
			SET @PId = @PGId
			--UPDATE [Persons] SET PrintForm = 0 WHERE (WAppUserId = @WAppUserId) 	  
			--UPDATE [Persons] SET PrintForm = 1 WHERE (WAppUserId = @WAppUserId AND WAppUser =0)
		END
	
    -- Get Persons Lists
		DECLARE @AddressID bigint, @CityID bigint, @CountryID smallint, @PostalCodeId bigint, @AdminRegionId int, @WTripInfoUSAId bigint
		BEGIN
			SELECT Persons.PersonId, LastName, FirstName, MiddleName, DateofBirth, PassportNo, PassportIssueAuthority, CountryId
				FROM Persons 
					LEFT JOIN Passports ON Persons.PersonId = Passports.PersonId
					WHERE Persons.PersonId = @PId
		
			--SELECT @AddressID = Persons.AddressId FROM Persons JOIN Addresses ON Persons.AddressId = Addresses.AddressId
			--		WHERE PersonId = @PId AND Destination = 1
			SELECT @AddressID = Persons_Addresses.AddressId FROM  Persons_Addresses INNER JOIN
                      Persons ON Persons_Addresses.PersonId = Persons.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
					  WHERE (Persons_Addresses.PersonId = @PId AND Persons_Addresses.Destination = 1)			
			
			SELECT @NPLAddressId = AddressId FROM WAppUsers WHERE WAppUserId = @WAppUserId
			
			--Add address from users
			IF (ISNULL(@AddressID,0) = 0 AND ISNULL(@NPLAddressId,0) <> 0)
			BEGIN	
			
				INSERT INTO [Addresses]([CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
						,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
						,[StreetPostDirection] ,[UnitType] ,[UnitNumber] )
				SELECT [CityId] ,[PostalCodeId] ,[AdministrativeRegionId] ,[CountryId]
						,[StreetNumber] ,[StreetPreDirection] ,[StreetName] ,[StreetNom] ,[StreetType] 
						,[StreetPostDirection] ,[UnitType] ,[UnitNumber] 
				FROM [Addresses]  WHERE AddressId = @NPLAddressId
				
				SET @NPLAddressId = SCOPE_IDENTITY()
				
				INSERT INTO [Persons_Addresses] ([PersonId],[AddressId] ,[Residence],[Destination])
							VALUES (@PId, @NPLAddressId, 0, 1)
				
				--UPDATE Persons SET AddressId = @NPLAddressId WHERE PersonId = @PId
				SET @AddressID = @NPLAddressId
				
			END
		END
		
		BEGIN
		--select ResidenceCountry
			SELECT @CountryIdRes = ISNULL(Addresses.CountryId,0) 
				FROM  Persons_Addresses INNER JOIN
                      Persons ON Persons_Addresses.PersonId = Persons.PersonId INNER JOIN
                      Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
				WHERE (Persons_Addresses.PersonId = @PId AND Persons_Addresses.Residence = 1)			
				SELECT @CountryIdRes = ISNULL(@CountryIdRes,0)
		--check if USA address 
		-- @CityID int, @CountryID smallint, @PostalCodeId int, @AdminRegionId int,
		SELECT @CityID= [CityId] , @PostalCodeId = [PostalCodeId] ,@AdminRegionId = [AdministrativeRegionId]
        ,@CountryID  = [CountryId]   FROM [Addresses] WHERE (Addresses.AddressId = @AddressID)
		
		---IF ISNULL(@CountryID,0) <> 254
		---BEGIN 
			IF NOT EXISTS(SELECT 1 FROM AdministrativeRegions 
				WHERE AdministrativeRegionId = @AdminRegionId AND CountryId = 254)
				UPDATE Addresses SET AdministrativeRegionId = NULL WHERE Addresses.AddressId = @AddressID
		--END
		
			SELECT StreetName, Cities.City, Addresses.AdministrativeRegionId AS AdminRegionID
				FROM Addresses 
					LEFT JOIN Cities ON Addresses.CityId = Cities.CityId
				WHERE (Addresses.AddressId = @AddressID)
				
			SELECT * FROM WTripInfoUSA WHERE (WAppUserId = @WAppUserId)
			
			SELECT @WTripInfoUSAId = WTripInfoUSAId FROM WTripInfoUSA WHERE (WAppUserId = @WAppUserId)
			
			SELECT * FROM WTripInfoUSADetailsP WHERE (WTripInfoUSAId = @WTripInfoUSAId)
			
			SELECT SUM(ISNULL(WTripInfoDetailValue,0)) TotalTripInfoValue FROM WTripInfoUSADetailsP WHERE (WTripInfoUSAId = @WTripInfoUSAId)
			GROUP BY WTripInfoUSAId
			
		END
END


GO
/****** Object:  StoredProcedure [dbo].[UserData_Delete]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UserData_Delete]
	-- Add the parameters for the stored procedure here
	@WUId bigint, 
	@Action	tinyint,
	@NoSignUp bit = 0, 
	@NotKeepData bit = 0 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- delete DOB, Citizenship from Persons
	-- delete Addresses
	-- delete Passports
	SET NOCOUNT ON;

	
	DECLARE @lPId bigint = -1, @lAdrId int =-1, @lPassp int =-1
	DECLARE @TblName nvarchar(128), @TTD_ID smallint, @SQLStm varchar(max), @SQLStmt varchar(max)
	DECLARE @LOR bit
	
	SELECT @LOR = @NoSignUp | @NotKeepData
	
	-- delete at log out
	IF ISNULL(@Action,0) = 0
		BEGIN
			IF NOT EXISTS(SELECT 1 FROM UserDataDelete WHERE WAppUserId=@WUId)	
				INSERT INTO UserDataDelete (WAppUserId) VALUES (@WUId)
			ELSE	
				UPDATE UserDataDelete SET TableDeleted = NULL WHERE WAppUserId=@WUId		
		
			DECLARE ttd_cursor CURSOR FAST_FORWARD FOR 
				SELECT [TableToDelete],[SQLSt]
				FROM [TablesToDelete]
				WHERE ([NoSignUp] = @NoSignUp OR [NotKeepData] = @NotKeepData) AND (1 = @LOR)
		END
		--checking 
		
	ELSE IF ISNULL(@Action,0) = 1
		BEGIN
			
			SELECT @TblName = TableDeleted FROM UserDataDelete WHERE WAppUserId=@WUId	
			IF LEN(ISNULL(@TblName,'')) > 0 
				SELECT @TTD_ID = TableToDeleteId FROM TablesToDelete WHERE UPPER(TableToDelete) = UPPER(@TblName)
			ELSE
				SELECT @TTD_ID = 0
			
			DECLARE ttd_cursor CURSOR FAST_FORWARD FOR 
				SELECT [TableToDelete],[SQLSt]
				FROM [TablesToDelete]
				WHERE ([NoSignUp] = @NoSignUp OR [NotKeepData] = @NotKeepData)
					AND (TableToDeleteId > @TTD_ID) AND (1 = @LOR)
			
		END

		BEGIN
			
			SET @TblName = ''
			OPEN ttd_cursor
				FETCH NEXT FROM ttd_cursor INTO @TblName, @SQLStm 
				WHILE @@FETCH_STATUS = 0
					BEGIN 
						
						SELECT  @SQLStmt = REPLACE (@SQLStm, '<WUId>', CAST(@WUId AS nvarchar))
						
							EXEC (@SQLStmt)
						
							IF @@ERROR <> 0 BREAK
						
							UPDATE UserDataDelete SET TableDeleted = @TblName WHERE WAppUserId = @WUId
						
						FETCH NEXT FROM ttd_cursor INTO @TblName, @SQLStm
					END
			
			CLOSE ttd_cursor
			DEALLOCATE ttd_cursor
				
		/*
			IF ISNULL(@PId,0) = 0
				SELECT @lPId = PersonId FROM WAppUsers WHERE WAppUserId = @WUId
			ELSE 
				SET @lPId = @PId
			
			IF ISNULL(@PId,0) = 0
				RETURN 	
		*/
				
			/*	
			SELECT @lAdrId = AddressId 	FROM Persons WHERE PersonId = @lPId
				
			--update Persons	
			UPDATE Persons SET AddressId = NULL, DateofBirth = NULL, Citizenship = NULL WHERE WAppUserId = @WUId
			
			UPDATE UserDataDelete SET TableDeleted = 'Persons' WHERE WAppUserId = @WUId
			
			-- delete Addresses
			DELETE FROM Addresses WHERE AddressId = @lAdrId
			
			UPDATE UserDataDelete SET TableDeleted = 'Addresses' WHERE WAppUserId = @WUId
			
			-- delete Passports
			DELETE FROM Passports WHERE PersonId IN (SELECT PersonId FROM Persons WHERE WAppUserId = @WUId)
			
			UPDATE UserDataDelete SET TableDeleted = 'Passports' WHERE WAppUserId = @WUId
			*/
			
		END
END


GO
/****** Object:  StoredProcedure [dbo].[WAppsNoUser_Add]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WAppsNoUser_Add]
AS
BEGIN
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @PId bigint , @UId bigint, @ULName nvarchar(50)
	
		INSERT INTO WAppUsers(WAppUserName, WAppUserPwd, WAppUserEmail, PersonId, NoSignUp)
			VALUES ('', '', '','',1);
		SET @UId=SCOPE_IDENTITY();
		SET @ULName = '';
		--'CDPW' + CAST(@UId as nvarchar);
	
		INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId) VALUES ('', @ULName, 1, @UId); 
		SET @PId=SCOPE_IDENTITY();
	
	
		UPDATE WAppUsers SET WAppUserName= @ULName, PersonId = @PId WHERE WAppUserId = @UId
		
		SELECT     WAppUsers.WAppUserId, Persons.PersonId, WAppUsers.WAppUserName, WAppUsers.WAppUserPwd, WAppUsers.WAppUserEmail, 
                      WAppUsers.WAppUserAltEmail, Persons.FirstName, Persons.MiddleName, Persons.LastName
		FROM         WAppUsers INNER JOIN Persons ON WAppUsers.PersonId = Persons.PersonId
		WHERE WAppUsers.WAppUserId = @UId
		


END


GO
/****** Object:  StoredProcedure [dbo].[WAppsUser_Add]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Dragos Barbu>
-- Create date: <09/04/2012 11:00>
-- Modified: <10/02/2012 15:50>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WAppsUser_Add]
(
	@Action	tinyint,
	@UserName	nvarchar(50) = NULL,
	@UserEmail	nvarchar(50) = NULL,
	@UserPasswd	nvarchar(50) = NULL,
	@NoSignup	bit = NULL,
	@UserId		int = NULL,
	@Passphrase nvarchar(256) = NULL
)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @PId bigint
	
	IF @Action = 0
		-- Checking if username exists
		SELECT WAppUserName FROM WAppUsers 
			WHERE WAppUserName = @UserName AND LEN(ISNULL(@UserName,'')) > 0
			--WHERE (WAppUserName = ISNULL(@UserName, WAppUserName)) 
		
	ELSE IF @Action = 1
		-- Checking if email exists
		--SELECT WAppUserEmail FROM WAppUsers WHERE WAppUserEmail = @UserEmail
		SELECT  WAppUserEmail, FirstName, WAppUserName, BeginDate FROM WAppUsers RIGHT OUTER JOIN
                      Persons ON Persons.PersonId = WAppUsers.PersonId WHERE WAppUserEmail = @UserEmail
		
	ELSE IF @Action = 2 
		BEGIN
			-- Add user
			INSERT INTO Persons (FirstName, LastName, WAppUser) VALUES ('', '', 1); 
			SET @PId=SCOPE_IDENTITY();
			
			INSERT INTO WAppUsers(WAppUserName, WAppUserPwd, WAppUserEmail, PersonId)
				VALUES (@UserName, @UserPasswd, @UserEmail,@PId);
			SELECT @UserId = SCOPE_IDENTITY()
				
			UPDATE Persons SET WAppUserId = @UserId WHERE (PersonId = @PId)
			--INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId) VALUES ('', '', 0, @UserId);
			--INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId) VALUES ('', '', 0, @UserId);
			--INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId) VALUES ('', '', 0, @UserId);
			--INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId) VALUES ('', '', 0, @UserId);
		END
			
	ELSE IF @Action = 3
		-- Activate user
		UPDATE WAppUsers SET BeginDate = GETDATE()
			WHERE (WAppUserEmail = @UserEmail AND WAppUserId = @UserId)
	
END




GO
/****** Object:  StoredProcedure [dbo].[WAppsUser_Login]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Dragos Barbu>
-- Create date: <09/06/2012 21:00>
-- Create date: <10/28/2012 06:06>
-- =============================================
CREATE PROCEDURE [dbo].[WAppsUser_Login]
(
	@Action	tinyint,
	@UserName	nvarchar(50) = NULL,
	@UserEmail	nvarchar(50) = NULL,
	@UserPasswd	nvarchar(50) = NULL,
	@UserId		bigint  = NULL,
	@Passphrase nvarchar(256) = NULL
)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @PId bigint;

	DECLARE @lUserPasswd varbinary(max) = CAST(ISNULL(@UserPasswd,'') AS varbinary);
	
	IF @Action = 0
		-- Recover password
		SELECT WAppUserEmail FROM WAppUsers 
			WHERE ((WAppUserName = ISNULL(@UserName, WAppUserName)) 
						OR (WAppUserEmail = ISNULL(@UserName, WAppUserEmail)))
					AND (BeginDate IS NOT NULL)
		
	ELSE IF @Action = 1
		-- Activate user
		BEGIN
			UPDATE WAppUsers SET BeginDate = GETDATE()
				WHERE (WAppUserEmail = @UserEmail )
				--AND WAppUserId = @UserId)

			INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId, PrintForm) VALUES ('', '', 0, @UserId,1);
			INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId, PrintForm) VALUES ('', '', 0, @UserId,1);
			INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId, PrintForm) VALUES ('', '', 0, @UserId,1);
			INSERT INTO Persons (FirstName, LastName, WAppUser, WAppUserId, PrintForm) VALUES ('', '', 0, @UserId,1);
		END
			
	ELSE IF @Action = 2
		-- Reset password
		UPDATE WAppUsers SET WAppUserPwd = @UserPasswd
			WHERE (WAppUserEmail = @UserEmail)
			
	ELSE
	BEGIN
		-- Checking if user is activated
		SELECT WAppUserName FROM WAppUsers 
			WHERE (((WAppUserName = ISNULL(@UserName, WAppUserName)) 
						OR (WAppUserEmail = ISNULL(@UserName, WAppUserEmail)))
					AND (BeginDate IS NULL))
		
		-- Checking if user exists
		SELECT WAppUserName FROM WAppUsers 
			WHERE ((WAppUserName = ISNULL(@UserName, WAppUserName)) 
						OR (WAppUserEmail = ISNULL(@UserName, WAppUserEmail)))
					
		SELECT WAppUserId, PersonId, WAppUserName, WAppUserPwd, WAppUserEmail, NoSignUp, WAppUserAltEmail, NotKeepData
			FROM WAppUsers 
			WHERE (((WAppUserName = ISNULL(@UserName, WAppUserName)) 
						OR (WAppUserEmail = ISNULL(@UserName, WAppUserEmail)))
					--AND (WAppUserPwd = @UserPasswd) AND (BeginDate IS NOT NULL))
					AND (CAST(WAppUserPwd as varbinary) = @lUserPasswd) AND (BeginDate IS NOT NULL))
					
					
		SELECT @UserId = WAppUserId, @PId = PersonId 
			FROM WAppUsers 
			WHERE (((WAppUserName = ISNULL(@UserName, WAppUserName)) 
						OR (WAppUserEmail = ISNULL(@UserName, WAppUserEmail)))
					--AND (WAppUserPwd = @UserPasswd) AND (BeginDate IS NOT NULL))
						AND(CAST(WAppUserPwd as varbinary) = @lUserPasswd) AND (BeginDate IS NOT NULL))
					
		
		SELECT  dbo.PLicensesTypes.PLicensesType, dbo.Enrollments.EnrollmentId AS EnrollmentId,  dbo.Enrollments.BeginDate AS EnrollmentBeginDate, 
				dbo.Enrollments.EndDate AS EnrollmentEndDate, PLicensesTypes.PLicensesTypeId
			FROM dbo.Enrollments 
				INNER JOIN dbo.PLicensesTypes ON dbo.Enrollments.PLicensesTypeId = dbo.PLicensesTypes.PLicensesTypeId
			WHERE (((PLicensesTypes.EndDate IS NULL) AND (Enrollments.EndDate IS NULL)) AND (Enrollments.WAppUserId = @UserId))
			
		SELECT FirstName, MiddleName, LastName FROM Persons WHERE PersonId = @PId	
	END
			
END


GO
/****** Object:  UserDefinedFunction [dbo].[Get_US_FlightInfo2]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Get_US_FlightInfo2](@WAppUserId bigint)
returns @UsFlightInfo2 table
(
	WTripInfoUSAId bigint not null,
	WTripInfoDetail nvarchar(150) null,
	WTripInfoDetailValue smallmoney null
)
as
begin
	insert @UsFlightInfo2 
	select a.WTripInfoUSAId, 
	isnull(SUBSTRING(a.WTripInfoDetail,1,37),'') as WTripInfoDetail, 
	--SUBSTRING(isnull(a.WTripInfoDetail,'                                        '),1,37) as WTripInfoDetail, 
	a.WTripInfoDetailValue
	from dbo.WTripInfoUSADetailsP a
	inner join dbo.WTripInfoUSA b on a.WTripInfoUSAId = b.WTripInfoUSAId
	where b.WAppUserId = @WAppUserId
	
	declare @NrRec int
		
	select @NrRec = COUNT(*) from @UsFlightInfo2
	
	while @NrRec < 6
	begin
		insert @UsFlightInfo2
		select WTripInfoUSAId, '' as WTripInfoDetail, null as WTripInfoDetailValue 
		from dbo.WTripInfoUSA 
		where WAppUserId = @WAppUserId
		
		set @NrRec = @NrRec + 1
	end
	
	return 
end

GO
/****** Object:  UserDefinedFunction [dbo].[WTripInfoCAN_DurationOfStay]    Script Date: 7/2/2015 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[WTripInfoCAN_DurationOfStay]
(
	-- Add the parameters for the function here
	@WAppUserId BIGINT
)
RETURNS VARCHAR
AS
BEGIN
	-- Declare the return variable here

	DECLARE @DurationOfStay VARCHAR

	SELECT @DurationOfStay = COALESCE(CAST([DurationOfStay] As varchar), ' ')
	FROM dbo.WAppUsers
	INNER JOIN dbo.Persons ON WAppUsers.WAppUserId = Persons.WAppUserId 
	LEFT JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId
	LEFT JOIN dbo.WTripInfoCAN on Persons.WAppUserId = WTripInfoCAN.WAppUserId
	WHERE Persons.WAppUser = 0 AND  Persons.PrintForm = 1
	AND Persons_Addresses.Residence = 1 AND WTripInfoCAN.WAppUserId = @WAppUserId

	RETURN @DurationOfStay

END

GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 7/2/2015 9:35:18 AM ******/
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
/****** Object:  Table [dbo].[AdministrativeRegions]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Airlines]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Airports]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Cities]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[CivilStatus]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Countries]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Enrollments]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Enrollments_Offers]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Flights]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Gender]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Groups]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Offers]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Passports]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Persons]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Persons_Addresses]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Persons_Flights]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[PLicensesTypes]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[PostalCodes]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[TablesToDelete]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[TravelClasses]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[UserDataDelete]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[Users_Groups]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WAppUsers]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WArrivingBy]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WArrivingFrom]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WCountryTripInfoDetails]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WPersonsTripInfoDetails]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WTripInfo]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WTripInfoCAN]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WTripInfoCANDetailsP]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WTripInfoDetails]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WTripInfoUSA]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WTripInfoUSADetailsP]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  Table [dbo].[WTripPurpose]    Script Date: 7/2/2015 9:35:19 AM ******/
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
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_Goods1]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Get_CAN_Goods1](@WTripInfoCANId bigint)
returns table
as
return
(
	SELECT a.PersonId, a.DateLeftCanada, a.ValueGoods
	from
	(SELECT TOP 2 WTripInfoCANDetailsP.PersonId, isnull(CONVERT(char(6), WTripInfoCANDetailsP.DateLeftCanada, 12),'      ') AS DateLeftCanada, 
	--REPLICATE(' ', 6 - LEN(CAST(CEILING(isnull(WTripInfoCANDetailsP.ValueGoods,0)) AS int))) + CAST(CAST(CEILING(isnull(WTripInfoCANDetailsP.ValueGoods,0)) AS int) AS varchar(6)) AS ValueGoods
	--REPLICATE(' ', 6 - LEN(COALESCE(CAST(CAST(CEILING((WTripInfoCANDetailsP.ValueGoods)) AS INT) AS VARCHAR), ' ')) 
	--REPLICATE(' ', 6 - LEN(COALESCE(CAST(CEILING((WTripInfoCANDetailsP.ValueGoods)) AS INT) , ' ')) 
	--+ COALESCE(CAST(CEILING((WTripInfoCANDetailsP.ValueGoods)) AS INT) , ' ')) AS ValueGoods
	REPLICATE(' ', 6 - LEN(CAST(CEILING(isnull(WTripInfoCANDetailsP.ValueGoods,0)) AS int)))
	+ COALESCE(CAST(CAST(CEILING((WTripInfoCANDetailsP.ValueGoods)) AS int) AS varchar(6)),' ') AS ValueGoods
	FROM dbo.WTripInfoCANDetailsP 
	INNER JOIN dbo.Persons ON WTripInfoCANDetailsP.PersonId = Persons.PersonId
	WHERE (Persons.PrintForm = 1) AND (WTripInfoCANDetailsP.WTripInfoCANId = @WTripInfoCANId) 
	ORDER BY WTripInfoCANDetailsP.PersonId) a
	
	--SELECT TOP 2 PersonId, CONVERT(char(6), DateLeftCanada, 12) AS DateLeftCanada, 
	--REPLICATE(' ', 6 - LEN(CAST(CEILING(ValueGoods) AS int))) + CAST(CAST(CEILING(ValueGoods) AS int) AS varchar(6)) AS ValueGoods
	--FROM dbo.WTripInfoCANDetailsP
	--WHERE WTripInfoCANDetailsP.WTripInfoCANId = @WTripInfoCANId
)

GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_Goods2]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Get_CAN_Goods2](@WTripInfoCANId bigint)
returns table
as
return
(
	SELECT a.PersonId, a.DateLeftCanada, a.ValueGoods
	from
	(SELECT TOP 2 WTripInfoCANDetailsP.PersonId, isnull(CONVERT(char(6), WTripInfoCANDetailsP.DateLeftCanada, 12),'      ') AS DateLeftCanada, 
	--REPLICATE(' ', 6 - LEN(CAST(CEILING(isnull(WTripInfoCANDetailsP.ValueGoods,0)) AS int))) + CAST(CAST(CEILING(isnull(WTripInfoCANDetailsP.ValueGoods,0)) AS int) AS varchar(6)) AS ValueGoods
	--REPLICATE(' ', 6 - LEN(COALESCE(CAST(CEILING((WTripInfoCANDetailsP.ValueGoods)) AS INT) , ' ')) 
	--+ COALESCE(CAST(CEILING((WTripInfoCANDetailsP.ValueGoods)) AS INT) , ' ')) AS ValueGoods
	REPLICATE(' ', 6 - LEN(CAST(CEILING(isnull(WTripInfoCANDetailsP.ValueGoods,0)) AS int)))
	+ COALESCE(CAST(CAST(CEILING((WTripInfoCANDetailsP.ValueGoods)) AS int) AS varchar(6)),' ') AS ValueGoods
	FROM dbo.WTripInfoCANDetailsP
	INNER JOIN dbo.Persons ON WTripInfoCANDetailsP.PersonId = Persons.PersonId
	WHERE (Persons.PrintForm = 1) AND (WTripInfoCANDetailsP.WTripInfoCANId = @WTripInfoCANId) 
	AND (WTripInfoCANDetailsP.PersonId NOT IN (SELECT PersonId FROM dbo.Get_CAN_Goods1(@WTripInfoCANId)))
	ORDER BY WTripInfoCANDetailsP.PersonId) a

)

GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_Goods2_3]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[Get_CAN_Goods2_3](@WTripInfoCANId bigint)
returns table
as
return
(
	SELECT a.PersonId, a.DateLeftCanada, a.ValueGoods
	from
	(SELECT TOP 2 WTripInfoCANDetailsP.PersonId, isnull(CONVERT(char(6), WTripInfoCANDetailsP.DateLeftCanada, 12),'      ') AS DateLeftCanada, 
	REPLICATE(' ', 6 - LEN(CAST(CEILING(isnull(WTripInfoCANDetailsP.ValueGoods,0)) AS int))) + CAST(CAST(CEILING(isnull(WTripInfoCANDetailsP.ValueGoods,0)) AS int) AS varchar(6)) AS ValueGoods
	FROM dbo.WTripInfoCANDetailsP
	INNER JOIN dbo.Persons ON WTripInfoCANDetailsP.PersonId = Persons.PersonId
	WHERE (Persons.PrintForm = 1) AND (WTripInfoCANDetailsP.WTripInfoCANId = @WTripInfoCANId) 
	AND (WTripInfoCANDetailsP.PersonId NOT IN (SELECT PersonId FROM dbo.Get_CAN_Goods1(@WTripInfoCANId)))
	ORDER BY WTripInfoCANDetailsP.PersonId) a

)


GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_FlightInfo]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[Get_CAN_FlightInfo](@WAppUserId bigint)
returns table
as
return
(
	SELECT DISTINCT 
	--SUBSTRING(Airlines.AirlineCode + ' ' + Flights.FlightNo + REPLICATE(' ', 9 - LEN(Airlines.AirlineCode) - LEN(Flights.FlightNo) - 1), 1, 9) AS AirLineFlightNo, 
	substring(isnull(cast(WTripInfoCAN.TransportationId as CHAR(100)),'         '),1,9) AS AirLineFlightNo, 
	WTripInfoCAN.WTripInfoCANId as AddressId, 
	--CASE WHEN Addresses.UnitType = 'Apartment' OR Addresses.UnitType = 'Suite' THEN CAST(Addresses.UnitNumber AS nvarchar(5)) + '-' + CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END ELSE CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END END AS Address, 
	isnull(Addresses.StreetName,' ') as Address,
	SUBSTRING(isnull(Cities.City,' '), 1, 10) + CASE WHEN LEN(isnull(Cities.City,' '))<10 THEN REPLICATE(' ', 10 - LEN(isnull(Cities.City,' '))) ELSE ' ' END AS City, 
	case when LEN(isnull(Countries.CountryName,' ')) > 9 
		then (Select CountryCodeA3_9 FROM Countries C Where C.CountryId = Addresses.CountryId)
		else SUBSTRING(isnull(Countries.CountryName,' ') + REPLICATE(' ', 9 - LEN(SUBSTRING(isnull(Countries.CountryName,' '),1,9))), 1, 9) end AS CountryName,
	
	SUBSTRING(isnull(AdministrativeRegions.AdministrativeRegionCode,' ') + REPLICATE(' ', 4 - LEN(isnull(AdministrativeRegions.AdministrativeRegionCode,' '))), 1, 4) AS AdministrativeRegionCode, 
	SUBSTRING(isnull(PostalCodes.PostalCode,' ') + REPLICATE(' ', 7 - LEN(isnull(PostalCodes.PostalCode,' '))), 1, 7) AS PostalCode, 
	CONVERT(nchar(8), GETDATE(), 12) AS Date,
	--CONVERT(nchar(8), ISNULL(TripDate,''), 12) AS Date,
	1 as Rank,
	case when WTripInfoCAN.WArrivingBy = 0 then 'X' else ' ' end as  WArrivingBy1,
	case when WTripInfoCAN.WArrivingBy = 1 then 'X' else ' ' end as  WArrivingBy2,
	case when WTripInfoCAN.WArrivingBy = 2 then 'X' else ' ' end as  WArrivingBy3,
	case when WTripInfoCAN.WArrivingBy = 3 then 'X' else ' ' end as  WArrivingBy4,
	case when WTripInfoCAN.WTripPurpose = 0 then 'X' else ' ' end as  WTripPurpose1,
	case when WTripInfoCAN.WTripPurpose = 1 then 'X' else ' ' end as  WTripPurpose2,
	case when WTripInfoCAN.WTripPurpose = 2 then 'X' else ' ' end as  WTripPurpose3,
	case when WTripInfoCAN.WArrivingFrom = 0 then 'X' else ' ' end as  WArrivingFrom1,
	case when WTripInfoCAN.WArrivingFrom = 1 then 'X' else ' ' end as  WArrivingFrom2,
	case when WTripInfoCAN.WArrivingFrom = 2 then 'X' else ' ' end as  WArrivingFrom3,
	case when WTripInfoCAN.Firearms = 1 then 'X' else ' ' end as Firearms_Yes, 
	case when WTripInfoCAN.Firearms = 0 then 'X' else ' ' end as Firearms_No,	
	case when WTripInfoCAN.CommercialGoods = 1 then 'X' else ' ' end as CommercialGoods_Yes,
	case when WTripInfoCAN.CommercialGoods = 0 then 'X' else ' ' end as CommercialGoods_No,	
	case when WTripInfoCAN.MeatProducts = 1 then 'X' else ' ' end as MeatProducts_Yes,
	case when WTripInfoCAN.MeatProducts = 0 then 'X' else ' ' end as MeatProducts_No,	
	case when WTripInfoCAN.CurrencyValue = 1 then 'X' else ' ' end as CurrencyValue_Yes,
	case when WTripInfoCAN.CurrencyValue = 0 then 'X' else ' ' end as CurrencyValue_No,	
	case when WTripInfoCAN.Goods = 1 then 'X' else ' ' end as Goods_Yes,
	case when WTripInfoCAN.Goods = 0 then 'X' else ' ' end as Goods_No,	
	case when WTripInfoCAN.FarmVisit = 1 then 'X' else ' ' end as FarmVisit_Yes,
	case when WTripInfoCAN.FarmVisit = 0 then 'X' else ' ' end as FarmVisit_No,	
	case when WTripInfoCAN.ExceedDutyFree = 1 then 'X' else ' ' end as ExceedDutyFree_Yes,
	case when WTripInfoCAN.ExceedDutyFree = 0 then 'X' else ' ' end as ExceedDutyFree_No,	
	case when WTripInfoCAN.ExceedExemptions = 1 then 'X' else ' ' end as ExceedExemptions_Yes,
	case when WTripInfoCAN.ExceedExemptions = 0 then 'X' else ' ' end as ExceedExemptions_No,	
--	REPLICATE('0', 3 - LEN(substring(cast(isnull(WTripInfoCAN.DurationOfStay,0) as char(10)),1,3))) 
--	+ substring(cast(isnull(WTripInfoCAN.DurationOfStay,0) as char(10)),1,3)  as DurationOfStay
	REPLICATE(' ', 3 - LEN(COALESCE(CAST(WTripInfoCAN.[DurationOfStay] As varchar), ' '))) 
	+ COALESCE(CAST(WTripInfoCAN.[DurationOfStay] As varchar), ' ')  as DurationOfStay
	FROM WAppUsers
	INNER JOIN Persons ON WAppUsers.WAppUserId = Persons.WAppUserId 
	LEFT JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId
	LEFT JOIN Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
	LEFT JOIN Cities ON Addresses.CityId = Cities.CityId 
	LEFT JOIN PostalCodes ON Addresses.PostalCodeId = PostalCodes.PostalCodeId
	LEFT JOIN AdministrativeRegions ON Addresses.AdministrativeRegionId = AdministrativeRegions.AdministrativeRegionId 
	LEFT JOIN Countries ON Addresses.CountryId = Countries.CountryId 
	LEFT JOIN dbo.WTripInfoCAN on Persons.WAppUserId = WTripInfoCAN.WAppUserId

	WHERE Persons.WAppUser = 0 AND  Persons.PrintForm = 1
	AND Persons_Addresses.Residence = 1 AND WTripInfoCAN.WAppUserId = @WAppUserId
	--@WAppUserId
	--WHERE (Flights.FlighCode = '111') 
	--AND (Flights.AirportCodeArrival = 'AC2') 
	--AND (Persons_Flights.Checked = 1)
	--where WAppUsers.WAppUserId = @WAppUserId
)


GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_FlightInfo_3]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[Get_CAN_FlightInfo_3](@WAppUserId bigint)
returns table
as
return
(
	SELECT DISTINCT 
	--SUBSTRING(Airlines.AirlineCode + ' ' + Flights.FlightNo + REPLICATE(' ', 9 - LEN(Airlines.AirlineCode) - LEN(Flights.FlightNo) - 1), 1, 9) AS AirLineFlightNo, 
	substring(isnull(cast(WTripInfoCAN.TransportationId as CHAR(100)),'         '),1,9) AS AirLineFlightNo, 
	WTripInfoCAN.WTripInfoCANId as AddressId, 
	--CASE WHEN Addresses.UnitType = 'Apartment' OR Addresses.UnitType = 'Suite' THEN CAST(Addresses.UnitNumber AS nvarchar(5)) + '-' + CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END ELSE CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END END AS Address, 
	isnull(Addresses.StreetName,' ') as Address,
	SUBSTRING(isnull(Cities.City,' '), 1, 10) + CASE WHEN LEN(isnull(Cities.City,' '))<10 THEN REPLICATE(' ', 10 - LEN(isnull(Cities.City,' '))) ELSE ' ' END AS City, 
	case when LEN(isnull(Countries.CountryName,' ')) > 9 
		then (Select CountryCodeA3_9 FROM Countries C Where C.CountryId = Addresses.CountryId)
		else SUBSTRING(isnull(Countries.CountryName,' ') + REPLICATE(' ', 9 - LEN(SUBSTRING(isnull(Countries.CountryName,' '),1,9))), 1, 9) end AS CountryName,
	
	SUBSTRING(isnull(AdministrativeRegions.AdministrativeRegionCode,' ') + REPLICATE(' ', 4 - LEN(isnull(AdministrativeRegions.AdministrativeRegionCode,' '))), 1, 4) AS AdministrativeRegionCode, 
	SUBSTRING(isnull(PostalCodes.PostalCode,' ') + REPLICATE(' ', 7 - LEN(isnull(PostalCodes.PostalCode,' '))), 1, 7) AS PostalCode, 
	CONVERT(nchar(8), GETDATE(), 12) AS Date,
	1 as Rank,
	case when WTripInfoCAN.WArrivingBy = 0 then 'X' else ' ' end as  WArrivingBy1,
	case when WTripInfoCAN.WArrivingBy = 1 then 'X' else ' ' end as  WArrivingBy2,
	case when WTripInfoCAN.WArrivingBy = 2 then 'X' else ' ' end as  WArrivingBy3,
	case when WTripInfoCAN.WArrivingBy = 3 then 'X' else ' ' end as  WArrivingBy4,
	case when WTripInfoCAN.WTripPurpose = 0 then 'X' else ' ' end as  WTripPurpose1,
	case when WTripInfoCAN.WTripPurpose = 1 then 'X' else ' ' end as  WTripPurpose2,
	case when WTripInfoCAN.WTripPurpose = 2 then 'X' else ' ' end as  WTripPurpose3,
	case when WTripInfoCAN.WArrivingFrom = 0 then 'X' else ' ' end as  WArrivingFrom1,
	case when WTripInfoCAN.WArrivingFrom = 1 then 'X' else ' ' end as  WArrivingFrom2,
	case when WTripInfoCAN.WArrivingFrom = 2 then 'X' else ' ' end as  WArrivingFrom3,
	case when WTripInfoCAN.Firearms = 1 then 'X' else ' ' end as Firearms_Yes, 
	case when WTripInfoCAN.Firearms = 0 then 'X' else ' ' end as Firearms_No,	
	case when WTripInfoCAN.CommercialGoods = 1 then 'X' else ' ' end as CommercialGoods_Yes,
	case when WTripInfoCAN.CommercialGoods = 0 then 'X' else ' ' end as CommercialGoods_No,	
	case when WTripInfoCAN.MeatProducts = 1 then 'X' else ' ' end as MeatProducts_Yes,
	case when WTripInfoCAN.MeatProducts = 0 then 'X' else ' ' end as MeatProducts_No,	
	case when WTripInfoCAN.CurrencyValue = 1 then 'X' else ' ' end as CurrencyValue_Yes,
	case when WTripInfoCAN.CurrencyValue = 0 then 'X' else ' ' end as CurrencyValue_No,	
	case when WTripInfoCAN.Goods = 1 then 'X' else ' ' end as Goods_Yes,
	case when WTripInfoCAN.Goods = 0 then 'X' else ' ' end as Goods_No,	
	case when WTripInfoCAN.FarmVisit = 1 then 'X' else ' ' end as FarmVisit_Yes,
	case when WTripInfoCAN.FarmVisit = 0 then 'X' else ' ' end as FarmVisit_No,	
	case when WTripInfoCAN.ExceedDutyFree = 1 then 'X' else ' ' end as ExceedDutyFree_Yes,
	case when WTripInfoCAN.ExceedDutyFree = 0 then 'X' else ' ' end as ExceedDutyFree_No,	
	case when WTripInfoCAN.ExceedExemptions = 1 then 'X' else ' ' end as ExceedExemptions_Yes,
	case when WTripInfoCAN.ExceedExemptions = 0 then 'X' else ' ' end as ExceedExemptions_No,	
--	REPLICATE('0', 3 - LEN(substring(cast(isnull(WTripInfoCAN.DurationOfStay,0) as char(10)),1,3))) 
--	+ substring(cast(isnull(WTripInfoCAN.DurationOfStay,0) as char(10)),1,3)  as DurationOfStay
	REPLICATE(' ', 3 - LEN(substring(cast(isnull(WTripInfoCAN.DurationOfStay,0) as char(10)),1,3))) 
	+ substring(cast(isnull(WTripInfoCAN.DurationOfStay,0) as char(10)),1,3)  as DurationOfStay
	--case when WTripInfoCAN.DurationOfStay is null then ' ' else WTripInfoCAN.DurationOfStay end as DurationOfStay
	FROM WAppUsers
	INNER JOIN Persons ON WAppUsers.WAppUserId = Persons.WAppUserId 
	LEFT JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId
	LEFT JOIN Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
	LEFT JOIN Cities ON Addresses.CityId = Cities.CityId 
	LEFT JOIN PostalCodes ON Addresses.PostalCodeId = PostalCodes.PostalCodeId
	LEFT JOIN AdministrativeRegions ON Addresses.AdministrativeRegionId = AdministrativeRegions.AdministrativeRegionId 
	LEFT JOIN Countries ON Addresses.CountryId = Countries.CountryId 
	LEFT JOIN dbo.WTripInfoCAN on Persons.WAppUserId = WTripInfoCAN.WAppUserId

	WHERE Persons.WAppUser = 0 AND  Persons.PrintForm = 1
	AND Persons_Addresses.Residence = 1 AND WTripInfoCAN.WAppUserId = @WAppUserId
	--@WAppUserId
	--WHERE (Flights.FlighCode = '111') 
	--AND (Flights.AirportCodeArrival = 'AC2') 
	--AND (Persons_Flights.Checked = 1)
	--where WAppUsers.WAppUserId = @WAppUserId
)


GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_FlightInfo_4]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE function [dbo].[Get_CAN_FlightInfo_4](@WAppUserId bigint)
returns table
as
return
(
	SELECT DISTINCT 
	--SUBSTRING(Airlines.AirlineCode + ' ' + Flights.FlightNo + REPLICATE(' ', 9 - LEN(Airlines.AirlineCode) - LEN(Flights.FlightNo) - 1), 1, 9) AS AirLineFlightNo, 
	substring(isnull(cast(WTripInfoCAN.TransportationId as CHAR(100)),'         '),1,9) AS AirLineFlightNo, 
	WTripInfoCAN.WTripInfoCANId as AddressId, 
	--CASE WHEN Addresses.UnitType = 'Apartment' OR Addresses.UnitType = 'Suite' THEN CAST(Addresses.UnitNumber AS nvarchar(5)) + '-' + CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END ELSE CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END END AS Address, 
	isnull(Addresses.StreetName,' ') as Address,
	SUBSTRING(isnull(Cities.City,' '), 1, 10) + CASE WHEN LEN(isnull(Cities.City,' '))<10 THEN REPLICATE(' ', 10 - LEN(isnull(Cities.City,' '))) ELSE ' ' END AS City, 
	case when LEN(isnull(Countries.CountryName,' ')) > 9 
		then (Select CountryCodeA3_9 FROM Countries C Where C.CountryId = Addresses.CountryId)
		else SUBSTRING(isnull(Countries.CountryName,' ') + REPLICATE(' ', 9 - LEN(SUBSTRING(isnull(Countries.CountryName,' '),1,9))), 1, 9) end AS CountryName,
	
	SUBSTRING(isnull(AdministrativeRegions.AdministrativeRegionCode,' ') + REPLICATE(' ', 4 - LEN(isnull(AdministrativeRegions.AdministrativeRegionCode,' '))), 1, 4) AS AdministrativeRegionCode, 
	SUBSTRING(isnull(PostalCodes.PostalCode,' ') + REPLICATE(' ', 7 - LEN(isnull(PostalCodes.PostalCode,' '))), 1, 7) AS PostalCode, 
	CONVERT(nchar(8), GETDATE(), 12) AS Date,
	1 as Rank,
	case when WTripInfoCAN.WArrivingBy = 0 then 'X' else ' ' end as  WArrivingBy1,
	case when WTripInfoCAN.WArrivingBy = 1 then 'X' else ' ' end as  WArrivingBy2,
	case when WTripInfoCAN.WArrivingBy = 2 then 'X' else ' ' end as  WArrivingBy3,
	case when WTripInfoCAN.WArrivingBy = 3 then 'X' else ' ' end as  WArrivingBy4,
	case when WTripInfoCAN.WTripPurpose = 0 then 'X' else ' ' end as  WTripPurpose1,
	case when WTripInfoCAN.WTripPurpose = 1 then 'X' else ' ' end as  WTripPurpose2,
	case when WTripInfoCAN.WTripPurpose = 2 then 'X' else ' ' end as  WTripPurpose3,
	case when WTripInfoCAN.WArrivingFrom = 0 then 'X' else ' ' end as  WArrivingFrom1,
	case when WTripInfoCAN.WArrivingFrom = 1 then 'X' else ' ' end as  WArrivingFrom2,
	case when WTripInfoCAN.WArrivingFrom = 2 then 'X' else ' ' end as  WArrivingFrom3,
	case when WTripInfoCAN.Firearms = 1 then 'X' else ' ' end as Firearms_Yes, 
	case when WTripInfoCAN.Firearms = 0 then 'X' else ' ' end as Firearms_No,	
	case when WTripInfoCAN.CommercialGoods = 1 then 'X' else ' ' end as CommercialGoods_Yes,
	case when WTripInfoCAN.CommercialGoods = 0 then 'X' else ' ' end as CommercialGoods_No,	
	case when WTripInfoCAN.MeatProducts = 1 then 'X' else ' ' end as MeatProducts_Yes,
	case when WTripInfoCAN.MeatProducts = 0 then 'X' else ' ' end as MeatProducts_No,	
	case when WTripInfoCAN.CurrencyValue = 1 then 'X' else ' ' end as CurrencyValue_Yes,
	case when WTripInfoCAN.CurrencyValue = 0 then 'X' else ' ' end as CurrencyValue_No,	
	case when WTripInfoCAN.Goods = 1 then 'X' else ' ' end as Goods_Yes,
	case when WTripInfoCAN.Goods = 0 then 'X' else ' ' end as Goods_No,	
	case when WTripInfoCAN.FarmVisit = 1 then 'X' else ' ' end as FarmVisit_Yes,
	case when WTripInfoCAN.FarmVisit = 0 then 'X' else ' ' end as FarmVisit_No,	
	case when WTripInfoCAN.ExceedDutyFree = 1 then 'X' else ' ' end as ExceedDutyFree_Yes,
	case when WTripInfoCAN.ExceedDutyFree = 0 then 'X' else ' ' end as ExceedDutyFree_No,	
	case when WTripInfoCAN.ExceedExemptions = 1 then 'X' else ' ' end as ExceedExemptions_Yes,
	case when WTripInfoCAN.ExceedExemptions = 0 then 'X' else ' ' end as ExceedExemptions_No,	
--	REPLICATE('0', 3 - LEN(substring(cast(isnull(WTripInfoCAN.DurationOfStay,0) as char(10)),1,3))) 
--	+ substring(cast(isnull(WTripInfoCAN.DurationOfStay,0) as char(10)),1,3)  as DurationOfStay
	REPLICATE(' ', 3 - LEN(COALESCE(CAST(WTripInfoCAN.[DurationOfStay] As varchar), ' '))) 
	+ COALESCE(CAST(WTripInfoCAN.[DurationOfStay] As varchar), ' ')  as DurationOfStay
	FROM WAppUsers
	INNER JOIN Persons ON WAppUsers.WAppUserId = Persons.WAppUserId 
	LEFT JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId
	LEFT JOIN Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
	LEFT JOIN Cities ON Addresses.CityId = Cities.CityId 
	LEFT JOIN PostalCodes ON Addresses.PostalCodeId = PostalCodes.PostalCodeId
	LEFT JOIN AdministrativeRegions ON Addresses.AdministrativeRegionId = AdministrativeRegions.AdministrativeRegionId 
	LEFT JOIN Countries ON Addresses.CountryId = Countries.CountryId 
	LEFT JOIN dbo.WTripInfoCAN on Persons.WAppUserId = WTripInfoCAN.WAppUserId

	WHERE Persons.WAppUser = 0 AND  Persons.PrintForm = 1
	AND Persons_Addresses.Residence = 1 AND WTripInfoCAN.WAppUserId = @WAppUserId
	--@WAppUserId
	--WHERE (Flights.FlighCode = '111') 
	--AND (Flights.AirportCodeArrival = 'AC2') 
	--AND (Persons_Flights.Checked = 1)
	--where WAppUsers.WAppUserId = @WAppUserId
)



GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_Goods1_3]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[Get_CAN_Goods1_3](@WTripInfoCANId bigint)
returns table
as
return
(
	SELECT a.PersonId, a.DateLeftCanada, a.ValueGoods
	from
	(SELECT TOP 2 WTripInfoCANDetailsP.PersonId, isnull(CONVERT(char(6), WTripInfoCANDetailsP.DateLeftCanada, 12),'      ') AS DateLeftCanada, 
	REPLICATE(' ', 6 - LEN(CAST(CEILING(isnull(WTripInfoCANDetailsP.ValueGoods,0)) AS int))) + CAST(CAST(CEILING(isnull(WTripInfoCANDetailsP.ValueGoods,0)) AS int) AS varchar(6)) AS ValueGoods
	FROM dbo.WTripInfoCANDetailsP 
	INNER JOIN dbo.Persons ON WTripInfoCANDetailsP.PersonId = Persons.PersonId
	WHERE (Persons.PrintForm = 1) AND (WTripInfoCANDetailsP.WTripInfoCANId = @WTripInfoCANId) 
	ORDER BY WTripInfoCANDetailsP.PersonId) a
	
	--SELECT TOP 2 PersonId, CONVERT(char(6), DateLeftCanada, 12) AS DateLeftCanada, 
	--REPLICATE(' ', 6 - LEN(CAST(CEILING(ValueGoods) AS int))) + CAST(CAST(CEILING(ValueGoods) AS int) AS varchar(6)) AS ValueGoods
	--FROM dbo.WTripInfoCANDetailsP
	--WHERE WTripInfoCANDetailsP.WTripInfoCANId = @WTripInfoCANId
)


GO
/****** Object:  UserDefinedFunction [dbo].[Get_CAN_Persons]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Get_CAN_Persons](@WTripInfoCANId bigint)
returns table
as
return
(
	SELECT Persons.PersonId, SUBSTRING(ISNULL(LastName,' ') + ' ' + ISNULL(FirstName,' ') + ' ' 
	+ SUBSTRING((ISNULL(MiddleName,' ')), 1, 1) 	
--	+ SUBSTRING((case when MiddleName is null then ' ' else MiddleName end), 1, 1) 
	+ REPLICATE(' ', 26 - LEN(ISNULL(LastName,' ')) - LEN(ISNULL(FirstName,' ')) - 2)
	, 1, 26) 
	 AS Name, 
	Isnull(CONVERT(nchar(6), DateofBirth, 12),'      ') AS DateofBirth, 
	isnull(SUBSTRING(Citizenship + REPLICATE(' ', 12 - LEN(Citizenship)), 1, 12),REPLICATE(' ', 12)) AS Citizenship 
	FROM dbo.WTripInfoCANDetailsP
	INNER JOIN dbo.Persons ON WTripInfoCANDetailsP.PersonId = Persons.PersonId
	WHERE (PrintForm = 1) AND (WTripInfoCANDetailsP.WTripInfoCANId = @WTripInfoCANId)
)

GO
/****** Object:  UserDefinedFunction [dbo].[Get_US_FlightInfo]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Get_US_FlightInfo](@WAppUserId bigint)
returns table
as
return
(
SELECT 
	isnull(Persons.FirstName,'') as FirstName, 
	case when Persons.MiddleName is null then ' ' else Persons.MiddleName end as MiddleName, 
	isnull(Persons.LastName,'') as LastName, 
	isnull(CONVERT(nchar(6), Persons.DateofBirth, 12),'      ') AS DateofBirth, 
	--CASE WHEN Addresses.UnitType = 'Apartment' OR Addresses.UnitType = 'Suite' THEN CAST(Addresses.UnitNumber AS nvarchar(5)) + '-' + CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END ELSE CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END END AS Address, 
	isnull(Addresses.StreetName,'') as Address,
	isnull(Cities.City,'') as City, 
	isnull(AdministrativeRegions.AdministrativeRegion,'') AS State, 
	isnull(Passports.PassportIssueAuthority,'') as PassportIssueAuthority, 
	isnull(Passports.PassportNo,'') as PassportNo, 
	isnull(Countries.CountryName,'') as CountryName, 
	isnull(PCountries.CountryName,'') as PCountry, 
	--ISNULL(SUBSTRING(Airlines.AirlineCode + ' ' + Flights.FlightNo + REPLICATE(' ', 9 - LEN(Airlines.AirlineCode) - LEN(Flights.FlightNo) - 1), 1, 9),'') AS AirLineFlightNo, 
	substring(cast(isnull(WTripInfoUSA.TransportationId,'') as CHAR(100)),1,9) AS AirLineFlightNo,
	--GETDATE() AS Date, 
	TripDate as Date,
	--isnull(WTripInfoUSA.NoFamMembers,'') as NoFamMembers, 
	case when WTripInfoUSA.NoFamMembers IS NULL THEN null ELSE WTripInfoUSA.NoFamMembers END as NoFamMembers, 
	isnull(WTripInfoUSA.ContriesVisited,'') as CountriesVisited, 
	isnull(WTripInfoUSA.CountriesVisited2,'') as CountriesVisited2, 
	case when WTripInfoUSA.TripPPurposeBusiness = 1 then 'X' else ' ' end as TripPurposeBusiness_Yes, 
	case when WTripInfoUSA.TripPPurposeBusiness = 0 then 'X' else ' ' end as TripPurposeBusiness_No, 
	case when WTripInfoUSA.BringFruits = 1 then 'X' else ' ' end as BringFruits_Yes, 
	case when WTripInfoUSA.BringFruits = 0 then 'X' else ' ' end as BringFruits_No, 
	case when WTripInfoUSA.BringMeats = 1 then 'X' else ' ' end as BringMeats_Yes, 
	case when WTripInfoUSA.BringMeats = 0 then 'X' else ' ' end as BringMeats_No, 
	case when WTripInfoUSA.BringDiseaseAgents = 1 then 'X' else ' ' end as BringDiseaseAgents_Yes, 
	case when WTripInfoUSA.BringDiseaseAgents = 0 then 'X' else ' ' end as BringDiseaseAgents_No, 
	case when WTripInfoUSA.BringSoil = 1 then 'X' else ' ' end as BringSoil_Yes, 
	case when WTripInfoUSA.BringSoil = 0 then 'X' else ' ' end as BringSoil_No, 
	case when WTripInfoUSA.Livestock = 1 then 'X' else ' ' end as Livestock_Yes, 
	case when WTripInfoUSA.Livestock = 0 then 'X' else ' ' end as Livestock_No, 
	case when WTripInfoUSA.CurrencyValue = 1 then 'X' else ' ' end as CurrencyValue_Yes, 
	case when WTripInfoUSA.CurrencyValue = 0 then 'X' else ' ' end as CurrencyValue_No, 
	case when WTripInfoUSA.CommercialMerchandise = 1 then 'X' else ' ' end as CommercialMerchandise_Yes, 
	case when WTripInfoUSA.CommercialMerchandise = 0 then 'X' else ' ' end as CommercialMerchandise_No,
	isnull(WTripInfoUSA.RGoodsValue,null) as RGoodsValue, 
	isnull(WTripInfoUSA.VGoodsValue,null) as VGoodsValue 
	FROM WAppUsers
	INNER JOIN Persons ON WAppUsers.WAppUserId = Persons.WAppUserId 
	LEFT JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId
	LEFT JOIN Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
	LEFT JOIN Cities ON Addresses.CityId = Cities.CityId 
	LEFT JOIN AdministrativeRegions ON Addresses.AdministrativeRegionId = AdministrativeRegions.AdministrativeRegionId 
	LEFT JOIN Passports ON Persons.PersonId = Passports.PersonId
	LEFT JOIN Countries PCountries ON Passports.CountryId = PCountries.CountryId 
	LEFT JOIN WTripInfoUSA ON WTripInfoUSA.WAppUserId = WAppUsers.WAppUserId
	LEFT JOIN Countries ON WTripInfoUSA.CountryResidence = Countries.CountryId 
	WHERE Persons.WAppUser = 0 AND  Persons.PrintForm = 1	
	AND Persons_Addresses.Destination = 1 AND WAppUsers.WAppUserId = @WAppUserId
	
)

GO
/****** Object:  UserDefinedFunction [dbo].[Get_US_FlightInfo_3]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[Get_US_FlightInfo_3](@WAppUserId bigint)
returns table
as
return
(
SELECT 
	isnull(Persons.FirstName,'') as FirstName, 
	case when Persons.MiddleName is null then ' ' else Persons.MiddleName end as MiddleName, 
	isnull(Persons.LastName,'') as LastName, 
	isnull(CONVERT(nchar(6), Persons.DateofBirth, 12),'      ') AS DateofBirth, 
	--CASE WHEN Addresses.UnitType = 'Apartment' OR Addresses.UnitType = 'Suite' THEN CAST(Addresses.UnitNumber AS nvarchar(5)) + '-' + CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END ELSE CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END END AS Address, 
	isnull(Addresses.StreetName,'') as Address,
	isnull(Cities.City,'') as City, 
	isnull(AdministrativeRegions.AdministrativeRegion,'') AS State, 
	isnull(Passports.PassportIssueAuthority,'') as PassportIssueAuthority, 
	isnull(Passports.PassportNo,'') as PassportNo, 
	isnull(Countries.CountryName,'') as CountryName, 
	isnull(PCountries.CountryName,'') as PCountry, 
	--ISNULL(SUBSTRING(Airlines.AirlineCode + ' ' + Flights.FlightNo + REPLICATE(' ', 9 - LEN(Airlines.AirlineCode) - LEN(Flights.FlightNo) - 1), 1, 9),'') AS AirLineFlightNo, 
	substring(cast(isnull(WTripInfoUSA.TransportationId,'') as CHAR(100)),1,9) AS AirLineFlightNo,
	GETDATE() AS Date, 
	isnull(WTripInfoUSA.NoFamMembers,0) as NoFamMembers, 
	isnull(WTripInfoUSA.ContriesVisited,'') as CountriesVisited, 
	isnull(WTripInfoUSA.CountriesVisited2,'') as CountriesVisited2, 
	case when WTripInfoUSA.TripPPurposeBusiness = 1 then 'X' else ' ' end as TripPurposeBusiness_Yes, 
	case when WTripInfoUSA.TripPPurposeBusiness = 1 then ' ' else 'X' end as TripPurposeBusiness_No, 
	case when WTripInfoUSA.BringFruits = 1 then 'X' else ' ' end as BringFruits_Yes, 
	case when WTripInfoUSA.BringFruits = 1 then ' ' else 'X' end as BringFruits_No, 
	case when WTripInfoUSA.BringMeats = 1 then 'X' else ' ' end as BringMeats_Yes, 
	case when WTripInfoUSA.BringMeats = 1 then ' ' else 'X' end as BringMeats_No, 
	case when WTripInfoUSA.BringDiseaseAgents = 1 then 'X' else ' ' end as BringDiseaseAgents_Yes, 
	case when WTripInfoUSA.BringDiseaseAgents = 1 then ' ' else 'X' end as BringDiseaseAgents_No, 
	case when WTripInfoUSA.BringSoil = 1 then 'X' else ' ' end as BringSoil_Yes, 
	case when WTripInfoUSA.BringSoil = 1 then ' ' else 'X' end as BringSoil_No, 
	case when WTripInfoUSA.Livestock = 1 then 'X' else ' ' end as Livestock_Yes, 
	case when WTripInfoUSA.Livestock = 1 then ' ' else 'X' end as Livestock_No, 
	case when WTripInfoUSA.CurrencyValue = 1 then 'X' else ' ' end as CurrencyValue_Yes, 
	case when WTripInfoUSA.CurrencyValue = 1 then ' ' else 'X' end as CurrencyValue_No, 
	case when WTripInfoUSA.CommercialMerchandise = 1 then 'X' else ' ' end as CommercialMerchandise_Yes, 
	case when WTripInfoUSA.CommercialMerchandise = 1 then ' ' else 'X' end as CommercialMerchandise_No,
	isnull(WTripInfoUSA.RGoodsValue,0) as RGoodsValue, 
	isnull(WTripInfoUSA.VGoodsValue,0) as VGoodsValue 
	FROM WAppUsers
	INNER JOIN Persons ON WAppUsers.WAppUserId = Persons.WAppUserId 
	LEFT JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId
	LEFT JOIN Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
	LEFT JOIN Cities ON Addresses.CityId = Cities.CityId 
	LEFT JOIN AdministrativeRegions ON Addresses.AdministrativeRegionId = AdministrativeRegions.AdministrativeRegionId 
	LEFT JOIN Passports ON Persons.PersonId = Passports.PersonId
	LEFT JOIN Countries PCountries ON Passports.CountryId = PCountries.CountryId 
	LEFT JOIN WTripInfoUSA ON WTripInfoUSA.WAppUserId = WAppUsers.WAppUserId
	LEFT JOIN Countries ON WTripInfoUSA.CountryResidence = Countries.CountryId 
	WHERE Persons.WAppUser = 0 AND  Persons.PrintForm = 1	
	AND Persons_Addresses.Destination = 1 AND WAppUsers.WAppUserId = @WAppUserId
	
)


GO
/****** Object:  UserDefinedFunction [dbo].[Get_US_FlightInfo_4]    Script Date: 7/2/2015 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[Get_US_FlightInfo_4](@WAppUserId bigint)
returns table
as
return
(
SELECT 
	isnull(Persons.FirstName,'') as FirstName, 
	case when Persons.MiddleName is null then ' ' else Persons.MiddleName end as MiddleName, 
	isnull(Persons.LastName,'') as LastName, 
	isnull(CONVERT(nchar(6), Persons.DateofBirth, 12),'      ') AS DateofBirth, 
	--CASE WHEN Addresses.UnitType = 'Apartment' OR Addresses.UnitType = 'Suite' THEN CAST(Addresses.UnitNumber AS nvarchar(5)) + '-' + CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END ELSE CAST(Addresses.StreetNumber AS nvarchar(5)) + ' ' + CASE WHEN COALESCE (Addresses.StreetPredirection, '') = '' THEN '' ELSE Addresses.StreetPredirection + ' ' END + Addresses.StreetName + CASE WHEN COALESCE (Addresses.StreetType, '') = '' THEN '' ELSE ' ' + Addresses.StreetType END + CASE WHEN COALESCE (Addresses.StreetPostDirection, '') = '' THEN '' ELSE ' ' + Addresses.StreetPostDirection END END AS Address, 
	isnull(Addresses.StreetName,'') as Address,
	isnull(Cities.City,'') as City, 
	isnull(AdministrativeRegions.AdministrativeRegion,'') AS State, 
	isnull(Passports.PassportIssueAuthority,'') as PassportIssueAuthority, 
	isnull(Passports.PassportNo,'') as PassportNo, 
	isnull(Countries.CountryName,'') as CountryName, 
	isnull(PCountries.CountryName,'') as PCountry, 
	--ISNULL(SUBSTRING(Airlines.AirlineCode + ' ' + Flights.FlightNo + REPLICATE(' ', 9 - LEN(Airlines.AirlineCode) - LEN(Flights.FlightNo) - 1), 1, 9),'') AS AirLineFlightNo, 
	substring(cast(isnull(WTripInfoUSA.TransportationId,'') as CHAR(100)),1,9) AS AirLineFlightNo,
	GETDATE() AS Date, 
	--isnull(WTripInfoUSA.NoFamMembers,'') as NoFamMembers, 
	case when WTripInfoUSA.NoFamMembers IS NULL THEN '' ELSE WTripInfoUSA.NoFamMembers END as NoFamMembers, 
	isnull(WTripInfoUSA.ContriesVisited,'') as CountriesVisited, 
	isnull(WTripInfoUSA.CountriesVisited2,'') as CountriesVisited2, 
	case when WTripInfoUSA.TripPPurposeBusiness = 1 then 'X' else ' ' end as TripPurposeBusiness_Yes, 
	case when WTripInfoUSA.TripPPurposeBusiness = 0 then 'X' else ' ' end as TripPurposeBusiness_No, 
	case when WTripInfoUSA.BringFruits = 1 then 'X' else ' ' end as BringFruits_Yes, 
	case when WTripInfoUSA.BringFruits = 0 then 'X' else ' ' end as BringFruits_No, 
	case when WTripInfoUSA.BringMeats = 1 then 'X' else ' ' end as BringMeats_Yes, 
	case when WTripInfoUSA.BringMeats = 0 then 'X' else ' ' end as BringMeats_No, 
	case when WTripInfoUSA.BringDiseaseAgents = 1 then 'X' else ' ' end as BringDiseaseAgents_Yes, 
	case when WTripInfoUSA.BringDiseaseAgents = 0 then 'X' else ' ' end as BringDiseaseAgents_No, 
	case when WTripInfoUSA.BringSoil = 1 then 'X' else ' ' end as BringSoil_Yes, 
	case when WTripInfoUSA.BringSoil = 0 then 'X' else ' ' end as BringSoil_No, 
	case when WTripInfoUSA.Livestock = 1 then 'X' else ' ' end as Livestock_Yes, 
	case when WTripInfoUSA.Livestock = 0 then 'X' else ' ' end as Livestock_No, 
	case when WTripInfoUSA.CurrencyValue = 1 then 'X' else ' ' end as CurrencyValue_Yes, 
	case when WTripInfoUSA.CurrencyValue = 0 then 'X' else ' ' end as CurrencyValue_No, 
	case when WTripInfoUSA.CommercialMerchandise = 1 then 'X' else ' ' end as CommercialMerchandise_Yes, 
	case when WTripInfoUSA.CommercialMerchandise = 0 then 'X' else ' ' end as CommercialMerchandise_No,
	isnull(WTripInfoUSA.RGoodsValue,'') as RGoodsValue, 
	isnull(WTripInfoUSA.VGoodsValue,'') as VGoodsValue 
	FROM WAppUsers
	INNER JOIN Persons ON WAppUsers.WAppUserId = Persons.WAppUserId 
	LEFT JOIN Persons_Addresses ON Persons.PersonId = Persons_Addresses.PersonId
	LEFT JOIN Addresses ON Persons_Addresses.AddressId = Addresses.AddressId 
	LEFT JOIN Cities ON Addresses.CityId = Cities.CityId 
	LEFT JOIN AdministrativeRegions ON Addresses.AdministrativeRegionId = AdministrativeRegions.AdministrativeRegionId 
	LEFT JOIN Passports ON Persons.PersonId = Passports.PersonId
	LEFT JOIN Countries PCountries ON Passports.CountryId = PCountries.CountryId 
	LEFT JOIN WTripInfoUSA ON WTripInfoUSA.WAppUserId = WAppUsers.WAppUserId
	LEFT JOIN Countries ON WTripInfoUSA.CountryResidence = Countries.CountryId 
	WHERE Persons.WAppUser = 0 AND  Persons.PrintForm = 1	
	AND Persons_Addresses.Destination = 1 AND WAppUsers.WAppUserId = @WAppUserId
	
)


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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'days; >=30 Warning >= 60 plan disabled' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enrollments', @level2type=N'COLUMN',@level2name=N'Overdue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'% or absolute value ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enrollments_Offers', @level2type=N'COLUMN',@level2name=N'OfferUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'D – for days; allowable range for p2 is 1 to 90
W – for weeks; allowable range for p2 is 1 to 52
M – for months; allowable range for p2 is 1 to 24
Y – for years; allowable range for p2 is 1 to 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLicensesTypes', @level2type=N'COLUMN',@level2name=N'TrialPeriodMU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 - Air
2 - Rail
3 - Marine
4 - Highway' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'WArrivingBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 - Study
2 - Personal
3 - Business' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'WTripPurpose'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 - US only
2 - Other country direct
3 - Other country vis US' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'WArrivingFrom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q: Firearms or other weapons (e.g. switchblades, Mace or pepper spray).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'Firearms'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q: Commercial goods, whether or not for resale (e.g. samples, tools, equipment). ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'CommercialGoods'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q: Meat/meat products; dairy products; fruits; vegetables; seeds; nuts; plants and animals or their parts/products; cut flowers; soil; wood/wood products; birds; insects. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'MeatProducts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q: Currency and/or monetary instruments of a value totalling CAN$10,000 or more per person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'CurrencyValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q: I/we have shipped goods that are not accompanying me/us.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'Goods'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q: I/we have visited a farm and will be going to a farm in Canada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'FarmVisit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'in days' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoCAN', @level2type=N'COLUMN',@level2name=N'DurationOfStay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Airline/Flight No or Vessel Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'TransportationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Question 10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'TripPPurposeBusiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q 11.a' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'BringFruits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q 11.b' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'BringMeats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q 11.c' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'BringDiseaseAgents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q 11.d' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'BringSoil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q 12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'Livestock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Q 13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WTripInfoUSA', @level2type=N'COLUMN',@level2name=N'CurrencyValue'
GO
