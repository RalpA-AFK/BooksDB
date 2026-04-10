# BooksDB
Attempt at making a database from scratch with some information shown below.

DROP TABLE salariedEmployees;
DROP TABLE commissionEmployees;
DROP TABLE basePlusCommissionEmployees;
DROP TABLE hourlyEmployees;
DROP TABLE employees;

CREATE TABLE employees (
	socialSecurityNumber varchar (30) NOT NULL,
	firstName varchar (30) NOT NULL,
	lastName varchar (30) NOT NULL,
        birthday date NOT NULL,
	employeeType varchar (30) NOT NULL,
	departmentName varchar (30) NOT NULL,
	PRIMARY KEY (socialSecurityNumber)
) ;

CREATE TABLE salariedEmployees (
	socialsecurityNumber varchar (30) NOT NULL,
	weeklySalary real NOT NULL,
	bonus real,
	PRIMARY KEY (socialSecurityNumber),
	FOREIGN KEY (socialSecurityNumber) REFERENCES employees (socialSecurityNumber)
) ;

CREATE TABLE commissionEmployees (
	socialSecurityNumber varchar (30) NOT NULL,
	grossSales int NOT NULL,
	commissionRate real NOT NULL,
	bonus real,
	PRIMARY KEY (socialSecurityNumber),
	FOREIGN KEY (socialSecurityNumber) REFERENCES employees (socialSecurityNumber)
) ;

CREATE TABLE basePlusCommissionEmployees (
	socialSecurityNumber varchar (30) NOT NULL,
	grossSales int NOT NULL,
	commissionRate real NOT NULL,
	baseSalary real NOT NULL,
	bonus real,
	PRIMARY KEY (socialSecurityNumber),
	FOREIGN KEY (socialSecurityNumber) REFERENCES employees (socialSecurityNumber)
) ;

CREATE TABLE hourlyEmployees (
	socialSecurityNumber varchar (30) NOT NULL,
	hours int NOT NULL,
	wage real NOT NULL,
	bonus real,
	PRIMARY KEY (socialSecurityNumber),
	FOREIGN KEY (socialSecurityNumber) REFERENCES employees (socialSecurityNumber)
) ;

INSERT INTO employees VALUES ('100-00-0001', 'Liam', 'Anderson', '1985-03-12', 'salariedEmployee', 'R&D');
INSERT INTO employees VALUES ('100-00-0002', 'Emma', 'Thomas', '1990-07-21', 'commissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0003', 'Noah', 'Jackson', '1988-11-03', 'basePlusCommissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0004', 'Olivia', 'White', '1992-05-18', 'hourlyEmployee', 'HR');
INSERT INTO employees VALUES ('100-00-0005', 'Ava', 'Harris', '1987-09-30', 'salariedEmployee', 'R&D');

INSERT INTO employees VALUES ('100-00-0006', 'Ethan', 'Martin', '1984-01-14', 'commissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0007', 'Sophia', 'Thompson', '1991-12-11', 'basePlusCommissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0008', 'Mason', 'Garcia', '1983-06-07', 'hourlyEmployee', 'HR');
INSERT INTO employees VALUES ('100-00-0009', 'Isabella', 'Martinez', '1989-10-22', 'salariedEmployee', 'R&D');
INSERT INTO employees VALUES ('100-00-0010', 'James', 'Robinson', '1993-04-09', 'commissionEmployee', 'SALES');

INSERT INTO employees VALUES ('100-00-0011', 'Lucas', 'Clark', '1986-02-15', 'basePlusCommissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0012', 'Mia', 'Rodriguez', '1994-08-19', 'hourlyEmployee', 'HR');
INSERT INTO employees VALUES ('100-00-0013', 'Benjamin', 'Lewis', '1982-12-25', 'salariedEmployee', 'R&D');
INSERT INTO employees VALUES ('100-00-0014', 'Charlotte', 'Lee', '1990-03-03', 'commissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0015', 'Henry', 'Walker', '1985-07-16', 'basePlusCommissionEmployee', 'SALES');

INSERT INTO employees VALUES ('100-00-0016', 'Amelia', 'Hall', '1991-09-05', 'hourlyEmployee', 'HR');
INSERT INTO employees VALUES ('100-00-0017', 'Alexander', 'Allen', '1988-01-28', 'salariedEmployee', 'R&D');
INSERT INTO employees VALUES ('100-00-0018', 'Harper', 'Young', '1992-06-11', 'commissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0019', 'Daniel', 'King', '1983-10-08', 'basePlusCommissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0020', 'Evelyn', 'Wright', '1995-02-14', 'hourlyEmployee', 'HR');

-- continuing pattern until 50
INSERT INTO employees VALUES ('100-00-0021', 'Logan', 'Scott', '1986-04-20', 'salariedEmployee', 'R&D');
INSERT INTO employees VALUES ('100-00-0022', 'Chloe', 'Green', '1991-07-13', 'commissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0023', 'Jackson', 'Baker', '1987-11-29', 'basePlusCommissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0024', 'Grace', 'Adams', '1993-05-01', 'hourlyEmployee', 'HR');
INSERT INTO employees VALUES ('100-00-0025', 'Sebastian', 'Nelson', '1984-09-17', 'salariedEmployee', 'R&D');

INSERT INTO employees VALUES ('100-00-0026', 'Victoria', 'Carter', '1990-01-09', 'commissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0027', 'Jack', 'Mitchell', '1989-03-27', 'basePlusCommissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0028', 'Aria', 'Perez', '1994-10-12', 'hourlyEmployee', 'HR');
INSERT INTO employees VALUES ('100-00-0029', 'Owen', 'Roberts', '1985-06-06', 'salariedEmployee', 'R&D');
INSERT INTO employees VALUES ('100-00-0030', 'Lily', 'Turner', '1992-08-23', 'commissionEmployee', 'SALES');

INSERT INTO employees VALUES ('100-00-0031', 'Matthew', 'Phillips', '1983-12-02', 'basePlusCommissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0032', 'Zoey', 'Campbell', '1991-02-18', 'hourlyEmployee', 'HR');
INSERT INTO employees VALUES ('100-00-0033', 'David', 'Parker', '1987-04-14', 'salariedEmployee', 'R&D');
INSERT INTO employees VALUES ('100-00-0034', 'Ella', 'Evans', '1990-09-09', 'commissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0035', 'Samuel', 'Edwards', '1986-11-21', 'basePlusCommissionEmployee', 'SALES');

INSERT INTO employees VALUES ('100-00-0036', 'Hannah', 'Collins', '1993-03-30', 'hourlyEmployee', 'HR');
INSERT INTO employees VALUES ('100-00-0037', 'Andrew', 'Stewart', '1984-07-07', 'salariedEmployee', 'R&D');
INSERT INTO employees VALUES ('100-00-0038', 'Layla', 'Sanchez', '1992-05-15', 'commissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0039', 'Ryan', 'Morris', '1988-08-08', 'basePlusCommissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0040', 'Natalie', 'Rogers', '1995-01-25', 'hourlyEmployee', 'HR');

INSERT INTO employees VALUES ('100-00-0041', 'Christopher', 'Reed', '1983-02-10', 'salariedEmployee', 'R&D');
INSERT INTO employees VALUES ('100-00-0042', 'Sofia', 'Cook', '1991-06-18', 'commissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0043', 'Dylan', 'Morgan', '1986-10-27', 'basePlusCommissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0044', 'Brooklyn', 'Bell', '1994-04-04', 'hourlyEmployee', 'HR');
INSERT INTO employees VALUES ('100-00-0045', 'Anthony', 'Murphy', '1985-09-13', 'salariedEmployee', 'R&D');

INSERT INTO employees VALUES ('100-00-0046', 'Savannah', 'Bailey', '1990-12-01', 'commissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0047', 'Isaac', 'Rivera', '1987-03-19', 'basePlusCommissionEmployee', 'SALES');
INSERT INTO employees VALUES ('100-00-0048', 'Audrey', 'Cooper', '1993-07-26', 'hourlyEmployee', 'HR');
INSERT INTO employees VALUES ('100-00-0049', 'Julian', 'Richardson', '1984-05-05', 'salariedEmployee', 'R&D');
INSERT INTO employees VALUES ('100-00-0050', 'Nora', 'Cox', '1992-11-11', 'commissionEmployee', 'SALES');


INSERT INTO salariedEmployees VALUES ('100-00-0001', 2200.00, 200);
INSERT INTO salariedEmployees VALUES ('100-00-0005', 2100.00, 150);
INSERT INTO salariedEmployees VALUES ('100-00-0009', 2300.00, 250);
INSERT INTO salariedEmployees VALUES ('100-00-0013', 2500.00, 300);
INSERT INTO salariedEmployees VALUES ('100-00-0017', 2400.00, 180);
INSERT INTO salariedEmployees VALUES ('100-00-0021', 2600.00, 220);
INSERT INTO salariedEmployees VALUES ('100-00-0025', 2700.00, 350);
INSERT INTO salariedEmployees VALUES ('100-00-0029', 2550.00, 190);
INSERT INTO salariedEmployees VALUES ('100-00-0033', 2650.00, 210);
INSERT INTO salariedEmployees VALUES ('100-00-0037', 2800.00, 400);
INSERT INTO salariedEmployees VALUES ('100-00-0041', 2900.00, 500);
INSERT INTO salariedEmployees VALUES ('100-00-0045', 2750.00, 320);
INSERT INTO salariedEmployees VALUES ('100-00-0049', 3000.00, 600);

INSERT INTO commissionEmployees VALUES ('100-00-0002', 12000, 0.05, 200);
INSERT INTO commissionEmployees VALUES ('100-00-0006', 15000, 0.06, 250);
INSERT INTO commissionEmployees VALUES ('100-00-0010', 18000, 0.04, 150);
INSERT INTO commissionEmployees VALUES ('100-00-0014', 20000, 0.07, 300);
INSERT INTO commissionEmployees VALUES ('100-00-0018', 17000, 0.05, 180);
INSERT INTO commissionEmployees VALUES ('100-00-0022', 21000, 0.06, 220);
INSERT INTO commissionEmployees VALUES ('100-00-0026', 19000, 0.05, 200);
INSERT INTO commissionEmployees VALUES ('100-00-0030', 22000, 0.07, 260);
INSERT INTO commissionEmployees VALUES ('100-00-0034', 16000, 0.04, 140);
INSERT INTO commissionEmployees VALUES ('100-00-0038', 23000, 0.06, 300);
INSERT INTO commissionEmployees VALUES ('100-00-0042', 24000, 0.05, 280);
INSERT INTO commissionEmployees VALUES ('100-00-0046', 25000, 0.07, 350);
INSERT INTO commissionEmployees VALUES ('100-00-0050', 26000, 0.06, 400);


INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0003', 14000, 0.04, 1200, 100);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0007', 16000, 0.05, 1300, 150);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0011', 18000, 0.06, 1400, 200);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0015', 20000, 0.05, 1500, 180);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0019', 22000, 0.06, 1600, 220);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0023', 24000, 0.05, 1700, 250);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0027', 26000, 0.07, 1800, 300);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0031', 28000, 0.06, 1900, 320);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0035', 30000, 0.05, 2000, 350);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0039', 32000, 0.06, 2100, 400);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0043', 34000, 0.07, 2200, 450);
INSERT INTO basePlusCommissionEmployees VALUES ('100-00-0047', 36000, 0.06, 2300, 500);

INSERT INTO hourlyEmployees VALUES ('100-00-0004', 30, 25.5, 50);
INSERT INTO hourlyEmployees VALUES ('100-00-0008', 35, 20.0, 40);
INSERT INTO hourlyEmployees VALUES ('100-00-0012', 40, 22.5, 60);
INSERT INTO hourlyEmployees VALUES ('100-00-0016', 28, 18.0, 30);
INSERT INTO hourlyEmployees VALUES ('100-00-0020', 32, 21.0, 45);
INSERT INTO hourlyEmployees VALUES ('100-00-0024', 36, 23.0, 55);
INSERT INTO hourlyEmployees VALUES ('100-00-0028', 38, 24.0, 70);
INSERT INTO hourlyEmployees VALUES ('100-00-0032', 29, 19.5, 35);
INSERT INTO hourlyEmployees VALUES ('100-00-0036', 41, 26.0, 80);
INSERT INTO hourlyEmployees VALUES ('100-00-0040', 33, 22.0, 60);
INSERT INTO hourlyEmployees VALUES ('100-00-0044', 37, 25.0, 75);
INSERT INTO hourlyEmployees VALUES ('100-00-0048', 34, 23.5, 65);