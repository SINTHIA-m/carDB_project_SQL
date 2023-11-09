--Read Data --
select * 
from dbo.carDB

--Total Cars : To get a count of total records--
 
Select count(*) from dbo.carDB

--The manager asked the employee How many cars will be available in 2023?

  Select count (*) from dbo.carDB where year= 2023
  
  --The manager asked the employee How many cars is available in 2020,2021,2023--

  Select count (*) from dbo.carDB where year in (2020,2021,2023) group by year;

  --Client asked me to print the total of all cars by year.I don't want to see all the details.--

  select year , count (*) from dbo.carDB group by year;

  -- Client asked to car dealer agent How many diesel cars will be there in 2020?--
  

     SELECT COUNT(*) AS DieselCarCount
     FROM dbo.carDB
     WHERE Fuel = 'Diesel'
     AND Year = 2020;

 --Client requested a car dealer agent how many petrol cars will be there is 2020?
   
   Select COUNT(*) AS PetrolCarCount 
   From dbo.carDB
   Where fuel='petrol'
   and year=2020;


   -- The Manager told the employee to give a print all the fuel cars (petrol,diesel,and CNG) come by all year?--

     SELECT *
     FROM dbo.carDB
     WHERE Fuel IN ('Petrol', 'Diesel', 'CNG');



	--Manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
	  
	  SELECT Year, COUNT(*) AS CarCount
      FROM dbo.carDB
      GROUP BY Year
      HAVING COUNT(*) > 100;

	--The manager said to the employee all cars count details between 2015 and 2023--
	  
	  SELECT Year, COUNT(*) AS CarCount
      FROM dbo.carDB
      WHERE Year BETWEEN 2015 AND 2023
      GROUP BY Year;

  --The manager said to the employee all cars details between 2015 to 2023. We need complete list.-- 
  
    SELECT *
    FROM dbo.carDB
    WHERE Year BETWEEN 2015 AND 2023;

    











 
