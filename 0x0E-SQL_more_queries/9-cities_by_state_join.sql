-- lists all cities contained in the database hbtn_0d_usa.
-- Records are sorted in order of ascending cities.id.
SELECT cities.id, cities.name, states.name
FROM cities
JOIN states
ON cities.state_id=states.id
