create database NYC_Taxi_DWH;
USE NYC_Taxi_DWH;

-- Dim_Date
CREATE TABLE Dim_Date (
    DateKey INT IDENTITY(1,1) PRIMARY KEY,
    FullDate DATE,
    Day INT,
    Month INT,
    MonthName NVARCHAR(20),
    Quarter INT,
    Year INT,
    DayOfWeek INT,
    DayName NVARCHAR(20),
    IsWeekend BIT
);

CREATE TABLE Dim_Time (
    TimeKey INT IDENTITY(1,1) PRIMARY KEY,
    Hour INT,
    Minute INT,
    TimePeriod NVARCHAR(20)
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
        TripTypeID INT NOT NULL,
        TripTypeName VARCHAR(50),
        CreatedDate DATETIME DEFAULT GETDATE()
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


-------------------------------------------------------------------
create database NYC_Taxi_STG;
USE NYC_Taxi_STG;

CREATE TABLE stg_trips (
    id NVARCHAR(50),              
    vendor_id INT,
    pickup_datetime DATETIME,
    dropoff_datetime DATETIME,
    passenger_count INT,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    store_and_fwd_flag NVARCHAR(1),  
    trip_duration INT
);


SELECT COUNT(*) FROM dbo.stg_trips;