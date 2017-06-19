CREATE TABLE patientrecords(
	patient_nbr VARCHAR(100),
	race VARCHAR(100),
	gender VARCHAR(100),
	age VARCHAR(100),
	weight VARCHAR(100),
	admission_type_id INT,
	discharge_disposition_id INT,
	admission_source_id INT,
	time_in_hospital DECIMAL(5,3),
	payer_code VARCHAR(100),
	medical_specialty VARCHAR(100),
	num_lab_procedures DECIMAL(5,3),
	num_procedures DECIMAL(5,3),
	num_medications DECIMAL(5,3),
	number_outpatient DECIMAL(5,3),
	number_emergency DECIMAL(5,3),
	number_inpatient DECIMAL(5,3),
	diag_1 DECIMAL(5,3),
	diag_2 DECIMAL(5,3),
	diag_3 DECIMAL(5,3),
	number_diagnoses DECIMAL(5,3),
	max_glu_serum VARCHAR(100),
	A1Cresult VARCHAR(100),
	metformin VARCHAR(100),
	repaglinide VARCHAR(100),
	nateglinide VARCHAR(100),
	chlorpropamide VARCHAR(100),
	glimepiride VARCHAR(100),
	acetohexamide VARCHAR(100),
	glipizide VARCHAR(100),
	glyburide VARCHAR(100),
	tolbutamide VARCHAR(100),
	pioglitazone VARCHAR(100),
	rosiglitazone VARCHAR(100),
	acarbose VARCHAR(100),
	miglitol VARCHAR(100),
	troglitazone VARCHAR(100),
	tolazamide VARCHAR(100),
	examide VARCHAR(100),
	citoglipton VARCHAR(100),
	insulin VARCHAR(100),
	glyburide_metformin VARCHAR(100),
	glipizide_metformin VARCHAR(100),
	glimepiride_pioglitazone VARCHAR(100),
	metformin_rosiglitazone VARCHAR(100),
	metformin_pioglitazone VARCHAR(100),
	change VARCHAR(100),
	diabetesMed VARCHAR(100)
);

CREATE TABLE glucoselevelsaggs(
	patient_nbr VARCHAR(100),
	mingl DECIMAL(5,3),
	maxgl DECIMAL(5,3),
	meangl DECIMAL(5,3),
	vargl DECIMAL(5,3),
	timestamp DATETIME
);

CREATE TABLE predictions(
	patient_nbr VARCHAR(100),
	prediction_date DATETIME,
	probability DECIMAL(5,3)
);

-- seed data in SQL database for creating cold path visualizations
INSERT INTO predictions ( patient_nbr, prediction_date, probability ) VALUES
 (101487563,'2017-05-11 00:00:00',0.409), (102249958,'2017-05-11 00:00:00',0.371), (105608490,'2017-05-11 00:00:00',0.321), (113768967,'2017-05-11 00:00:00',0.391), (117401721,'2017-05-11 00:00:00',0.417), (118734959,'2017-05-11 00:00:00',0.335), (119811218,'2017-05-11 00:00:00',0.347), (121019127,'2017-05-11 00:00:00',0.353), (134554254,'2017-05-11 00:00:00',0.315), (135426674,'2017-05-11 00:00:00',0.298), (137787363,'2017-05-11 00:00:00',0.370), (140009504,'2017-05-11 00:00:00',0.369), (144882752,'2017-05-11 00:00:00',0.371), (146265098,'2017-05-11 00:00:00',0.389), (148322486,'2017-05-11 00:00:00',0.336), (151229840,'2017-05-11 00:00:00',0.276), (154345193,'2017-05-11 00:00:00',0.359), (159553541,'2017-05-11 00:00:00',0.400), (164203556,'2017-05-11 00:00:00',0.383), (167063265,'2017-05-11 00:00:00',0.464), (171323422,'2017-05-11 00:00:00',0.366), (173549526,'2017-05-11 00:00:00',0.385), (203182850,'2017-05-11 00:00:00',0.280), (204139858,'2017-05-11 00:00:00',0.355), (204707495,'2017-05-11 00:00:00',0.366), (208130115,'2017-05-11 00:00:00',0.367), (215600811,'2017-05-11 00:00:00',0.315), (217850340,'2017-05-11 00:00:00',0.314), (229270330,'2017-05-11 00:00:00',0.377), (260080929,'2017-05-11 00:00:00',0.318), (273046542,'2017-05-11 00:00:00',0.345), (279280299,'2017-05-11 00:00:00',0.417), (293470262,'2017-05-11 00:00:00',0.290), (296281047,'2017-05-11 00:00:00',0.304), (299832944,'2017-05-11 00:00:00',0.311), (303252092,'2017-05-11 00:00:00',0.360), (307153889,'2017-05-11 00:00:00',0.377), (310723947,'2017-05-11 00:00:00',0.324), (314178901,'2017-05-11 00:00:00',0.314), (31667278,'2017-05-11 00:00:00',0.354), (331802638,'2017-05-11 00:00:00',0.369), (337509736,'2017-05-11 00:00:00',0.364), (339671799,'2017-05-11 00:00:00',0.250), (346229952,'2017-05-11 00:00:00',0.388), (352644343,'2017-05-11 00:00:00',0.400), (353299279,'2017-05-11 00:00:00',0.347), (359591812,'2017-05-11 00:00:00',0.340), (362683983,'2017-05-11 00:00:00',0.324), (366994054,'2017-05-11 00:00:00',0.345), (369083322,'2017-05-11 00:00:00',0.367), (378491267,'2017-05-11 00:00:00',0.322), (384840155,'2017-05-11 00:00:00',0.334), (386976382,'2017-05-11 00:00:00',0.323), (388060046,'2017-05-11 00:00:00',0.337), (390509603,'2017-05-11 00:00:00',0.356), (408211180,'2017-05-11 00:00:00',0.317), (413341597,'2017-05-11 00:00:00',0.421), (419742050,'2017-05-11 00:00:00',0.333), (431028489,'2017-05-11 00:00:00',0.375), (434300559,'2017-05-11 00:00:00',0.345), (434573155,'2017-05-11 00:00:00',0.335), (436464166,'2017-05-11 00:00:00',0.336), (442208991,'2017-05-11 00:00:00',0.350), (44656933,'2017-05-11 00:00:00',0.386), (449661561,'2017-05-11 00:00:00',0.325), (451960841,'2017-05-11 00:00:00',0.330), (454548785,'2017-05-11 00:00:00',0.338), (456360229,'2017-05-11 00:00:00',0.356), (456491434,'2017-05-11 00:00:00',0.307), (45658883,'2017-05-11 00:00:00',0.407), (464587500,'2017-05-11 00:00:00',0.383), (466111907,'2017-05-11 00:00:00',0.410), (46824051,'2017-05-11 00:00:00',0.449), (47523585,'2017-05-11 00:00:00',0.371), (479843578,'2017-05-11 00:00:00',0.343), (480192335,'2017-05-11 00:00:00',0.319), (48598903,'2017-05-11 00:00:00',0.400), (48664111,'2017-05-11 00:00:00',0.330), (491718271,'2017-05-11 00:00:00',0.338), (499945972,'2017-05-11 00:00:00',0.299), (53566337,'2017-05-11 00:00:00',0.350), (60030481,'2017-05-11 00:00:00',0.463), (63451119,'2017-05-11 00:00:00',0.416), (63620251,'2017-05-11 00:00:00',0.408), (64359625,'2017-05-11 00:00:00',0.366), (66366664,'2017-05-11 00:00:00',0.342), (72223879,'2017-05-11 00:00:00',0.313), (7372844,'2017-05-11 00:00:00',0.432), (73905647,'2017-05-11 00:00:00',0.338), (74646782,'2017-05-11 00:00:00',0.380), (75034968,'2017-05-11 00:00:00',0.318), (78347665,'2017-05-11 00:00:00',0.343), (82778061,'2017-05-11 00:00:00',0.424), (82807035,'2017-05-11 00:00:00',0.275), (8379509,'2017-05-11 00:00:00',0.378), (85963864,'2017-05-11 00:00:00',0.376), (86999755,'2017-05-11 00:00:00',0.314), (90983988,'2017-05-11 00:00:00',0.396), (91433580,'2017-05-11 00:00:00',0.404), (97619809,'2017-05-11 00:00:00',0.341)
 
 
 CREATE TABLE interventionprograms(
	programs VARCHAR(100),
	intervention_cost numeric,
	efficacy DECIMAL(5,3)
);

INSERT INTO interventionprograms VALUES ('program1', 300, 0.25); 
INSERT INTO interventionprograms VALUES ('program2', 300, 0.35); 
INSERT INTO interventionprograms VALUES ('program3', 1300, 0.25); 
INSERT INTO interventionprograms VALUES ('program4', 1300, 0.35);
INSERT INTO interventionprograms VALUES ('program5', 1800, 0.25); 
INSERT INTO interventionprograms VALUES ('program6', 1800, 0.35);

CREATE TABLE readmitcost(
	
	readmission_cost numeric
	
);

INSERT INTO readmitcost VALUES (10000); 
INSERT INTO readmitcost VALUES (13679);
INSERT INTO readmitcost VALUES (15000);