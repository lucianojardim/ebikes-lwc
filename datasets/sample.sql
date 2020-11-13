BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Wheelworks','');
INSERT INTO "Account" VALUES(2,'Northern Trail Cycling','');
INSERT INTO "Account" VALUES(3,'Trailblazers','');
CREATE TABLE "Order_Item__c" (
	id INTEGER NOT NULL, 
	"Price__c" VARCHAR(255), 
	"Qty_L__c" VARCHAR(255), 
	"Qty_M__c" VARCHAR(255), 
	"Qty_S__c" VARCHAR(255), 
	"Order__c" VARCHAR(255), 
	"Product__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Order__c" (
	id INTEGER NOT NULL, 
	"Account__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Product_Family__c" (
	id INTEGER NOT NULL, 
	"Category__c" VARCHAR(255), 
	"Description__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Product_Family__c" VALUES(1,'Mountain','Performance and reliability. The best choice for hobbyists and enthusiasts.','Dynamo');
INSERT INTO "Product_Family__c" VALUES(2,'Hybrid','Commute and off-road? The Fuse bikes do it all!','Fuse');
INSERT INTO "Product_Family__c" VALUES(3,'Commuter','Top of the line commuter bikes that can handle long and challenging commutes.','Electra');
INSERT INTO "Product_Family__c" VALUES(4,'Commuter','Fun and Foldable electric bicycles.','Volt');
CREATE TABLE "Product__c" (
	id INTEGER NOT NULL, 
	"Battery__c" VARCHAR(255), 
	"Category__c" VARCHAR(255), 
	"Charger__c" VARCHAR(255), 
	"Description__c" VARCHAR(255), 
	"Fork__c" VARCHAR(255), 
	"Frame_Color__c" VARCHAR(255), 
	"Front_Brakes__c" VARCHAR(255), 
	"Handlebar_Color__c" VARCHAR(255), 
	"Level__c" VARCHAR(255), 
	"MSRP__c" VARCHAR(255), 
	"Material__c" VARCHAR(255), 
	"Motor__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Picture_URL__c" VARCHAR(255), 
	"Rear_Brakes__c" VARCHAR(255), 
	"Seat_Color__c" VARCHAR(255), 
	"Waterbottle_Color__c" VARCHAR(255), 
	"Product_Family__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Product__c" VALUES(1,'502Wh','Mountain','42V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring, adjustable rebound','','Hydraulic disc, 200mm','','Racer','7200.0','Carbon','282 watt, 75Nm','DYNAMO X2','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/dynamox2.jpg','Hydraulic disc, 200mm','','','1');
INSERT INTO "Product__c" VALUES(2,'401Wh','Commuter','41V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring','','Dual-pivot caliper brake','','Beginner','2500.0','Aluminum','251 watt, 75Nm','FUSE X1','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/fusex1.jpg','Dual-pivot caliper brake','','','2');
INSERT INTO "Product__c" VALUES(3,'402Wh','Commuter','42V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring','','Dual-pivot caliper brake','','Beginner','2600.0','Aluminum','252 watt, 75Nm','FUSE X2','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/fusex2.jpg','Dual-pivot caliper brake','','','2');
INSERT INTO "Product__c" VALUES(4,'403Wh','Commuter','43V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring','','Dual-pivot caliper brake','','Beginner','2700.0','Aluminum','253 watt, 75Nm','FUSE X3','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/fusex3.jpg','Dual-pivot caliper brake','','','2');
INSERT INTO "Product__c" VALUES(5,'404Wh','Commuter','44V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring','','Dual-pivot caliper brake','','Beginner','2800.0','Aluminum','254 watt, 75Nm','FUSE X4','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/fusex4.jpg','Dual-pivot caliper brake','','','2');
INSERT INTO "Product__c" VALUES(6,'501Wh','Mountain','41V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring, adjustable rebound','','Hydraulic disc, 200mm','','Racer','7000.0','Carbon','281 watt, 75Nm','DYNAMO X1','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/dynamox1.jpg','Hydraulic disc, 200mm','','','1');
INSERT INTO "Product__c" VALUES(7,'503Wh','Mountain','43V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring, adjustable rebound','','Hydraulic disc, 200mm','','Racer','7400.0','Carbon','283 watt, 75Nm','DYNAMO X3','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/dynamox3.jpg','Hydraulic disc, 200mm','','','1');
INSERT INTO "Product__c" VALUES(8,'504Wh','Mountain','44V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring, adjustable rebound','','Hydraulic disc, 200mm','','Racer','7800.0','Carbon','284 watt, 75Nm','DYNAMO X4','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/dynamox4.jpg','Hydraulic disc, 200mm','','','1');
INSERT INTO "Product__c" VALUES(9,'501Wh','Mountain','41V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring, adjustable rebound','','Hydraulic disc, 200mm','','Enthusiast','4000.0','Aluminum','251 watt, 75Nm','ELECTRA X1','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax1.jpg','Hydraulic disc, 200mm','','','3');
INSERT INTO "Product__c" VALUES(10,'502Wh','Mountain','42V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring, adjustable rebound','','Hydraulic disc, 200mm','','Enthusiast','4300.0','Aluminum','252 watt, 75Nm','ELECTRA X2','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax2.jpg','Hydraulic disc, 200mm','','','3');
INSERT INTO "Product__c" VALUES(11,'503Wh','Mountain','43V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring, adjustable rebound','','Hydraulic disc, 200mm','','Enthusiast','4600.0','Aluminum','253 watt, 75Nm','ELECTRA X3','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax3.jpg','Hydraulic disc, 200mm','','','3');
INSERT INTO "Product__c" VALUES(12,'504Wh','Mountain','44V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Air spring, adjustable rebound','','Hydraulic disc, 200mm','','Enthusiast','4900.0','Aluminum','254 watt, 75Nm','ELECTRA X4','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax4.jpg','Hydraulic disc, 200mm','','','3');
INSERT INTO "Product__c" VALUES(13,'300Wh','Commuter','21V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Foldable','','Centre-pull caliper brake','','Beginner','1200.0','Aluminum','251 watt, 75Nm','VOLT X1','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/voltx1.jpg','Centre-pull caliper brake','','','4');
INSERT INTO "Product__c" VALUES(14,'300Wh','Commuter','42V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Foldable','','Centre-pull caliper brake','','Beginner','1400.0','Aluminum','252 watt, 75Nm','VOLT X2','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/voltx2.jpg','Centre-pull caliper brake','','','4');
INSERT INTO "Product__c" VALUES(15,'300Wh','Commuter','23V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Foldable','','Centre-pull caliper brake','','Beginner','1800.0','Aluminum','253 watt, 75Nm','VOLT X3','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/voltx3.jpg','Centre-pull caliper brake','','','4');
INSERT INTO "Product__c" VALUES(16,'300Wh','Commuter','24V4A','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Foldable','','Centre-pull caliper brake','','Beginner','1900.0','Aluminum','254 watt, 75Nm','VOLT X4','https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/voltx4.jpg','Centre-pull caliper brake','','','4');
COMMIT;
