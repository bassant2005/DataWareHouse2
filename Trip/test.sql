USE NYC_Taxi_DWH;
GO

-- Dim_Date
CREATE TABLE Dim_Date (
    DateKey INT IDENTITY(1,1) PRIMARY KEY,
    FullDate DATE,
    Day INT,
    Month INT,
    MonthName VARCHAR(20),
    Quarter INT,
    Year INT,
    DayOfWeek INT,
    DayName VARCHAR(20),
    IsWeekend BIT
);

-- Dim_Time
CREATE TABLE Dim_Time (
    TimeKey INT IDENTITY(1,1) PRIMARY KEY,
    Hour INT,
    Minute INT,
    TimePeriod VARCHAR(20)
);

-- Dim_Vendor
CREATE TABLE Dim_Vendor (
    VendorKey INT IDENTITY(1,1) PRIMARY KEY,
    VendorID INT,
    VendorName VARCHAR(50)
);

-- Dim_Location
CREATE TABLE Dim_Location (
    LocationKey INT IDENTITY(1,1) PRIMARY KEY,
    Longitude FLOAT,
    Latitude FLOAT,
    Borough VARCHAR(30),
    ZoneLabel VARCHAR(50)
);

-- Dim_Passenger
CREATE TABLE Dim_Passenger (
    PassengerKey INT IDENTITY(1,1) PRIMARY KEY,
    PassengerCount INT,
    PassengerGroup VARCHAR(20)
);

-- Dim_TripType
CREATE TABLE Dim_TripType (
    TripTypeKey INT IDENTITY(1,1) PRIMARY KEY,
    StoreAndFwdFlag CHAR(1),
    TripTypeDescription VARCHAR(30)
);




select * from Dim_Date
select * from Dim_Time
select * from Dim_Vendor
select * from Dim_Location
select * from Dim_Passenger
select * from Dim_TripType


USE NYC_Taxi_STG;
SELECT COUNT(*) FROM dbo.stg_trips;




USE NYC_Taxi_DWH;
SELECT COUNT(*) FROM Dim_Date;



USE NYC_Taxi_DWH;
SELECT COUNT(*) FROM Dim_Time;




USE NYC_Taxi_DWH;
SELECT COUNT(*) FROM Dim_Location;