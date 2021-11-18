
/***************************************************************************************************
-- =============================================
-- Author:      Kruti 
-- Create date:  Novemeber 2021
-- Description:  Gets all Patient records 
-- =============================================
****************************************************************************************************
SUMMARY OF CHANGES
*************************************************************************************************/


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Medications].[uspGetPatients]   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName  
    FROM Medications.Patient
GO
