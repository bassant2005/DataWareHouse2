create database NYC_Taxi_DWH;
USE NYC_Taxi_DWH;

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

CREATE TABLE Dim_Vendor (
    VendorKey INT IDENTITY(1,1) PRIMARY KEY,
    VendorID INT,
    VendorName VARCHAR(50)
);

CREATE TABLE Dim_Location (
    LocationKey INT IDENTITY(1,1) PRIMARY KEY,
    Longitude FLOAT,
    Latitude FLOAT,
    Borough VARCHAR(30),
    ZoneLabel VARCHAR(50)
);

CREATE TABLE Dim_Passenger (
    PassengerKey INT IDENTITY(1,1) PRIMARY KEY,
    PassengerCount INT,
    PassengerGroup VARCHAR(20)
);

CREATE TABLE Dim_TripType (
    TripTypeKey INT IDENTITY(1,1) PRIMARY KEY,
    TripTypeID INT NOT NULL,
    TripTypeName VARCHAR(50),
    CreatedDate DATETIME DEFAULT GETDATE()
);
-------------------------------------------------------------
-------------------------------------------------------------

CREATE TABLE Fact_Trip (
    trip_key INT IDENTITY(1,1) PRIMARY KEY,
    -- Dimension Keys (Foreign Keys)
    date_key INT,
    time_key INT,
    vendor_key INT,
    pickup_location_key INT,
    dropoff_location_key INT,
    passenger_key INT,
    trip_type_key INT,
    -- Measures
    trip_duration_sec INT,
    trip_distance_km FLOAT,
    passenger_count INT
);

-------------------------------------------------------------
-------------------------------------------------------------

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

-------------------------------------------------------------
-------------------------------------------------------------

select * from Dim_Date
select * from Dim_Time
select * from Dim_Vendor
select * from Dim_Location
select * from Dim_Passenger
select * from Dim_TripType
select * from Fact_Trip

SELECT COUNT(*) FROM dbo.stg_trips;

-------------------------------------------------------------
-------------------------------------------------------------
