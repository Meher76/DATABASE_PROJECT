create database project;
use project;

create table profile(
   profile_id int primary key,
   jobseeker_id int not null,
   college varchar(20),
   department varchar(10),
    education varchar(30),
   foreign key (jobseeker_id) references  jobseeker(jobseeker_id)
);

select * from profile;

select college,department from profile;

select college from profile where college='Stanford';

select profile_id,college from profile where college='Stanford';

select profile.education ,jobseeker_id from profile where college='Harvard';

select profile.education ,jobseeker_id ,profile.college from profile where college='Harvard';

select profile.profile_id from profile where profile_id>105;

select profile.profile_id,education from profile where profile_id>103;

select profile.profile_id from profile where profile_id<108 and college='Caltech';

select profile.profile_id from profile where profile_id<109 or college='Caltech';

select profile.profile_id,education from profile where profile_id between 112 and 118;

select jobseeker_id  from profile where jobseeker_id  in(112,119);

select * from profile where jobseeker_id  in(11,19);

select* from profile where profile.department  in('CSE','CIVIL');

select* from profile where profile.department  not in('CSE','CIVIL');

select * from profile limit 5;

select education ,profile.jobseeker_id from profile  where profile_id>107 limit 5;

select profile.jobseeker_id,education from profile order by education desc ;

select * from profile order by education desc ;

select count(profile.profile_id) from profile;

select profile.education ,count(jobseeker_id)from profile group by education;





INSERT INTO profile (profile_id, jobseeker_id, college, department, education)
VALUES
( 101,1, 'Stanford', 'CSE', 'B.Tech'),
( 102, 2,'Harvard', 'ECE', 'M.Tech'),
( 103, 3,'MIT', 'IT', 'B.Sc'),
( 104,4, 'Caltech', 'MECH', 'Diploma'),
( 105, 5,'Oxford', 'CIVIL', 'PhD'),
( 106,6, 'Cambridge', 'IT', 'MCA'),
( 107, 7,'Stanford', 'CSE', 'B.Tech'),
( 108, 8,'Harvard', 'EEE', 'M.Sc'),
( 109, 9,'MIT', 'CSE', 'B.Tech'),
(110, 10,'Caltech', 'ECE', 'M.Tech'),
( 111,11, 'Oxford', 'MECH', 'B.E'),
( 112, 12,'Cambridge', 'IT', 'M.Tech'),
( 113, 13,'Stanford', 'CIVIL', 'Diploma'),
( 114, 14,'Harvard', 'CSE', 'MCA'),
( 115, 15,'MIT', 'EEE', 'PhD'),
( 116,16, 'Caltech', 'ECE', 'B.Sc'),
( 117,17, 'Oxford', 'MECH', 'B.Tech'),
( 118,18, 'Cambridge', 'IT', 'M.Tech'),
( 119,19, 'Stanford', 'CIVIL', 'B.E'),
( 120,20, 'Harvard', 'CSE', 'PhD');


create table jobseeker(
    jobseeker_id int primary key,
    first_name varchar (20),
    last_name varchar (20),
    phone_number numeric not null,
    address      varchar(20),
    email        varchar(30)
);

select * from jobseeker;



INSERT INTO jobseeker (jobseeker_id, first_name, last_name, phone_number, address, email) VALUES
(1, 'Alice', 'Johnson', 9876543210, '123 Main St', 'alice.johnson@example.com'),
(2, 'Bob', 'Smith', 8765432109, '456 Oak St', 'bob.smith@example.com'),
(3, 'Charlie', 'Brown', 7654321098, '789 Pine St', 'charlie.brown@example.com'),
(4, 'Diana', 'Ross', 6543210987, '321 Elm St', 'diana.ross@example.com'),
(5, 'Eve', 'Williams', 5432109876, '234 Maple Ave', 'eve.williams@example.com'),
(6, 'Frank', 'Taylor', 4321098765, '567 Cedar Ave', 'frank.taylor@example.com'),
(7, 'Grace', 'Miller', 3210987654, '890 Birch Blvd', 'grace.miller@example.com'),
(8, 'Hank', 'Wilson', 2109876543, '123 Aspen Rd', 'hank.wilson@example.com'),
(9, 'Ivy', 'Davis', 1987654321, '456 Spruce St', 'ivy.davis@example.com'),
(10, 'Jake', 'Clark', 1234567890, '789 Walnut St', 'jake.clark@example.com'),
(11, 'Liam', 'Garcia', 2345678901, '321 Chestnut St', 'liam.garcia@example.com'),
(12, 'Mia', 'Lopez', 3456789012, '234 Willow Ave', 'mia.lopez@example.com'),
(13, 'Noah', 'Martinez', 4567890123, '567 Palm Blvd', 'noah.martinez@example.com'),
(14, 'Olivia', 'Hernandez', 5678901234, '890 Poplar Dr', 'olivia.hernandez@example.com'),
(15, 'Paul', 'Walker', 6789012345, '123 Cypress Rd', 'paul.walker@example.com'),
(16, 'Quinn', 'White', 7890123456, '456 Redwood St', 'quinn.white@example.com'),
(17, 'Rita', 'Moore', 8901234567, '789 Sequoia Blvd', 'rita.moore@example.com'),
(18, 'Sam', 'Lee', 9012345678, '321 Fir Ave', 'sam.lee@example.com'),
(19, 'Tina', 'Hall', 1123456789, '234 Magnolia Rd', 'tina.hall@example.com'),
(20, 'Victor', 'King', 2234567890, '567 Dogwood Blvd', 'victor.king@example.com');



select jobseeker.first_name,jobseeker.phone_number from jobseeker;

select jobseeker.last_name from jobseeker where jobseeker_id>17;

select * from jobseeker where phone_number=5432109876;

select email from jobseeker where address='123 Cypress Rd';

select jobseeker_id from jobseeker where address in ('456 Spruce St','567 Dogwood Blvd');

select * from jobseeker where address in ('456 Spruce St','567 Dogwood Blvd');

select  * from jobseeker where jobseeker_id<9 limit 3;

select jobseeker_id from jobseeker order by first_name;

select count(jobseeker.first_name) from jobseeker;

select jobseeker.first_name from jobseeker where address='321 Chestnut St'  order by last_name desc ;


create table Company (

company_id varchar (20) not null,
    name   varchar (200),
 location  varchar (200),

 constraint pk_Company primary key (company_id)
);

select * from Company;

  drop table Company;


    insert into company (company_id, name, location) values (1, 'Augmedix Bangladesh', 'Dhaka');
    insert into company (company_id, name, location) values (2, 'SSL Wireless', 'Dhaka');
    insert into company (company_id, name, location) values (3, 'Dream71 Bangladesh', 'Chattogram');
    insert into company (company_id, name, location) values (4, 'Magnito Digital', 'Khulna');
    insert into company (company_id, name, location) values (5, 'Coderstrust Bangladesh', 'Rajshahi');
    insert into company (company_id, name, location) values (6, 'Pathao Limited', 'Sylhet');
    insert into company (company_id, name, location) values (7, 'Telenor Health', 'Barishal');
    insert into company (company_id, name, location) values (8, 'Pridesys It', 'Rangpur');


    insert into company (company_id, name, location) values (9, 'Aarong', 'Dhaka');
    insert into company (company_id, name, location) values (10, 'Yellow', 'Chattogram');
    insert into company (company_id, name, location) values (11, 'Artisti Collection', 'Cumilla');
    insert into company (company_id, name, location) values (12, 'Ecstasy', 'Bogura');
    insert into company (company_id, name, location) values (13, 'Sailor', 'Jashore');
    insert into company (company_id, name, location) values (14, 'texmart', 'moulvibazar');
    insert into company (company_id, name, location) values (15, 'Denim expert', 'Khulna');
    insert into company (company_id, name, location) values (16, 'Cats Eye', 'Noakhali');
    insert into company (company_id, name, location) values (17, 'Twelve Clothing', 'Kushtia');
    insert into company (company_id, name, location) values (18, 'Fahim Garments', 'Pabna');

    insert into company (company_id, name, location) values (19, 'Brac Bank', 'Dhaka');
    insert into company (company_id, name, location) values (20, 'Beximco Group', 'Gopalganj');
    insert into company (company_id, name, location) values (21, 'Unilever Bangladesh', 'Savar');
    insert into company (company_id, name, location) values (22, 'Jamuna Group', 'Manikganj');
    insert into company (company_id, name, location) values (23, 'Pran-RFL Group', 'Gazipur');
    insert into company (company_id, name, location) values (24, 'Square Textiles', 'Jhalokati');
    insert into company (company_id, name, location) values (25, 'Aci Limited', 'Chattogram');
    insert into company (company_id, name, location) values (26, 'Meghna Knit Composite', 'Ghaka');


select  company.name from Company;

select  Company.name from Company where location ='Cumilla';

select  company_id from Company where location='Dhaka';

select  * from Company where location='Dhaka';

select count(company_id )from  company;

select  location from Company group by location ;

select  location from Company group by location limit 5;


select  Company.location from  company group by location;

create table Job (

job_id          varchar (20) not null,
job_title       varchar (400),
job_type        varchar (200),
job_description varchar (2000),
job_salary      varchar (30),
company_id      varchar (20),

 constraint pk_Job primary key (job_id),
  constraint fk_Job_company_id foreign key (company_id)
      references Company (company_id)
);

select * from Job;

 insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J001', 'Software Engineer', 'Full-time', 'Develop and maintain software applications.', '80000', '1');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J002', 'Data Analyst', 'Full-time', 'Analyze and interpret complex data sets.', '60000', '2');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J003', 'Network Administrator', 'Part-time', 'Manage company network infrastructure.', '50000', '3');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J004', 'HR Manager', 'Full-time', 'Oversee HR policies and practices.', '70000', '4');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J005', 'Marketing Executive', 'Full-time', 'Plan and execute marketing campaigns.', '45000', '5');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J006', 'IT Support Specialist', 'Contract', 'Provide technical support to employees.', '40000', '6');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J007', 'Graphic Designer', 'Part-time', 'Design marketing materials and visuals.', '35000', '7');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J008', 'Content Writer', 'Full-time', 'Write and edit company content.', '30000', '8');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J009', 'Project Manager', 'Full-time', 'Lead and manage company projects.', '85000', '9');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J010', 'Business Analyst', 'Full-time', 'Identify business needs and solutions.', '70000', '10');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J011', 'Software Tester', 'Full-time', 'Test and debug software products.', '45000', '11');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J012', 'Database Administrator', 'Full-time', 'Manage and secure company databases.', '60000', '12');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J013', 'UI/UX Designer', 'Contract', 'Design user-friendly interfaces.', '55000', '13');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J014', 'Social Media Manager', 'Full-time', 'Manage company social media platforms.', '40000', '14');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J015', 'Mobile App Developer', 'Full-time', 'Develop and maintain mobile apps.', '75000', '15');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J016', 'Cloud Engineer', 'Full-time', 'Implement and manage cloud services.', '80000', '16');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J017', 'Sales Manager', 'Full-time', 'Manage and lead the sales team.', '70000', '17');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J018', 'SEO Specialist', 'Part-time', 'Optimize company website for SEO.', '35000', '18');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J019', 'Data Scientist', 'Full-time', 'Develop predictive models.', '90000', '19');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J020', 'Cybersecurity Analyst', 'Full-time', 'Protect company data and systems.', '85000', '20');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J021', 'Electrical Engineer', 'Full-time', 'Design and oversee electrical systems.', '75000', '21');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J022', 'Digital Marketing Specialist', 'Contract', 'Plan and execute digital campaigns.', '50000', '22');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J023', 'Logistics Manager', 'Full-time', 'Oversee supply chain operations.', '65000', '23');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J024', 'Finance Officer', 'Full-time', 'Manage company finances.', '60000', '24');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J025', 'Legal Advisor', 'Contract', 'Provide legal counsel to the company.', '70000', '25');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J026', 'Architect', 'Full-time', 'Design and oversee building projects.', '80000', '26');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J027', 'System Analyst', 'Full-time', 'Analyze and improve IT systems.', '75000', '1');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J028', 'Operations Manager', 'Full-time', 'Manage company operations.', '85000', '2');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J029', 'Technical Writer', 'Part-time', 'Create technical documentation.', '35000', '3');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J030', 'Research Scientist', 'Full-time', 'Conduct scientific research.', '95000', '4');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J031', 'IT Manager', 'Full-time', 'Oversee IT operations.', '80000', '5');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J032', 'Quality Assurance Engineer', 'Full-time', 'Ensure product quality.', '60000', '6');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J033', 'Customer Service Representative', 'Part-time', 'Handle customer queries.', '30000', '7');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J034', 'Procurement Officer', 'Full-time', 'Handle company procurement.', '55000', '8');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J035', 'Trainer', 'Contract', 'Conduct employee training.', '50000', '9');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J036', 'Animator', 'Part-time', 'Create animations for projects.', '40000', '10');
    insert into job (job_id, job_title, job_type, job_description, job_salary, company_id) values ('J037', 'HR Assistant', 'Full-time', 'Assist HR in day-to-day tasks.', '35000', '11');

select count(Job.job_id) from job;

select  Job.job_id from job where job_id>'J018';

select   * from job where job_salary <'50000';

select  Job.job_title from job where job_salary in( '55000','95000');

select Job.job_salary from job where job_title='Marketing Executive';

select Job.job_title from job group by Job.job_title;

select  Job.job_title from job order by job_title asc ;


CREATE TABLE Interview (
  Interview_no    VARCHAR(50) NOT NULL,
  date1           varchar(20)  NOT NULL,
  time1           VARCHAR(50),
  job_id          VARCHAR(20) NOT NULL,
  jobseeker_id    INT    NOT NULL,
  CONSTRAINT pk_Interview PRIMARY KEY (Interview_no, date1),
  CONSTRAINT fk_Interview_job_id FOREIGN KEY (job_id)
      REFERENCES Job (job_id),
  CONSTRAINT fk_Interview_jobseeker_id FOREIGN KEY (jobseeker_id)
      REFERENCES jobseeker (jobseeker_id)
);

select * from Interview;

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I001', TO_DATE('2024-11-25', 'YYYY-MM-DD'), '10:00 AM', 'J001', 101);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I002', TO_DATE('2024-11-26', 'YYYY-MM-DD'), '11:00 AM', 'J002', 102);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I003', TO_DATE('2024-11-27', 'YYYY-MM-DD'), '02:00 PM', 'J003', 103);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I004', TO_DATE('2024-11-28', 'YYYY-MM-DD'), '03:00 PM', 'J004', 104);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I005', TO_DATE('2024-11-29', 'YYYY-MM-DD'), '10:30 AM', 'J005', 105);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I006', TO_DATE('2024-11-30', 'YYYY-MM-DD'), '09:00 AM', 'J006', 106);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I007', TO_DATE('2024-12-01', 'YYYY-MM-DD'), '12:00 PM', 'J007', 107);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I008', TO_DATE('2024-12-02', 'YYYY-MM-DD'), '01:00 PM', 'J008', 108);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I009', TO_DATE('2024-12-03', 'YYYY-MM-DD'), '02:30 PM', 'J009', 109);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I010', TO_DATE('2024-12-04', 'YYYY-MM-DD'), '03:30 PM', 'J010', 110);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I011', TO_DATE('2024-12-05', 'YYYY-MM-DD'), '04:00 PM', 'J011', 111);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I012', TO_DATE('2024-12-06', 'YYYY-MM-DD'), '10:00 AM', 'J012', 112);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I013', TO_DATE('2024-12-07', 'YYYY-MM-DD'), '11:00 AM', 'J013', 113);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I014', TO_DATE('2024-12-08', 'YYYY-MM-DD'), '12:00 PM', 'J014', 114);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I015', TO_DATE('2024-12-09', 'YYYY-MM-DD'), '01:00 PM', 'J015', 115);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I016', TO_DATE('2024-12-10', 'YYYY-MM-DD'), '02:00 PM', 'J016', 116);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I017', TO_DATE('2024-12-11', 'YYYY-MM-DD'), '03:00 PM', 'J017', 117);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I018', TO_DATE('2024-12-12', 'YYYY-MM-DD'), '04:00 PM', 'J018', 118);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I019', TO_DATE('2024-12-13', 'YYYY-MM-DD'), '09:00 AM', 'J019', 119);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I020', TO_DATE('2024-12-14', 'YYYY-MM-DD'), '10:30 AM', 'J020', 120);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I021', TO_DATE('2024-12-15', 'YYYY-MM-DD'), '11:30 AM', 'J021', 101);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I022', TO_DATE('2024-12-16', 'YYYY-MM-DD'), '01:30 PM', 'J022', 102);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I023', TO_DATE('2024-12-17', 'YYYY-MM-DD'), '02:30 PM', 'J023', 103);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I024', TO_DATE('2024-12-18', 'YYYY-MM-DD'), '03:30 PM', 'J024', 104);

INSERT INTO Interview (Interview_no, date1, time1, job_id, jobseeker_id)
VALUES ('I025', TO_DATE('2024-12-19', 'YYYY-MM-DD'), '04:30 PM', 'J025', 105);




CREATE TABLE Apply (
  job_id          VARCHAR2(50)  NOT NULL,
  jobseeker_id    INT           NOT NULL,
  CONSTRAINT fk_Apply_job_id FOREIGN KEY (job_id)
    REFERENCES Job (job_id),
  CONSTRAINT fk_Apply_jobseeker_id FOREIGN KEY (jobseeker_id)
    REFERENCES jobseeker (jobseeker_id)
);
select * from Apply;

INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J001', 101);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J002', 102);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J003', 103);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J004', 104);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J005', 105);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J006', 106);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J007', 107);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J008', 108);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J009', 109);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J010', 110);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J024', 111);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J025', 112);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J028', 113);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J029', 114);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J030', 115);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J031', 116);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J032', 117);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J033', 118);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J034', 119);
INSERT INTO Apply (job_id, jobseeker_id) VALUES ('J027', 120);

CREATE TABLE Result (
    result_id INT PRIMARY KEY,
    job_id VARCHAR(50) NOT NULL,
    jobseeker_id INT NOT NULL,
    status VARCHAR(20),
    CONSTRAINT fk_result_job_id FOREIGN KEY (job_id) REFERENCES Job (job_id),
    CONSTRAINT fk_result_jobseeker_id FOREIGN KEY (jobseeker_id) REFERENCES jobseeker (jobseeker_id)
);

select * from Result;
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (1, 'J001', 101, 'Accepted');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (2, 'J002', 102, 'Rejected');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (3, 'J003', 103, 'Pending');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (4, 'J004', 104, 'Accepted');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (5, 'J005', 105, 'Rejected');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (6, 'J006', 106, 'Accepted');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (7, 'J007', 107, 'Pending');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (8, 'J008', 108, 'Rejected');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (9, 'J009', 109, 'Accepted');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (10, 'J010', 110, 'Pending');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (11, 'J024', 111, 'Accepted');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (12, 'J025', 112, 'Rejected');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (13, 'J028', 113, 'Pending');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (14, 'J029', 114, 'Accepted');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (15, 'J030', 115, 'Rejected');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (16, 'J031', 116, 'Accepted');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (17, 'J032', 117, 'Pending');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (18, 'J033', 118, 'Rejected');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (19, 'J034', 119, 'Accepted');
INSERT INTO Result (result_id, job_id, jobseeker_id, status) VALUES (20, 'J027', 120, 'Pending');

