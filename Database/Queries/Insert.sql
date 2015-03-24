-- Insert Query - With Related Tables --

-- Customers --
INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Eleanore','Robbins','2846 Windy Ridge Road, Angola, IN 46703','260624051','19790517');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('EleanoreARobbins@dayrep.com','maequ2iek6Oh',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Daryl','Hanes','4487 Raoul Wallenberg Place, New Haven, CT 06511','203848064','19670211');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('DarylUHanes@armyspy.com','Prut1952',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Caren','Morris','4001 Lakeland Terrace, Romulus, MI 48174','734247667','19820412');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('CarenTMorris@dayrep.com','waong5Wai4',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Dorothy','Turner','3342 Middleville Road, Baldwin Park, CA 91706','626338927','19720213');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('DorothyBTurner@teleworm.us','De2rieph4ea',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Jo','Sabella','263 Bartlett Avenue, Southfield, MI 48034','248501973','19711217');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('JoLSabella@dayrep.com','eivoofaic5Th',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Kyle','Lucus','1938 Boone Street, Corpus Christi, TX 78476','361261218','19610807');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('KyleLLucus@jourrapide.com','ahdair6uWah',SCOPE_IDENTITY());
-- Customers --

-- Admins --
INSERT INTO Admins (Name, Address, ContactNumber)
VALUES ('Michael W. Hovis','1634 Sundown Lane, Buda, TX 78610','512298466');

INSERT INTO AdminAccounts (Email, Password, AdminId) 
VALUES ('MichaelWHovis@dayrep.com','boqu7Uad2ph',SCOPE_IDENTITY());

INSERT INTO Admins (Name, Address, ContactNumber)
VALUES ('Hannah R. Neal','64 Little Street, New Philadelphia, OH 44663','330602158');

INSERT INTO AdminAccounts (Email, Password, AdminId) 
VALUES ('HannahRNeal@rhyta.com','yuK3shei',SCOPE_IDENTITY());
-- Admins --

-- Cars --
INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Audi','A2','1.6 L','Petrol','Silver','5-door hatchback','10000','Images/Cars/Audi_A2_Silver.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Audi','A2','1.8 L','Diesel','Black','5-door hatchback','9000','Images/Cars/Audi_A2_Black.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Audi','A2','2.0 L','Petrol','Red','5-door hatchback','8500','Images/Cars/Audi_A2_Red.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Audi','A7','3.0 L','Petrol','Black','5-door Liftback','63000','Images/Cars/Audi_A7_Black.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Audi','Q7','4.2 L','Diesel','White','5-door SUV','42000','Images/Cars/Audi_Q7_White.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Ford','Fiesta','1.6 L','Petrol','Blue','5-door hatchback','15000','Images/Cars/Ford_Fiesta_Blue.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Ford','Fiesta','2.0 L','Petrol','Red','5-door hatchback','13500','Images/Cars/Ford_Fiesta_Red.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Ford','Fiesta','1.6 L','Diesel','White','5-door hatchback','11000','Images/Cars/Ford_Fiesta_White.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Mercedes-Benz','GL-Class','2.5 L','Petrol','White','5-door SUV','34000','Images/Cars/Mercedes_GLClass_White.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Mercedes-Benz','GL-Class','3.0 L','Petrol','Black','5-door SUV','34000','Images/Cars/Mercedes_GLClass_Black.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Mercedes-Benz','GL-Class','4.0 L','Petrol','Blue','5-door SUV','37000','Images/Cars/Mercedes_GLClass_Blue.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('BMW','X6','3.5 L','Petrol','Silver','5-door SUV','45000','Images/Cars/BMW_X6_Silver.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Ford','Fusion','2.0 L','Petrol','Silver','5-door Saloon','45000','Images/Cars/Ford_Fusion_Silver.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Seat','Leon Aeroport','1.6 L','Petrol','Silver','3-door hatchback','45000','Images/Cars/Seat_Leon_Aeroport_Silver.jpg');
-- Cars --

-- Parts --
INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Catalytic Converter','This Catalytic Converter fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','850','53849344','2','Images/Parts/Mercedes_Catalytic_Converter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Cooling Fan','This Cooling Fan fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','350','44234234','1','Images/Parts/Mercedes_Cooling_Fan_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Radiator','This Radiator fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','550','54342223','3','Images/Parts/Mercedes_Radiator_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Oil Filter','This Oil Filter fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','100','32123217','2','Images/Parts/Mercedes_Oil_Filter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Exhaust Manifold','This Exhaust Manifold fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','1200','12312312','0','Images/Parts/Mercedes_Exhaust_Manifold_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Turbocharger','This Turbocharger fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','1450','12312554','1','Images/Parts/Mercedes_Turbocharger_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fan Belt','This Fan Belt fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','350','76553443','7','Images/Parts/Mercedes_Fan_Belt_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fuel Pump','This Fuel Pump fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','650','23244534','4','Images/Parts/Mercedes_Fuel_Pump_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Catalytic Converter','This Catalytic Converter fits BMW vehicles from year 1999-2005','BMW','850','29383927','2','Images/Parts/BMW_Catalytic_Converter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Cooling Fan','This Cooling Fan fits BMW vehicles from year 1999-2005','BMW','350','61526750','1','Images/Parts/BMW_Cooling_Fan_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Radiator','This Radiator fits BMW vehicles from year 1999-2005','BMW','550','00985285','3','Images/Parts/BMW_Radiator_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Oil Filter','This Oil Filter fits BMW vehicles from year 1999-2005','BMW','100','17261423','2','Images/Parts/BMW_Oil_Filter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Exhaust Manifold','This Exhaust Manifold fits BMW vehicles from year 1999-2005','BMW','1200','88752154','0','Images/Parts/BMW_Exhaust_Manifold_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Turbocharger','This Turbocharger fits BMW vehicles from year 1999-2005','BMW','1450','99876759','1','Images/Parts/BMW_Turbocharger_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fan Belt','This Fan Belt fits BMW vehicles from year 1999-2005','BMW','350','74654090','7','Images/Parts/BMW_Fan_Belt_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fuel Pump','This Fuel Pump fits BMW vehicles from year 1999-2005','BMW','650','90987676','4','Images/Parts/BMW_Fuel_Pump_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Catalytic Converter','This Catalytic Converter fits Audi vehicles from year 1999-2005','Audi','850','76543089','2','Images/Parts/Audi_Catalytic_Converter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Cooling Fan','This Cooling Fan fits Audi vehicles from year 1999-2005','Audi','350','13264856','1','Images/Parts/Audi_Cooling_Fan_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Radiator','This Radiator fits Audi vehicles from year 1999-2005','Audi','550','48272839','3','Images/Parts/Audi_Radiator_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Oil Filter','This Oil Filter fits Audi vehicles from year 1999-2005','Audi','100','26387678','2','Images/Parts/Audi_Oil_Filter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Exhaust Manifold','This Exhaust Manifold fits Audi vehicles from year 1999-2005','Audi','1200','09878978','0','Images/Parts/Audi_Exhaust_Manifold_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Turbocharger','This Turbocharger fits Audi vehicles from year 1999-2005','Audi','1450','14234543','1','Images/Parts/Audi_Turbocharger_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fan Belt','This Fan Belt fits Audi vehicles from year 1999-2005','Audi','350','12135409','7','Images/Parts/Audi_Fan_Belt_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fuel Pump','This Fuel Pump fits Audi vehicles from year 1999-2005','Audi','650','88764511','4','Images/Parts/Audi_Fuel_Pump_1.jpg');
-- Parts --

-- Insert Query - With Related Tables --