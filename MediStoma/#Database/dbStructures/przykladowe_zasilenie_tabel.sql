TRUNCATE t_pacjent CASCADE;
TRUNCATE t_wizyta CASCADE;

----------------------------------------------------------------------------------------------

INSERT INTO t_pacjent (
  nazwisko,
  nazwisko_pan,
  imie,
  pesel,
  plec,
  nr_dokumentu,
  miasto,
  kod_poczt,
  ulica,
  nr_domu,
  nr_lokalu
) VALUES (
  'Kowalski',
  '',
  'Janusz',
  '22101718615',
  'M',
  'JSE080470',
  'Pszczyna',
  '43-200',
  'Jasna',
  '23',
  ''
),
(
  'Nowak',
  '',
  'Andrzej',
  '04222119720',
  'M',
  'PGE506376',
  'Ruda-Śląska',
  '41-710',
  'Fryderyka Joliot-Curie',
  '25E',
  '15'
),
(
  'Grabowska-Piekarczyk',
  'Piekarczyk',
  'Barbara',
  '17100505902',
  'K',
  'QRC579857',
  'Warszawa',
  '00-000',
  'Jasna-Ciemnoszara i brązowa',
  '130',
  ''
);

----------------------------------------------------------------------------------------------

INSERT INTO t_wizyta (id_pac) SELECT id_pac FROM t_pacjent WHERE nazwisko = 'Kowalski';

----------------------------------------------------------------------------------------------

UPDATE t_pacjent
SET
  imie = 'Darek'
WHERE
  nazwisko = 'Kowalski';

----------------------------------------------------------------------------------------------