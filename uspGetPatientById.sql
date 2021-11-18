
/***************************************************************************************************
-- =============================================
-- Author:      Kruti 
-- Create date:  Novemeber 2021
-- Description:  Gets Patient record based on the patient id
-- =============================================
****************************************************************************************************
SUMMARY OF CHANGES
*************************************************************************************************/


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Medications].[uspGetPatientById]   
       @PatientId INT        
AS 
BEGIN 
    SET NOCOUNT ON;  
    SELECT PatientId,FirstName, LastName , EmailAddress 
    FROM Medications.Patient
    WHERE PatientId = @PatientId
    AND [Status] = 1;
END
GO
