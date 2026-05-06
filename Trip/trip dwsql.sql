CREATE DATABASE NYC_Taxi_STG;
CREATE DATABASE NYC_Taxi_DWH;



USE NYC_Taxi_STG;

CREATE TABLE stg_trips (
    id VARCHAR(50),
    vendor_id INT,
    pickup_datetime DATETIME,
    dropoff_datetime DATETIME,
    passenger_count INT,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    trip_duration INT
);



CREATE TABLE Dim_Date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    year INT,
    month INT,
    day INT
);