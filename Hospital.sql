USE master
IF EXISTS(SELECT * FROM master.sys.databases WHERE name='HospitalDB')
BEGIN
    DROP DATABASE HospitalDB
	CREATE DATABASE HospitalDB
	COLLATE TURKISH_CI_AI;
	PRINT '--------------- DATABASE OLUÞTURULDU --------------'
END
ELSE
BEGIN
	CREATE DATABASE HospitalDB
	COLLATE TURKISH_CI_AI;
	PRINT '--------------- DATABASE OLUÞTURULDU --------------'
END
GO
use "HospitalDB"
PRINT ''
GO
PRINT '--------------- TABLOLAR OLUÞTURULUYOR --------------'
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

insert into City(Cityname) values ('ESKÝÞEHÝR')
insert into City(Cityname) values ('ANKARA')
insert into City(Cityname) values ('MANÝSA')
insert into City(Cityname) values ('EDÝRNE')
insert into City(Cityname) values ('ÝSTANBUL')
insert into City(Cityname) values ('DÝYARBAKIR')
insert into City(Cityname) values ('ERZURUM')
insert into City(Cityname) values ('TRABZON')
insert into City(Cityname) values ('ZONGULDAK')
insert into City(Cityname) values ('AMASYA')
insert into City(Cityname) values ('SAMSUN')
insert into City(Cityname) values ('ELAZIÐ')
insert into City(Cityname) values ('KIRIKKALE')
insert into City(Cityname) values ('ÝZMÝR')
insert into City(Cityname) values ('MUÐLA')
insert into City(Cityname) values ('ARTVÝN')
insert into City(Cityname) values ('BARTIN')
insert into City(Cityname) values ('ANTALYA')
insert into City(Cityname) values ('ADANA')
insert into City(Cityname) values ('KIRKLARELÝ')


insert into Policlinic(Policlinicname) values ('BEYÝN VE SÝNÝR CERRAHÝSÝ')
insert into Policlinic(Policlinicname) values ('ÇOCUK CERRAHÝSÝ')
insert into Policlinic(Policlinicname) values ('RUH VE SÝNÝR CERRAHÝSÝ')
insert into Policlinic(Policlinicname) values ('DERMATOLOJÝ (CÝLDÝYE)')
insert into Policlinic(Policlinicname) values ('ENDOKRÝNOLOJÝ VE METABOLÝZMA')
insert into Policlinic(Policlinicname) values ('FÝZÝKSEL TIP VE REHABÝLÝTASYON')
insert into Policlinic(Policlinicname) values ('GASTROENTEROLOJÝ')
insert into Policlinic(Policlinicname) values ('GENEL CERRAHÝ')
insert into Policlinic(Policlinicname) values ('GÖÐÜS CERRAHÝSÝ')
insert into Policlinic(Policlinicname) values ('GÖZ HASTALIKLARI')
insert into Policlinic(Policlinicname) values ('HEMATOLOJÝ')
insert into Policlinic(Policlinicname) values ('ÝÇ HASTALIKLARI')
insert into Policlinic(Policlinicname) values ('KADIN HASTALIKLARI VE DOÐUM')
insert into Policlinic(Policlinicname) values ('KARDÝYOLOJÝ')
insert into Policlinic(Policlinicname) values ('KULAK-BURUN-BOÐAZ HASTALIKLARI')
insert into Policlinic(Policlinicname) values ('NEFROLOJÝ')
insert into Policlinic(Policlinicname) values ('NÖROLOJÝ')
insert into Policlinic(Policlinicname) values ('ORTOPEDÝ VE TRAVMATOLOJÝ')
insert into Policlinic(Policlinicname) values ('PLASTÝK REKONSTRÜKTÝF VE ESTETÝK CERRAHÝ')
insert into Policlinic(Policlinicname) values ('PSÝKÝYATRÝ')

insert into Sickness(Sicknessname) values ('Kalp-Damar Hastasý')
insert into Sickness(Sicknessname) values ('Böbrek Yetmezliði')
insert into Sickness(Sicknessname) values ('Karaciðer Yetmezliði')
insert into Sickness(Sicknessname) values ('Sinirsel Bozukluk')
insert into Sickness(Sicknessname) values ('Alzheimer')
insert into Sickness(Sicknessname) values ('Ýþitme Sorunu')
insert into Sickness(Sicknessname) values ('Þeker Hastalýðý')
insert into Sickness(Sicknessname) values ('Kolesterol Hastalýðý')
insert into Sickness(Sicknessname) values ('Kemik Erimesi')
insert into Sickness(Sicknessname) values ('Kolesterol Hastalýðý')
insert into Sickness(Sicknessname) values ('Solunum Yetmezliði')
insert into Sickness(Sicknessname) values ('Baðýrsak Kanseri')
insert into Sickness(Sicknessname) values ('Yaralanma')
insert into Sickness(Sicknessname) values ('Kýrýk-Çýkýk')
insert into Sickness(Sicknessname) values ('Hastalýðý Yok')
insert into Sickness(Sicknessname) values ('Prostat Kanseri')
insert into Sickness(Sicknessname) values ('Akciðer Kanseri')
insert into Sickness(Sicknessname) values ('Cilt Kanseri')
insert into Sickness(Sicknessname) values ('Göðüs Kanseri')
insert into Sickness(Sicknessname) values ('Kemik Kanseri')


insert into StateOfHealth(StateOfHealthname) values ('Normal')
insert into StateOfHealth(StateOfHealthname) values ('Rahatsýz')
insert into StateOfHealth(StateOfHealthname) values ('Kritik')
insert into StateOfHealth(StateOfHealthname) values ('Yoðun Bakýmda')
insert into StateOfHealth(StateOfHealthname) values ('Ameliyatta')
insert into StateOfHealth(StateOfHealthname) values ('Vefat')
insert into StateOfHealth(StateOfHealthname) values ('Hafif yaralý')
insert into StateOfHealth(StateOfHealthname) values ('Aðýr yaralý')
insert into StateOfHealth(StateOfHealthname) values ('Ayakta tedavi')
insert into StateOfHealth(StateOfHealthname) values ('Ýlaçlý tedavi')
insert into StateOfHealth(StateOfHealthname) values ('Baþka hastaneye nakil')


insert into PatientInformation(Name_Surname,Age,Gender) values ('Hüseyin SAÐLAM',26,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Alparslan YOL',25,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Fadime DERÝN',24,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Nazlý DURU',23,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Buket ÇÝÇEK',22,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Doðukan YALIN',21,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Kývanç SEVÝM',26,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Berkay YENÝGÜN',21,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Fatih ÞIKGÝL',20,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Yusuf AFACAN',35,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Dilek SUSAK',45,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Levent AÇIKGÖZ',28,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Nur AYDIN',18,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Azra YILMAZ',13,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Eslem ELÝBOL',10,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Nisa KARAM',5,'K')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Artuk TORAM',28,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Teoman SAVAÞ',58,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Burçigin TOY',5,'E')
insert into PatientInformation(Name_Surname,Age,Gender) values ('Demirhan TANRIVERDÝ',10,'E')
