  CREATE DATABASE ALEX;
    USE ALEX;
	
CREATE TABLE Marina
  (MarinaNum CHAR(4) PRIMARY KEY,
  Name CHAR(20),
  Address CHAR(15),
  City CHAR(15),
  State CHAR(2),
  Zip CHAR(5) );

  CREATE TABLE MarinaSlip
  (SlipID CHAR(4) PRIMARY KEY,
  MarinaNum CHAR(4),
  SlipNum CHAR(4),
  Length DECIMAL(4,0),
  RentalFee DECIMAL(8,2),
  BoatName CHAR(50),
  BoatType CHAR(50),
  OwnerNum CHAR(4) );


CREATE TABLE Owner
(OwnerNum CHAR(4) PRIMARY KEY,
LastName CHAR(50),
FirstName CHAR(20),
Address CHAR(15),
City CHAR(15),
State CHAR(2),
Zip CHAR(5) );

CREATE TABLE ServiceCategory
(CategoryNum CHAR(4) PRIMARY KEY,
CategoryDescription CHAR(255) );

CREATE TABLE ServiceRequest
(ServiceID CHAR(4) PRIMARY KEY,
SlipID CHAR(4),
CategoryNum CHAR(4),
Description CHAR(255),
Status CHAR(255),
EstHours DECIMAL(4,2),
SpentHours DECIMAL(4,2),
NextServiceDate DATE );

INSERT INTO Marina
VALUES
('1','Alex East','108 2nd Ave','Brinman','FL','32273'),
('2','Alex Central','283 Branston','W Brinman','FL','32274');

INSERT INTO MarinaSlip
VALUES
('1','1','A1',40,3800.00,'Anderson II','Sprite 4000','AN75'),
('2','1','A2',40,3800.00,'Our Toy','Ray 4025','EL25'),
('3','1','A3',40,3600.00,'Escape','Sprite 4000','KE22'),
('4','1','B1',30,2400.00,'Gypsy','Dolphin 28','JU92'),
('5','1','B2',30,2600.00,'Anderson III','Sprite 3000','AN75'),
('6','2','1',25,1800.00,'Bravo','Dolphin 25','AD57'),
('7','2','2',25,1800.00,'Chinook','Dolphin 22','FE82'),
('8','2','3',25,2000.00,'Listy','Dolphin 25','SM72'),
('9','2','4',30,2500.00,'Mermaid','Dolphin 28','BL72'),
('10','2','5',40,4200.00,'Axxon II','Dolphin 40','NO27'),
('11','2','6',40,4200.00,'Karvel','Ray 4025','TR72');




INSERT INTO Owner
VALUES 
('AD57','Adney','Bruce and Jean','208 Citrus','Bowton','FL','31313'),
('AN75','Anderson','Bill','18 Wilcox','Glander Bay','FL','31044'),
('BL72','Blake','Mary','2672 Commodore','Bowton','FL','31313'),
('EL25','Elend','Sandy and Bill','462 Riverside','Rivard','FL','31062'),
('FE82','Feenstra','Daniel','7822 Coventry','Kaleva','FL','32521'),
('JU92','Juarez','Maria','8922 Oak','Rivard','FL','31062'),
('KE22','Kelly','Alyssa','5271 Waters','Bowton','FL','31313'),
('NO27','Norton','Peter','2811 Lakewood','Lewiston','FL','32765'),
('SM72','Smeltz','Becky and Dave','922 Garland', 'Bowton','FL','31313'),
('TR72','Trent','Ashton','922 Crest', 'Bay Shores','FL','30992');

INSERT INTO ServiceCategory
VALUES
('1','Routine engine maintenance'),
('2','Engine repair'),
('3','Air conditioning'),
('4','Electrical systems'),
('5','Fiberglass repair'),
('6','Canvas installation'),
('7','Canvas repair'),
('8','Electronic systems (radar, GPS, autopilots, etc.)');

INSERT INTO ServiceRequest
VALUES
('1','1','3','Air conditioner periodically stops with code indicating low coolant level. Diagnose and repair.', 'Technician has verified the problem. Air conditioning specialist has been called.','4','2','2013-07-12'),
('2','5','4','Fuse on port motor blown on two occasions. Diagnose and repair.','Open','2','0','2013-07-12'),
('3','4','1','Oil change and general routine maintenance (check fluid levels, clean sea strainers etc.).','Service call has been scheduled.','1','0','2013-07-16'),
('4','1','2','Engine oil level has been dropping drastically. Diagnose and repair.','Open','2','0','2013-07-13'),
('5','3','5','Open pockets at base of two stations.', 'Technician has completed the initial filling of the open pockets. Will complete the job after the initial fill has had sufficient time to dry.','4','2','2010-07-13'),
('6','11','4','Electric-flush system periodically stops functioning. Diagnose and repair.','Open','3','0','2020-12-31'),
('7','6','2','Engine overheating. Loss of coolant. Diagnose and repair.','Open','2','0','2013-07-13'),
('8','6','2','Heat exchanger not operating correctly.', 'Technician has determined that the exchanger is faulty. New exchanger has been ordered.','4','1','2013-07-17'),
('9','7','6','Canvas severely damaged in windstorm. Order and install new canvas.','Open','8','0','2013-07-16'),
('10','2','8','Install new GPS and chart plotter.','Scheduled','7','0','2013-07-17'),
('11','2','3','Air conditioning unit shuts down with HHH showing on the control panel.', 'Technician not able to replicate the problem. Air conditioning unit ran fine through multiple tests. Owner to notify technician if the problem recurs.','1','1','2020-12-31'),
('12','4','8','Both speed and depth readings on data unit are significantly less than the owner thinks they should be.', 'Technician has scheduled appointment with owner to attempt to verify the problem.','2','0','2013-07-16'),
('13','8','2','Customer describes engine as making a clattering sound.', 'Technician suspects problem with either propeller or shaft and has scheduled the boat to be pulled from the water for further investigation.','5','2','2013-07-12'),
('14','7','5','Owner accident caused damage to forward portion of port side.', 'Technician has scheduled repair.','6','0','2013-07-13'),
('15','11','7','Canvas leaks around zippers in heavy rain. Install overlap around zippers to prevent leaks.', 'Overlap has been created. Installation has been scheduled.','8','3','2013-07-17')

