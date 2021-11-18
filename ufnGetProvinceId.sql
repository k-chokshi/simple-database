
/***************************************************************************************************
-- =============================================
-- Author:       Kruti 
-- Create date:  Novemeber 2021
-- Description:  Function that helps convert Province code to int value to ref in tables
-- =============================================
****************************************************************************************************
SUMMARY OF CHANGES
*************************************************************************************************/


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [Medications].[ufnGetProvinceId](@ProvinceCode VARCHAR(2))  
RETURNS int   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret int;  
    SELECT @ret = p.ProvinceId
    FROM Medications.Province p   
    WHERE p.ProvinceCode = @ProvinceCode ; 
     IF (@ret IS NULL)   
        SET @ret = 0;  
    RETURN @ret;  
END; 
GO
