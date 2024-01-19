USE master
IF EXISTS(SELECT * FROM master.sys.databases WHERE name='HospitalDB')
BEGIN
    DROP DATABASE HospitalDB
	CREATE DATABASE HospitalDB
	COLLATE TURKISH_CI_AI;
	PRINT '--------------- DATABASE OLU�TURULDU --------------'
END
ELSE
BEGIN
	CREATE DATABASE HospitalDB
	COLLATE TURKISH_CI_AI;
	PRINT '--------------- DATABASE OLU�TURULDU --------------'
END
GO
use "HospitalDB"
PRINT ''
GO
PRINT '--------------- TABLOLAR OLU�TURULUYOR --------------'
GO
CREATE TABLE City
(
	ID int primary key identity(1,1),
	Cityname nvarchar(100),
)
CREATE TABLE Sickness
(
	ID int primary key identity(1,1),
	Sicknessname varchar(100),
)
CREATE TABLE Policlinic
(
	ID int primary key identity(1,1),
	Policlinicname nvarchar(100),
)
CREATE TABLE StateOfHealth
(
	ID int primary key identity(1,1),
	StateOfHealthname nvarchar(100),
)
CREATE TABLE PatientInformation
(
	ID int primary key identity(1,1),
	Name_Surname nvarchar(200),
	Age int,
	Gender varchar(1),
	Sickness_ID int,
	City_ID int,
	Policlinic_ID int,
	StateOfHealth_ID int,
			
	Constraint fk_PatientInformationSickness foreign key(Sickness_ID) references Sickness(ID),
	Constraint fk_PatientInformationCity foreign key(City_ID) references City(ID),
	Constraint fk_PatientInformationPoliclinic foreign key(Policlinic_ID) references Policlinic(ID),
	Constraint fk_PatientInformationStateOfHealth foreign key(StateOfHealth_ID) references StateOfHealth(ID),
)

insert into City(Cityname) values ('ESK��EH�R')
insert into City(Cityname) values ('ANKARA')
insert into City(Cityname) values ('MAN�SA')
insert into City(Cityname) values ('ED�RNE')
insert into City(Cityname) values ('�STANBUL')
insert into City(Cityname) values ('D�YARBAKIR')
insert into City(Cityname) values ('ERZURUM')
insert into City(Cityname) values ('TRABZON')
insert into City(Cityname) values ('ZONGULDAK')
insert into City(Cityname) values ('AMASYA')
insert into City(Cityname) values ('SAMSUN')
insert into City(Cityname) values ('ELAZI�')
insert into City(Cityname) values ('KIRIKKALE')
insert into City(Cityname) values ('�ZM�R')
insert into City(Cityname) values ('MU�LA')
insert into City(Cityname) values ('ARTV�N')
insert into City(Cityname) values ('BARTIN')
insert into City(Cityname) values ('ANTALYA')
insert into City(Cityname) values ('ADANA')
insert into City(Cityname) values ('KIRKLAREL�')


insert into Policlinic(Policlinicname) values ('BEY�N VE S�N�R CERRAH�S�')
insert into Policlinic(Policlinicname) values ('�OCUK CERRAH�S�')
insert into Policlinic(Policlinicname) values ('RUH VE S�N�R CERRAH�S�')
insert into Policlinic(Policlinicname) values ('DERMATOLOJ� (C�LD�YE)')
insert into Policlinic(Policlinicname) values ('ENDOKR�NOLOJ� VE METABOL�ZMA')
insert into Policlinic(Policlinicname) values ('F�Z�KSEL TIP VE REHAB�L�TASYON')
insert into Policlinic(Policlinicname) values ('GASTROENTEROLOJ�')
insert into Policlinic(Policlinicname) values ('GENEL CERRAH�')
insert into Policlinic(Policlinicname) values ('G���S CERRAH�S�')
insert into Policlinic(Policlinicname) values ('G�Z HASTALIKLARI')
insert into Policlinic(Policlinicname) values ('HEMATOLOJ�')
insert into Policlinic(Policlinicname) values ('�� HASTALIKLARI')
insert into Policlinic(Policlinicname) values ('KADIN HASTALIKLARI VE DO�UM')
insert into Policlinic(Policlinicname) values ('KARD�YOLOJ�')
insert into Policlinic(Policlinicname) values ('KULAK-BURUN-BO�AZ HASTALIKLARI')
insert into Policlinic(Policlinicname) values ('NEFROLOJ�')
insert into Policlinic(Policlinicname) values ('N�ROLOJ�')
insert into Policlinic(Policlinicname) values ('ORTOPED� VE TRAVMATOLOJ�')
insert into Policlinic(Policlinicname) values ('PLAST�K REKONSTR�KT�F VE ESTET�K CERRAH�')
insert into Policlinic(Policlinicname) values ('PS�K�YATR�')

insert into Sickness(Sicknessname) values ('Kalp-Damar Hastas�')
insert into Sickness(Sicknessname) values ('B�brek Yetmezli�i')
insert into Sickness(Sicknessname) values ('Karaci�er Yetmezli�i')
insert into Sickness(Sicknessname) values ('Sinirsel Bozukluk')
insert into Sickness(Sicknessname) values ('Alzheimer')
insert into Sickness(Sicknessname) values ('��itme Sorunu')
insert into Sickness(Sicknessname) values ('�eker Hastal���')
insert into Sickness(Sicknessname) values ('Kolesterol Hastal���')
insert into Sickness(Sicknessname) values ('Kemik Erimesi')
insert into Sickness(Sicknessname) values ('Kolesterol Hastal���')
insert into Sickness(Sicknessname) values ('Solunum Yetmezli�i')
insert into Sickness(Sicknessname) values ('Ba��rsak Kanseri')
insert into Sickness(Sicknessname) values ('Yaralanma')
insert into Sickness(Sicknessname) values ('K�r�k-��k�k')
insert into Sickness(Sicknessname) values ('Hastal��� Yok')
insert into Sickness(Sicknessname) values ('Prostat Kanseri')
insert into Sickness(Sicknessname) values ('Akci�er Kanseri')
insert into Sickness(Sicknessname) values ('Cilt Kanseri')
insert into Sickness(Sicknessname) values ('G���s Kanseri')
insert into Sickness(Sicknessname) values ('Kemik Kanseri')


insert into StateOfHealth(StateOfHealthname) values ('Normal')
insert into StateOfHealth(StateOfHealthname) values ('Rahats�z')
insert into StateOfHealth(StateOfHealthname) values ('Kritik')
insert into StateOfHealth(StateOfHealthname) values ('Yo�un Bak�mda')
insert into StateOfHealth(StateOfHealthname) values ('Ameliyatta')
insert into StateOfHealth(StateOfHealthname) values ('Vefat')
insert into StateOfHealth(StateOfHealthname) values ('Hafif yaral�')
insert into StateOfHealth(StateOfHealthname) values ('A��r yaral�')
insert into StateOfHealth(StateOfHealthname) values ('Ayakta tedavi')
insert into StateOfHealth(StateOfHealthname) values ('�la�l� tedavi')
insert into StateOfHealth(StateOfHealthname) values ('Ba�ka hastaneye nakil')


insert into PatientInformation(Name_Surname,Age,Gender) values ('H�seyin SA�LAM',26,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Alparslan YOL',25,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Fadime DER�N',24,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Nazl� DURU',23,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Buket ���EK',22,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Do�ukan YALIN',21,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('K�van� SEV�M',26,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Berkay YEN�G�N',21,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Fatih �IKG�L',20,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Yusuf AFACAN',35,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Dilek SUSAK',45,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Levent A�IKG�Z',28,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Nur AYDIN',18,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Azra YILMAZ',13,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Eslem EL�BOL',10,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Nisa KARAM',5,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Artuk TORAM',28,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Teoman SAVA�',58,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Bur�igin TOY',5,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Demirhan TANRIVERD�',10,'E')
