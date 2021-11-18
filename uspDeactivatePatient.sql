
/***************************************************************************************************
-- =============================================
-- Author:      Kruti 
-- Create date:  Novemeber 2021
-- Description:  updates patient status 0 is off and 1 is on i.e. active
-- =============================================
****************************************************************************************************
SUMMARY OF CHANGES
*************************************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Medications].[uspDeactivatePatient]   
       @PatientId    INT ,
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
     SET [Status] = 0
     WHERE PatientId = @PatientId

     SET @ReturnValue = 1; -- Sucess
     RETURN @ReturnValue;

END 

GO
