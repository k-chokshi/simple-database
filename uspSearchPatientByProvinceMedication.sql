
/***************************************************************************************************
-- =============================================
-- Author:      Kruti 
-- Create date:  Novemeber 2021
-- Description:  Searchs Patient's records by province and medcations taken
-- =============================================
****************************************************************************************************
SUMMARY OF CHANGES
*************************************************************************************************/


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Medications].[uspSearchPatientByProvinceMedication]   
       @Province VARCHAR(2),
       @MedicationList VARCHAR(500) -- Expected to be a string of words seperated by comma e.g 'diabetes T1 ,depression';      
AS 
BEGIN 
    SET NOCOUNT ON;  
    DECLARE @ProvinceId INT;
    SET @ProvinceId =  Medications.ufnGetProvinceId(@Province);

    -- Create Temp table to hold input medications to search for
    CREATE TABLE #Medications (Medication VARCHAR(200));
    INSERT INTO #Medications (Medication)
    SELECT TRIM(value) FROM STRING_SPLIT(@MedicationList,',');

    SELECT Medication FROM #Medications

    SELECT 
     p.PatientId as "PatientId"
    , p.FirstName as FirstName
    , p.LastName as LastName
    , prv.ProvinceName as ProvinceCode
    , p.emailaddress as EmailAddress
    , m.MedicationName
    FROM Medications.PatientMedication pm
    JOIN Medications.Patient p on pm.PatientId = p.PatientId
    JOIN Medications.Medication m on pm.MedicationId = m.MedicationId
    JOIN Medications.Province prv on p.Province = prv.ProvinceId
    JOIN #Medications mlist on m.MedicationName = mlist.Medication
    WHERE p.[Status] = 1
    AND prv.ProvinceId = @ProvinceId
   
END
GO
