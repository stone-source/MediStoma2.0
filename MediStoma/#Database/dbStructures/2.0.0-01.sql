----------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS t_pacjent CASCADE;
CREATE TABLE t_pacjent (
    id_pac SERIAL NOT NULL,
    nazwisko VARCHAR(100) NOT NULL,
    nazwisko_pan VARCHAR(50),
    imie VARCHAR(100) NOT NULL,
    pesel VARCHAR(11) NOT NULL,
    plec "char" NOT NULL,
    nr_dokumentu VARCHAR(100) NOT NULL,
    miasto VARCHAR(100) NOT NULL,
    kod_poczt VARCHAR(10) NOT NULL,
    ulica VARCHAR(200) NOT NULL,
    nr_domu VARCHAR(10) NOT NULL,
    nr_lokalu VARCHAR(10),
    wpis_data_dodania TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    wpis_data_aktualizacji TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    wpis_czy_aktualny BOOLEAN NOT NULL DEFAULT TRUE,
    CONSTRAINT pk_id_pac PRIMARY KEY (id_pac),
    CONSTRAINT ck_plec CHECK ((plec = 'K') or (plec = 'M'))
);

----------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS t_pacjent_zatrzask CASCADE;
CREATE TABLE t_pacjent_zatrzask (
    id_pac_zatrzask SERIAL NOT NULL,
    id_pac INTEGER NOT NULL,
    nazwisko VARCHAR(100) NOT NULL,
    nazwisko_pan VARCHAR(50),
    imie VARCHAR(100) NOT NULL,
    pesel VARCHAR(11) NOT NULL,
    plec "char" NOT NULL,
    nr_dokumentu VARCHAR(100) NOT NULL,
    miasto VARCHAR(100) NOT NULL,
    kod_poczt VARCHAR(10) NOT NULL,
    ulica VARCHAR(200) NOT NULL,
    nr_domu VARCHAR(10) NOT NULL,
    nr_lokalu VARCHAR(10),
    CONSTRAINT pk_id_pac_zatrzask PRIMARY KEY (id_pac_zatrzask),
    CONSTRAINT fk_t_pacjent_zatrzask_t_pacjent FOREIGN KEY (id_pac) REFERENCES t_pacjent (id_pac)
);

----------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS t_wizyta CASCADE;
CREATE TABLE t_wizyta (
    id_wiz SERIAL NOT NULL,
    id_pac INTEGER NOT NULL,
    id_pac_zatrzask INTEGER NOT NULL,
    data_rozpoczecia_wizyty TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    data_zakonczenia_wizyty TIMESTAMP WITHOUT TIME ZONE,
    CONSTRAINT pk_id_wiz PRIMARY KEY (id_wiz),
    CONSTRAINT fk_t_wizyta_t_pacjent FOREIGN KEY (id_pac) REFERENCES t_pacjent (id_pac),
    CONSTRAINT fk_t_wizyta_t_pacjent_zatrzask FOREIGN KEY (id_pac_zatrzask) REFERENCES t_pacjent_zatrzask (id_pac_zatrzask)
);

----------------------------------------------------------------------------------------------