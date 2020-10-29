
CREATE TABLE "Aviation_Incidence" (
    "ID_av" int   NOT NULL,
    "Date" varchar   NOT NULL,
    "Country" varchar   NOT NULL,
    "City_State" varchar   NOT NULL,
    "Make" varchar   NOT NULL,
    "Model" varchar   NOT NULL,
    "Latitude" varchar   NOT NULL,
    "Longitude" varchar   NOT NULL,
    "Plane" varchar   NOT NULL,
    CONSTRAINT "pk_Aviation_Incidence" PRIMARY KEY (
        "ID_av"
     )
);

CREATE TABLE "Weather_Data" (
    "ID_w" int   NOT NULL,
    "Date" varchar   NOT NULL,
    "Latitude" varchar   NOT NULL,
    "Longitude" varchar   NOT NULL,
    "IncidentID" INT   NOT NULL,
    "Temperature" varchar   NOT NULL,
    "Max_Temp" varchar   NOT NULL,
    "Wind_Speed" varchar   NOT NULL,
    "Visability" varchar   NOT NULL,
    "Precipitation" varchar   NOT NULL,
    "Humidity" varchar   NOT NULL,
    "Conditions" varchar   NOT NULL,
    CONSTRAINT "pk_Weather_Data" PRIMARY KEY (
        "ID_w"
     )
);

CREATE TABLE "Wiki_data" (
    "ID_p" varchar   NOT NULL,
    "Description" varchar   NOT NULL,
    "url" varchar   NOT NULL,
    CONSTRAINT "pk_Wiki_data" PRIMARY KEY (
        "ID_p"
     )
);

ALTER TABLE "Aviation_Incidence" ADD CONSTRAINT "fk_Aviation_Incidence_Plane" FOREIGN KEY("Plane")
REFERENCES "Wiki_data" ("ID_p");

ALTER TABLE "Weather_Data" ADD CONSTRAINT "fk_Weather_Data_IncidentID" FOREIGN KEY("IncidentID")
REFERENCES "Aviation_Incidence" ("ID_av");