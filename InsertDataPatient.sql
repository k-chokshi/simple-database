
  
INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user1', 'user1', 3, 'user1.user1@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user2', 'user2', 4, 'user2.user2@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user3', 'user3', 5,'user3.user3@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user4', 'user4', 6,'user4.user4@mail.com');


INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user5', 'user5', 7,'user5.user5@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user6', 'user6', 8, 'user6.user6@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user7', 'user7', 9,'user7.user7@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user8', 'user8', 10, 'user8.user8@mail.com');


INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user9', 'user9', 11, 'user9.user9@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user10', 'user10', 12, 'user10.user10@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user11', 'user11', 3, 'user11.user11@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user12', 'user12', 3,'user12.user12@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user13', 'user13', 6,'user13.user13@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user14', 'user14', 6, 'user14.user14@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user15', 'user15', 7,'user15.user15@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user16', 'user16', 7, 'user16.user16@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user17', 'user17', 8,'user17.user17@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user18', 'user18', 12,'user18.user18@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user19', 'user19', 11,'user19.user19@mail.com');

INSERT into [Klick].[Medications].[Patient]
([FirstName],[LastName],[Province], [EmailAddress])
VALUES('user20', 'user20', 12,'user20.user20@mail.com');

SELECT TOP (1000) [PatientId]
      ,[FirstName]
      ,[LastName]
      ,[Province], [EmailAddress]
      ,[Status]
      ,[DeletedOn]
  FROM [Klick].[Medications].[Patient]

