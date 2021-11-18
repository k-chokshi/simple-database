  INSERT into [Klick].[Medications].[Province]
  ([ProvinceName],[ProvinceCode])
  Values('Ontario','ON');
  
  INSERT into [Klick].[Medications].[Province]
  ([ProvinceName],[ProvinceCode])
  Values('Quebec','QC');
  
  INSERT into [Klick].[Medications].[Province]
  ([ProvinceName],[ProvinceCode])
  Values('Nova Scotia','NS');

  INSERT into [Klick].[Medications].[Province]
  ([ProvinceName],[ProvinceCode])
  Values('New Brunswick','NB');
  
  INSERT into [Klick].[Medications].[Province]
  ([ProvinceName],[ProvinceCode])
  Values('British Columbia','BC');
  
  INSERT into [Klick].[Medications].[Province]
  ([ProvinceName],[ProvinceCode])
  Values('Prince Edward Island','PE');

  INSERT into [Klick].[Medications].[Province]
  ([ProvinceName],[ProvinceCode])
  Values('Saskatchewan','SK');
  
  INSERT into [Klick].[Medications].[Province]
  ([ProvinceName],[ProvinceCode])
  Values('Alberta','AB');
  
  INSERT into [Klick].[Medications].[Province]
  ([ProvinceName],[ProvinceCode])
  Values('Newfoundland and Labrador','NL');

  
  INSERT into [Klick].[Medications].[Province]
  ([ProvinceName],[ProvinceCode])
  Values('Manitoba','MB');


  SELECT TOP (1000) [ProvinceId]
      ,[ProvinceName]
      ,[ProvinceCode]
      ,[Status]
      ,[DeletedOn]
  FROM [Klick].[Medications].[Province]