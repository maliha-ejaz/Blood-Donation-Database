CREATE DATABASE BloodDonationDB;
USE BloodDonationDB;
CREATE TABLE Donor (
DonorId INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(100),
Age INT,
Gender VARCHAR(10),
Contact VARCHAR(20),
BloodGroup VARCHAR(10),
DonationDate DATE);
INSERT INTO Donor(DonorId, Name, Age, Gender, Contact, BloodGroup, DonationDate)
VALUES (1, 'Michael', 20, 'Male', '0300-0000000', 'B+', '2025-05-18');
INSERT INTO Donor(Name, Age, Gender, Contact, BloodGroup, DonationDate)
VALUES ('Rachel', 19, 'Female', '0300-1234567', 'O+', '2025-04-14'),
('Chris', 21, 'Male', '0312-1234567', 'O-', '2025-03-06');

CREATE TABLE Donation (
DonationId INT AUTO_INCREMENT PRIMARY KEY,
DonorId INT,
Date DATE,
Quantity INT,
FOREIGN KEY (DonorId) REFERENCES Donor(DonorId));
INSERT INTO Donation(DonationId, DonorId, Date, Quantity)
VALUES (1, 1, '2025-05-18', 250);

CREATE TABLE RecipientRequest (
RecipientId INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(100),
Age INT,
BloodGroup VARCHAR(10),
RequiredQuantity INT,
Contact VARCHAR(20),
RequestDate DATE,
Status VARCHAR(50) DEFAULT 'Pending');
INSERT INTO RecipientRequest(Name, Age, BloodGroup, RequiredQuantity, Contact, RequestDate)
VALUES('Harvey', 30, 'B+', 250, '0300-1234567', '2025-10-13');

CREATE TABLE BloodStock(
BloodGroup VARCHAR(10) PRIMARY KEY,
AvailableQuantity INT);
INSERT INTO BloodStock(BloodGroup, AvailableQuantity)
VALUES ('B+', 1000),
('O+', 1500),
('O-', 500),
('A+', 1000),
('AB+', 1000);

