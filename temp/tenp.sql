CREATE TABLE "membership_type" (
	"id"	SERIAL UNIQUE,
	"name"	VARCHAR NOT NULL,
	PRIMARY KEY("id")
);

CREATE TABLE member
(
    id                 SERIAL PRIMARY KEY,
    name               VARCHAR NOT NULL,
    registration_date  DATE    NOT NULL,
    membership_type_id INTEGER NOT NULL REFERENCES membership_type (id)
);



CREATE TABLE "land" (
	"number"	INTEGER,
	"id"	INTEGER NOT NULL,
	"cadastre_number"	VARCHAR NOT NULL UNIQUE,
	"area"	DECIMAL NOT NULL,
	"registration_date"	DATE NOT NULL,
	FOREIGN KEY("id") REFERENCES "member"("id"),
	PRIMARY KEY("number")
);

CREATE TABLE building_type
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE
);

CREATE TABLE building
(
    cadastre_number   VARCHAR PRIMARY KEY,
    land_number       INTEGER NOT NULL REFERENCES land (number),
    building_type_id  INTEGER NOT NULL REFERENCES building_type (id),
    area              DECIMAL NOT NULL,
    registration_date DATE    NOT NULL
);


