
/***************************************************************************************************
-- =============================================
-- Author:       Kruti 
-- Create date:  Novemeber 2021
-- Description:  Update Patient's records 
-- =============================================
****************************************************************************************************
SUMMARY OF CHANGES
*************************************************************************************************/



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Medications].[uspUpdatePatient]   
       @PatientId    INT ,
       @FirstName                    VARCHAR(200) = NULL, 
       @LastName                    VARCHAR(200)= NULL, 
       @Province                    VARCHAR(2)= NULL,
       @EmailAddress                 VARCHAR(200) = NULL,
       @ReturnValue INT OUTPUT
AS 
BEGIN 
     -- Ensure non nullable values are passed
     SET NOCOUNT ON 
     IF (@PatientId IS NULL)
        BEGIN                 
            SET @ReturnValue = 0;
            RETURN @ReturnValue;
        END  
     ELSE


     UPDATE Medications.Patient
     SET 
     FirstName = COALESCE(@FirstName, FirstName), 
     LastName = COALESCE(@LastName, LastName), 
     EmailAddress = COALESCE(@EmailAddress, EmailAddress),
     Province = COALESCE(@Province, Province)

     WHERE PatientId = @PatientId

     SET @ReturnValue = 1; -- Sucess
     RETURN @ReturnValue;

END 

GO
