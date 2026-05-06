USE NYC_Taxi_STG;
GO

CREATE TABLE dbo.stg_trips (
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




USE NYC_Taxi_STG;
SELECT COUNT(*) FROM dbo.stg_trips;


