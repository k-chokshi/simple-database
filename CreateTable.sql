USE Klick;
GO

CREATE TABLE Medications.Province (
    ProvinceId int IDENTITY (1,1) NOT NULL ,
    ProvinceName varchar(200) NOT NULL,
    ProvinceCode varchar(2) NOT NULL,
    [Status] bit NOT NULL DEFAULT 1,
    DeletedOn datetime2(0) NULL,

    CONSTRAINT pk_province_id PRIMARY KEY (ProvinceId),
)  

WITH (DATA_COMPRESSION = PAGE);
GO


CREATE TABLE Medications.Patient (
    PatientId int IDENTITY (1,1) NOT NULL,
    FirstName varchar(200) NOT NULL,
    LastName varchar(200) NOT NULL,
    Province int NOT NULL,
    EmailAddress nvarchar(200) NOT NULL,
    [Status] bit NOT NULL DEFAULT 1,
    DeletedOn datetime2(0) NULL,

    CONSTRAINT pk_medications_patient PRIMARY KEY (PatientId),
    CONSTRAINT fk_medications_patient_province FOREIGN KEY (Province) REFERENCES Medications.[Province] (ProvinceId)
  
)  
WITH (DATA_COMPRESSION = PAGE);
GO


CREATE TABLE Medications.[Medication] (
    MedicationId int IDENTITY (1,1) NOT NULL,
    MedicationName varchar(200) NOT NULL,
    MedicationDetails nvarchar(500) NOT NULL,
    [Status] bit NOT NULL DEFAULT 1,
    DeletedOn datetime2(0) NULL,

    CONSTRAINT pk_medications_medication PRIMARY KEY (MedicationId),
)  
WITH (DATA_COMPRESSION = PAGE);
GO



CREATE TABLE Medications.[PatientMedication] (
    PatientMedicationId int IDENTITY (1,1) NOT NULL,
    MedicationId int  NOT NULL,
    PatientId  int  NOT NULL,
    [Status] bit NOT NULL DEFAULT 1,
    DeletedOn datetime2(0) NULL,

    CONSTRAINT pk_medications_patient_medication PRIMARY KEY (PatientMedicationId),
    CONSTRAINT fk_medications_patient_medication_id FOREIGN KEY (MedicationId) REFERENCES Medications.[Medication] (MedicationId),
    CONSTRAINT fk_medications_patient_medication_patient_id FOREIGN KEY (PatientId) REFERENCES Medications.[Patient] (PatientId),
)  
WITH (DATA_COMPRESSION = PAGE);
GO
