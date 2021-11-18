/***************************************************************************************************
-- =============================================
-- Author:      Kruti 
-- Create date:  Novemeber 2021
-- Description:  Creates patient record
-- =============================================
****************************************************************************************************
SUMMARY OF CHANGES
*************************************************************************************************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Medications].[uspCreatePatient]   
       @FirstName                    VARCHAR(200), 
       @LastName                    VARCHAR(200), 
       @Province                    VARCHAR(2),
       @EmailAddress                 VARCHAR(200) ,
       @PatientId INT OUTPUT       
AS 
BEGIN 
     -- Ensure non nullable values are passed
     SET NOCOUNT ON 
     IF ((@FirstName IS NULL)  OR (@LastName IS NULL) OR (@Province IS NULL))
        BEGIN  
            RETURN(0)  
        END  
     ELSE

     INSERT INTO Medications.Patient
          (                    
            FirstName,                     
            LastName,                  
            Province,                      
            EmailAddress                 
          ) 
     VALUES 
          ( 
            @FirstName,
            @LastName,
            Medications.ufnGetProvinceId(@Province),
            @EmailAddress
          ) 
    SET @PatientId = SCOPE_IDENTITY()

END 

GO
