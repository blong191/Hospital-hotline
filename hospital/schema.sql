DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS patient CASCADE;
DROP TABLE IF EXISTS appointments CASCADE;
DROP TABLE IF EXISTS doctor CASCADE;
DROP TABLE IF EXISTS caregiver CASCADE;

CREATE TABLE users(
  role varchar NOT NULL,
  fname varchar(10) NOT NULL,
  lname varchar(10) NOT NULL,
  email_id bigint NOT NULL,
  phone int(10)NOT NULL,
  password bytea NOT NULL,
  date_of_birth int(10) NOT NULL,
  family_code int,
  emergency_contact int(10),
  relation_to_contact varchar,
  salary bigint
);

CREATE TABLE patient(
  name varchar(10) NOT NULL,
  pid varchar(7) NOT NULL,
  morning_med varchar(20),
  afternoon_med varchar(20),
  night_med varchar(20),
  breakfast varchar(20),
  lunch varchar(20),
  dinner varchar(20),
  missed_activity varchar(20),
  Group varchar(20),
  Admission_date varchar(20)
  age bigint
);
CREATE TABLE doctor(
  d_name varchar(10),
  d_appointment varchar(20),
  future_date date;
  comment varchar(50);
);
CREATE TABLE caregiver(
  Cname varchar(10)
)
CREATE table payment(
  total_due bigint,
  new_payment bigint
)
CREATE TABLE new(
  role2 varchar NOT NULL,
  fname2 varchar(10) NOT NULL,
  lname2 varchar(10) NOT NULL,
  email_id2 bigint NOT NULL,
  phone2 int(10)NOT NULL,
  password2 bytea NOT NULL,
  date_of_birth2 int(10) NOT NULL,
  family_code2 int,
  emergency_contact2 int(10),
  relation_to_contact2 varchar,
  salary2 bigint
)
