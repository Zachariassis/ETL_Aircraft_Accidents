CREATE TABLE Aviation_data(
    id serial primary key NOT NULL,
    date character varying(50),
    country character varying(50),
    city_state character varying(50),
    make character varying(50),
    model character varying(50),
    injury_severity character varying(50),
    aircraft_damage character varying(50),
    latitude double precision,
    longitude double precision
);

Select * From Aviation_data;

CREATE TABLE Make_Model(
	id serial primary key NOT NULL,
    make varchar(50),
	model varchar(50)
);

Select * From Make_Model;