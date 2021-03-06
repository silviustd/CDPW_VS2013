USE [CDPW]
GO
/****** Object:  StoredProcedure [dbo].[WAppUser_CheckDuplicateEmail]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[WAppUser_CheckDuplicateEmail]
GO
/****** Object:  StoredProcedure [dbo].[WAppsUser_Login]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[WAppsUser_Login]
GO
/****** Object:  StoredProcedure [dbo].[WAppsUser_Add]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[WAppsUser_Add]
GO
/****** Object:  StoredProcedure [dbo].[WAppsNoUser_Add]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[WAppsNoUser_Add]
GO
/****** Object:  StoredProcedure [dbo].[UserData_Delete]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[UserData_Delete]
GO
/****** Object:  StoredProcedure [dbo].[USAForm_Get]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[USAForm_Get]
GO
/****** Object:  StoredProcedure [dbo].[USAForm_Add_Person]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[USAForm_Add_Person]
GO
/****** Object:  StoredProcedure [dbo].[USAForm_Add]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[USAForm_Add]
GO
/****** Object:  StoredProcedure [dbo].[MSettings_Update]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[MSettings_Update]
GO
/****** Object:  StoredProcedure [dbo].[MSettings_Get]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[MSettings_Get]
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_Register]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[Enrollment_Register]
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_Cancel]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[Enrollment_Cancel]
GO
/****** Object:  StoredProcedure [dbo].[Country_Province_List]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[Country_Province_List]
GO
/****** Object:  StoredProcedure [dbo].[CanadaForm_Get]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[CanadaForm_Get]
GO
/****** Object:  StoredProcedure [dbo].[CanadaForm_Add_Person]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[CanadaForm_Add_Person]
GO
/****** Object:  StoredProcedure [dbo].[CanadaForm_Add]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[CanadaForm_Add]
GO
/****** Object:  StoredProcedure [dbo].[AllUserData_Delete]    Script Date: 7/3/2015 9:15:53 AM ******/
DROP PROCEDURE [dbo].[AllUserData_Delete]
GO
/****** Object:  StoredProcedure [dbo].[AllUserData_Delete]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[CanadaForm_Add]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[CanadaForm_Add_Person]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[CanadaForm_Get]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Country_Province_List]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Enrollment_Cancel]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Enrollment_Register]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[MSettings_Get]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[MSettings_Update]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[USAForm_Add]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[USAForm_Add_Person]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[USAForm_Get]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[UserData_Delete]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[WAppsNoUser_Add]    Script Date: 7/3/2015 9:15:53 AM ******/
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
/****** Object:  StoredProcedure [dbo].[WAppsUser_Add]    Script Date: 7/3/2015 9:15:53 AM ******/
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
	@UseAlternateEmail bit = 0,
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
		IF @UseAlternateEmail = 0 
			BEGIN
				SELECT  WAppUserEmail, FirstName, WAppUserName, BeginDate FROM WAppUsers RIGHT OUTER JOIN
                      Persons ON Persons.PersonId = WAppUsers.PersonId WHERE WAppUserEmail = @UserEmail
			END
		ELSE
			BEGIN
				SELECT  WAppUserAltEmail, FirstName, WAppUserName, BeginDate FROM WAppUsers RIGHT OUTER JOIN
                      Persons ON Persons.PersonId = WAppUsers.PersonId WHERE WAppUserAltEmail = @UserEmail
			END
		
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
/****** Object:  StoredProcedure [dbo].[WAppsUser_Login]    Script Date: 7/3/2015 9:15:53 AM ******/
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
	@UseAlternateEmail bit = 0,
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
		BEGIN
			IF @UseAlternateEmail = 0
				BEGIN
					UPDATE WAppUsers SET WAppUserPwd = @UserPasswd WHERE (WAppUserEmail = @UserEmail)
				END
			ELSE
				BEGIN
					UPDATE WAppUsers SET WAppUserPwd = @UserPasswd WHERE (WAppUserAltEmail = @UserEmail)
				END
		END
			
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
/****** Object:  StoredProcedure [dbo].[WAppUser_CheckDuplicateEmail]    Script Date: 7/3/2015 9:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WAppUser_CheckDuplicateEmail]
	-- Add the parameters for the stored procedure here
	@WAppUserId				bigint		= NULL,
	@UserEmail	nvarchar(50) = NULL,
	@UseAlternateEmail bit = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @UseAlternateEmail = 0 
		BEGIN
			IF EXISTS(SELECT  WAppUserEmail, FirstName, WAppUserName, BeginDate FROM WAppUsers RIGHT OUTER JOIN
                    Persons ON Persons.PersonId = WAppUsers.PersonId WHERE WAppUserEmail = @UserEmail
					AND WAppUsers.WAppUserId <> @WAppUserId)
				RETURN 1 
			--ELSE
			--	RETURN 0
		END
	ELSE
		BEGIN
			IF EXISTS(SELECT  WAppUserAltEmail, FirstName, WAppUserName, BeginDate FROM WAppUsers RIGHT OUTER JOIN
                    Persons ON Persons.PersonId = WAppUsers.PersonId WHERE WAppUserAltEmail = @UserEmail
					AND WAppUsers.WAppUserId <> @WAppUserId)
				RETURN 1
			--ELSE
			--	RETURN 0
		END

END

GO
