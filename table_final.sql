CREATE TABLE Aviation_Incidence (
    ID_av varchar   NOT NULL,
    Date varchar   NOT NULL,
    Country varchar   NOT NULL,
    City_State varchar   NOT NULL,
    Make varchar   NOT NULL,
    Model varchar   NOT NULL,
	Injury_severity varchar,
	Aircraft_Damage varchar,
    Latitude varchar   NOT NULL,
    Longitude varchar   NOT NULL,
    Plane varchar   NOT NULL,
    CONSTRAINT pk_Aviation_Incidence PRIMARY KEY (
        ID_av
     )
);

CREATE TABLE Weather_Data (
    ID_w int NOT NULL,
    Date varchar   NOT NULL,
    Latitude varchar   NOT NULL,
    Longitude varchar   NOT NULL,
    IncidentID varchar   NOT NULL,
    Temperature varchar,
    Max_Temp varchar,
    Wind_Speed varchar,
    Visability varchar,
    Precipitation varchar,
    Humidity varchar,
    Conditions varchar,
	Cloud_cover varchar
);

CREATE TABLE Wiki_data (
    ID_p varchar   NOT NULL,
	plane_name varchar not null,
    Description varchar,
    url varchar,
    CONSTRAINT pk_Wiki_data PRIMARY KEY (
        plane_name
     )
);

ALTER TABLE Aviation_Incidence ADD CONSTRAINT fk_Aviation_Incidence_Plane FOREIGN KEY(Plane)
REFERENCES Wiki_data (plane_name);

ALTER TABLE Weather_Data ADD CONSTRAINT fk_Weather_Data_IncidentID FOREIGN KEY(IncidentID)
REFERENCES Aviation_Incidence (ID_av);

select * from Weather_Data