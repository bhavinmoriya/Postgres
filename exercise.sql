SELECT * FROM CD.bookings
SELECT * FROM CD.facilities
SELECT * FROM CD.members

SELECT name, facilities.membercost FROM CD.facilities

SELECT * FROM CD.facilities
WHERE facilities.membercost > 0

SELECT  FACID, NAME, facilities.membercost, facilities.monthlymaintenance FROM CD.facilities
WHERE 0 < facilities.membercost AND facilities.membercost < MONTHLYMAINTENANCE/50

SELECT * FROM CD.facilities
WHERE NAME ILIKE '%TenNis%'

SELECT * FROM CD.facilities
WHERE facilities.facid IN (1,5)

SELECT MEMID, members.surname, members.joindate, members.firstname FROM CD.members
WHERE members.joindate > '2012-09-01'

SELECT DISTINCT(SURNAME) FROM CD.members
ORDER BY members.surname
LIMIT 10

SELECT MAX(members.joindate) FROM CD.members

SELECT COUNT(*) FROM CD.facilities
WHERE facilities.guestcost >= 10

SELECT FACID, SUM(SLOTS) AS TOTALSLOTS from cd.bookings
WHERE EXTRACT(MONTH FROM STARTTIME) = 09
GROUP BY FACID
ORDER BY TOTALSLOTS

SELECT FACID, SUM(SLOTS) AS TOTALSLOTS from cd.bookings
GROUP BY FACID
HAVING SUM(SLOTS) > 1000
ORDER BY FACID

SELECT NAME, B.starttime FROM CD.facilities AS F
JOIN CD.bookings AS B
ON B.FACID = F.FACID
WHERE DATE(B.starttime) = '2012-09-21' AND NAME ILIKE '%TENNIS%C%'
ORDER BY B.starttime



SELECT starttime, M.firstname, M.surname FROM CD.bookings AS B
JOIN CD.MEMBERS AS M
ON B.MEMID = M.MEMID
WHERE M.firstname = 'David' and M.surname = 'Farrell'
