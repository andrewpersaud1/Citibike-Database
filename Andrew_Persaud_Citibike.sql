-- loading the data into the workbench
-- LOAD DATA INFILE 'C:\Users\andyt\Desktop\assign4files'
-- INTO TABLE citibiketable
-- IGNORE 1 LINES;
 

SELECT * FROM student.citibiketable;
CREATE TABLE station(id INT, name varchar(50), latitude DOUBLE, Longitude DOUBLE, PRIMARY KEY(id), FOREIGN KEY(id) REFERENCES citibiketable(startstationid));

-- stations code 
INSERT INTO stations(id, Name, latitude, longitude) SELECT DISTINCT startstationid, startstationname, startstationlatitude, startstationlongitude FROM citibiketable;
INSERT INTO stations(id, Name, latitude, longitude) SELECT DISTINCT endstationid, endstationname, endstationlatitude, endstationlongitude FROM citibiketable WHERE citibiketable.endstationid NOT IN (SELECT id FROM stations);

-- trips code
INSERT INTO trips(stationid, mintripduration, maxtripduration, avgtripduration, numberusers) SELECT DISTINCT startstationid, MIN(tripduration), MAX(tripduration), AVG(tripduration), COUNT(startstationid) FROM citibiketable GROUP BY startstationid;

-- usage by day code monday (startday)
UPDATE citibiketable SET startday= "Monday" WHERE starttime LIKE "%7/8/2013%";
UPDATE citibiketable SET startday= "Monday" WHERE starttime LIKE "%7/15/2013%";
UPDATE citibiketable SET startday= "Monday" WHERE starttime LIKE "%7/22/2013%";
UPDATE citibiketable SET startday= "Monday" WHERE starttime LIKE "%7/29/2013%";

-- usage by day code Tuesday (startday)
UPDATE citibiketable SET startday= "Tuesday" WHERE starttime LIKE "%7/2/2013%";
UPDATE citibiketable SET startday= "Tuesday" WHERE starttime LIKE "%7/9/2013%";
UPDATE citibiketable SET startday= "Tuesday" WHERE starttime LIKE "%7/16/2013%";
UPDATE citibiketable SET startday= "Tuesday" WHERE starttime LIKE "%7/23/2013%";
UPDATE citibiketable SET startday= "Tuesday" WHERE starttime LIKE "%7/30/2013%";

-- usage by day code Wednesday (startday)
UPDATE citibiketable SET startday= "Wednesday" WHERE starttime LIKE "%7/3/2013%";
UPDATE citibiketable SET startday= "Wednesday" WHERE starttime LIKE "%7/10/2013%";
UPDATE citibiketable SET startday= "Wednesday" WHERE starttime LIKE "%7/17/2013%";
UPDATE citibiketable SET startday= "Wednesday" WHERE starttime LIKE "%7/24/2013%";
UPDATE citibiketable SET startday= "Wednesday" WHERE starttime LIKE "%7/31/2013%";

-- usage by day code Thursday (startday)
UPDATE citibiketable SET startday= "Thursday" WHERE starttime LIKE "%7/4/2013%";
UPDATE citibiketable SET startday= "Thursday" WHERE starttime LIKE "%7/11/2013%";
UPDATE citibiketable SET startday= "Thursday" WHERE starttime LIKE "%7/18/2013%";
UPDATE citibiketable SET startday= "Thursday" WHERE starttime LIKE "%7/25/2013%";

-- usage by day code Friday (startday)
UPDATE citibiketable SET startday= "Friday" WHERE starttime LIKE "%7/5/2013%";
UPDATE citibiketable SET startday= "Friday" WHERE starttime LIKE "%7/12/2013%";
UPDATE citibiketable SET startday= "Friday" WHERE starttime LIKE "%7/19/2013%";
UPDATE citibiketable SET startday= "Friday" WHERE starttime LIKE "%7/26/2013%";

-- usage by day code Saturday (startday)
UPDATE citibiketable SET startday= "Saturday" WHERE starttime LIKE "%7/6/2013%";
UPDATE citibiketable SET startday= "Saturday" WHERE starttime LIKE "%7/13/2013%";
UPDATE citibiketable SET startday= "Saturday" WHERE starttime LIKE "%7/20/2013%";
UPDATE citibiketable SET startday= "Saturday" WHERE starttime LIKE "%7/27/2013%";

-- usage by day code Sunday (startday)
UPDATE citibiketable SET startday= "Sunday" WHERE starttime LIKE "%7/7/2013%";
UPDATE citibiketable SET startday= "Sunday" WHERE starttime LIKE "%7/14/2013%";
UPDATE citibiketable SET startday= "Sunday" WHERE starttime LIKE "%7/21/2013%";
UPDATE citibiketable SET startday= "Sunday" WHERE starttime LIKE "%7/28/2013%";




-- usage by day code Monday (stopday)
UPDATE citibiketable SET stopday= "Monday" WHERE stoptime LIKE "%7/1/2013%";
UPDATE citibiketable SET stopday= "Monday" WHERE stoptime LIKE "%7/8/2013%";
UPDATE citibiketable SET stopday= "Monday" WHERE stoptime LIKE "%7/15/2013%";
UPDATE citibiketable SET stopday= "Monday" WHERE stoptime LIKE "%7/22/2013%";
UPDATE citibiketable SET stopday= "Monday" WHERE stoptime LIKE "%7/29/2013%";

-- usage by day code Tuesday (stopday)
UPDATE citibiketable SET stopday= "Tuesday" WHERE stoptime LIKE "%7/2/2013%";
UPDATE citibiketable SET stopday= "Tuesday" WHERE stoptime LIKE "%7/9/2013%";
UPDATE citibiketable SET stopday= "Tuesday" WHERE stoptime LIKE "%7/16/2013%";
UPDATE citibiketable SET stopday= "Tuesday" WHERE stoptime LIKE "%7/23/2013%";
UPDATE citibiketable SET stopday= "Tuesday" WHERE stoptime LIKE "%7/30/2013%";

-- usage by day code Wednesday (stopday)
UPDATE citibiketable SET stopday= "Wednesday" WHERE stoptime LIKE "%7/3/2013%";
UPDATE citibiketable SET stopday= "Wednesday" WHERE stoptime LIKE "%7/10/2013%";
UPDATE citibiketable SET stopday= "Wednesday" WHERE stoptime LIKE "%7/17/2013%";
UPDATE citibiketable SET stopday= "Wednesday" WHERE stoptime LIKE "%7/24/2013%";
UPDATE citibiketable SET stopday= "Wednesday" WHERE stoptime LIKE "%7/31/2013%";

-- usage by day code Thursday (stopday)
UPDATE citibiketable SET stopday= "Thursday" WHERE stoptime LIKE "%7/4/2013%";
UPDATE citibiketable SET stopday= "Thursday" WHERE stoptime LIKE "%7/11/2013%";
UPDATE citibiketable SET stopday= "Thursday" WHERE stoptime LIKE "%7/18/2013%";
UPDATE citibiketable SET stopday= "Thursday" WHERE stoptime LIKE "%7/25/2013%";
UPDATE citibiketable SET stopday= "Thursday" WHERE stoptime LIKE "%8/1/2013%";

-- usage by day code Friday (stopday)
UPDATE citibiketable SET stopday= "Friday" WHERE stoptime LIKE "%7/5/2013%";
UPDATE citibiketable SET stopday= "Friday" WHERE stoptime LIKE "%7/12/2013%";
UPDATE citibiketable SET stopday= "Friday" WHERE stoptime LIKE "%7/19/2013%";
UPDATE citibiketable SET stopday= "Friday" WHERE stoptime LIKE "%7/26/2013%";

-- usage by day code Saturday (stopday)
UPDATE citibiketable SET stopday= "Saturday" WHERE stoptime LIKE "%7/6/2013%";
UPDATE citibiketable SET stopday= "Saturday" WHERE stoptime LIKE "%7/13/2013%";
UPDATE citibiketable SET stopday= "Saturday" WHERE stoptime LIKE "%7/20/2013%";
UPDATE citibiketable SET stopday= "Saturday" WHERE stoptime LIKE "%7/27/2013%";

-- usage by day code Sunday (stopday)
UPDATE citibiketable SET stopday= "Sunday" WHERE stoptime LIKE "%7/7/2013%";
UPDATE citibiketable SET stopday= "Sunday" WHERE stoptime LIKE "%7/14/2013%";
UPDATE citibiketable SET stopday= "Sunday" WHERE stoptime LIKE "%7/21/2013%";
UPDATE citibiketable SET stopday= "Sunday" WHERE stoptime LIKE "%7/28/2013%";

INSERT INTO usagebyday(stationid, NumberUsersWeekday, NumberUsersWeekend) SELECT DISTINCT startstationid, COUNT(CASE WHEN startday = 'Monday' THEN 1 WHEN startday = 'Tuesday' THEN 1 WHEN startday = 'Wednesday' THEN 1 WHEN startday = 'Thursday'THEN 1 WHEN startday = 'Friday' THEN 1 END), COUNT(CASE WHEN startday = 'Saturday' THEN 1 WHEN startday = 'Sunday' THEN 1 END) FROM citibiketable GROUP BY startstationid;



-- usage by gender 
INSERT INTO usagebygender(stationid, numbermaleusers, numberfemaleusers) SELECT startstationid, COUNT(CASE WHEN gender = 1 THEN 1 END) , COUNT(CASE WHEN gender = 2 THEN 1 END) FROM citibiketable GROUP BY startstationid;



-- usage by age
 INSERT INTO usagebyage(stationid, numberusersunder18, numberusers18to40, numberusersover40) SELECT startstationid, COUNT(CASE WHEN birthyear > 1995 THEN 1 END) AS UNDER_18, COUNT(CASE WHEN birthyear < 1995 AND birthyear > 1973 THEN 1 END) AS _18TO40, COUNT(CASE WHEN birthyear < 1973 THEN 1 END) AS _OVER_40 FROM citibiketable GROUP BY startstationid;
 SELECT * FROM usagebyage WHERE numberusersunder18 > 0;
 

 
 -- 10 most frequent between any two stations by the day of the week
INSERT INTO frequent10trips (startstationid, endstationid, monday, tuesday, wednesday, thursday, friday, saturday, sunday) SELECT startstationid, endstationid, COUNT(CASE WHEN startday = 'Monday' THEN 1 END) AS MON, COUNT(CASE WHEN startday = 'Tuesday' THEN 1 END) AS Tues, COUNT(CASE WHEN startday = 'Wednesday' THEN 1 END) AS Wed, COUNT(CASE WHEN startday = 'Thursday' THEN 1 END) AS Thurs, COUNT(CASE WHEN startday = 'Friday' THEN 1 END) AS Fri, COUNT(CASE WHEN startday = 'Saturday' THEN 1 END) AS Sat, COUNT(CASE WHEN startday = 'Sunday' THEN 1 END) AS Sun  FROM citibiketable GROUP BY startstationid, endstationid;
 SELECT * FROM student.frequent10trips;
 
-- usage pattern gender and age for any given station
SELECT startstationid, endstationid, monday FROM frequent10trips ORDER BY monday DESC LIMIT 10;
SELECT startstationid, endstationid, tuesday FROM frequent10trips ORDER BY tuesday DESC LIMIT 10;
SELECT startstationid, endstationid, wednesday FROM frequent10trips ORDER BY wednesday DESC LIMIT 10;
SELECT startstationid, endstationid, thursday FROM frequent10trips ORDER BY thursday DESC LIMIT 10;
SELECT startstationid, endstationid, friday FROM frequent10trips ORDER BY friday DESC LIMIT 10;
SELECT startstationid, endstationid, saturday FROM frequent10trips ORDER BY saturday DESC LIMIT 10;
SELECT startstationid, endstationid, sunday FROM frequent10trips ORDER BY sunday DESC LIMIT 10;

-- usage by genderage
INSERT INTO usagebygenderage(stationid, numbermaleusersunder18, numbermaleusers18to40, numbermaleusersover40, numberfemaleusersunder18, numberfemaleusers18to40, numberfemaleusersover40) SELECT startstationid, COUNT(CASE WHEN gender = 1 AND birthyear > 1995 THEN 1 END) AS M_UNDER_18, COUNT(CASE WHEN gender = 1 AND birthyear < 1995 AND birthyear > 1973 THEN 1 END) AS M_18TO40, COUNT(CASE WHEN gender = 1 AND birthyear < 1973 THEN 1 END) AS M_OVER_40, COUNT(CASE WHEN gender = 2 AND birthyear > 1995 THEN 1 END) AS F_UNDER_18, COUNT(CASE WHEN gender = 2 AND birthyear < 1995 AND birthyear > 1973 THEN 1 END) AS F_18TO40, COUNT(CASE WHEN gender = 2 AND birthyear < 1973 THEN 1 END) AS F_OVER_40 FROM citibiketable GROUP BY startstationid;

-- vacant bike stations
INSERT INTO vacantdormantbikes 
SELECT startstationid, COUNT(startstationid) FROM citibiketable GROUP BY startstationid; 
SELECT stationid, count FROM vacantdormantbikes ORDER BY count ASC LIMIT 5;

-- zip codes for the bike stations
SELECT * FROM stations;
SELECT zipcodes, SUM(numberusers) FROM trips GROUP BY zipcodes ORDER BY SUM(numberusers) DESC LIMIT 1;
SELECT * FROM trips;