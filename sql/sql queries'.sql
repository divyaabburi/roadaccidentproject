SELECT * FROM roadaccident.rad;
use roadaccident;
UPDATE rad
SET accident_date = STR_TO_DATE(accident_date, '%d-%m-%Y');

-- Modify the column data type
ALTER TABLE rad
MODIFY COLUMN accident_date DATE;

########KPI 1. Select Number of casualties
select sum(number_of_casualties) as CY_casualties from rad;


## KP2 Select different type of accident severities and their numbers

select distinct(accident_severity), sum(number_of_casualties) from rad group by accident_severity;

## KPI 3 select total number of casualties by road type
select distinct(road_type),sum(number_of_casualties) from rad group by road_type;

## KPI 4 select total number of casualties by urban and rural area
select distinct(urban_or_rural_area) ,sum(number_of_casualties) from rad group by urban_or_rural_area;

Select sum(number_of_casualties) as cy_casualties from rad where year(accident_date)='2022' and road_surface_conditions='Dry';

### KPI 5 select top
select distinct(local_authority) from rad;


Select count(distinct accident_index) as cy_accidents from rad where year(accident_date)='2022';


SELECT
    CASE 
        WHEN vehicle_type IN ('Agricultural vehicle') THEN 'Agriculture'
        WHEN vehicle_type IN ('Bus or coach (17 or more pass seats)', 'Minibus (8 - 16 passenger seats)') THEN 'Bus'
        WHEN vehicle_type IN ('Goods 7.5 tonnes mgw and over', 'Goods over 3.5t. and under 7.5t', 'Van / Goods 3.5 tonnes mgw or under') THEN 'van'
        WHEN vehicle_type IN ('Motorcycle 125cc and under', 'Motorcycle 50cc and under', 'Motorcycle over 125cc and up to 500cc', 'Motorcycle over 500cc') THEN 'Bike'
        WHEN vehicle_type IN ('Other vehicle', 'Pedal cycle', 'Ridden horse') THEN 'Others'
        WHEN vehicle_type IN ('Car', 'Taxi/Private hire car') THEN 'Car'
        ELSE 'Unknown'
    END AS vehicle_group, sum(number_of_casualties) as cy_casualties
FROM
    rad group by vehicle_group;

SELECT
    CASE 
        WHEN light_conditions IN ('Darkness - lighting unknown', 'Darkness - lights lit', 'Darkness - lights unlit', 'Darkness - no lighting') THEN 'Dark'
        WHEN light_conditions = 'Daylight' THEN 'Daylight'
        ELSE 'Unknown'
    END AS light_conditions_mapped,
    COUNT(*) AS count_of_accidents
FROM
    rad
GROUP BY
    light_conditions_mapped;


SELECT road_surface_conditions, SUM(number_of_casualties) AS total_casualties
FROM rad
GROUP BY road_surface_conditions
ORDER BY total_casualties DESC;

SELECT local_authority, COUNT(*) AS num_accidents
FROM rad
GROUP BY local_authority
ORDER BY num_accidents DESC
LIMIT 10;





