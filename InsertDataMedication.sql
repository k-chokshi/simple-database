
INSERT into [Klick].[Medications].[Medication]
([MedicationName],[MedicationDetails])
VALUES('diabetes T1', 'diabetes T1');

INSERT into [Klick].[Medications].[Medication]
([MedicationName],[MedicationDetails])
VALUES('diabetes T2', 'diabetes T2');

INSERT into [Klick].[Medications].[Medication]
([MedicationName],[MedicationDetails])
VALUES('migraine', 'migraine');

INSERT into [Klick].[Medications].[Medication]
([MedicationName],[MedicationDetails])
VALUES('obesity', 'obesity');

INSERT into [Klick].[Medications].[Medication]
([MedicationName],[MedicationDetails])
VALUES('depression', 'depression');

SELECT TOP (1000) [MedicationId]
      ,[MedicationName]
      ,[MedicationDetails]
      ,[Status]
      ,[DeletedOn]
  FROM [Klick].[Medications].[Medication]
