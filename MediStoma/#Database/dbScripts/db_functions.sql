----------------------------------------------------------------------------------------------

DROP FUNCTION IF EXISTS f_zatrzask_pacjent(INTEGER) CASCADE;
CREATE OR REPLACE FUNCTION f_zatrzask_pacjent(p_IdPac INTEGER) RETURNS INTEGER
AS
$$
DECLARE
  zatrzaskIdPac INTEGER;
BEGIN
  SELECT
    pz.id_pac_zatrzask
  FROM
    t_pacjent_zatrzask pz
  JOIN
    t_pacjent p USING (id_pac)
  WHERE
    pz.id_pac = p_IdPac
    AND pz.nazwisko IS NOT DISTINCT FROM p.nazwisko
    AND pz.nazwisko_pan IS NOT DISTINCT FROM p.nazwisko_pan
    AND pz.imie IS NOT DISTINCT FROM p.imie
    AND pz.pesel IS NOT DISTINCT FROM p.pesel
    AND pz.plec IS NOT DISTINCT FROM p.plec
    AND pz.nr_dokumentu IS NOT DISTINCT FROM p.nr_dokumentu
    AND pz.miasto IS NOT DISTINCT FROM p.miasto
    AND pz.kod_poczt IS NOT DISTINCT FROM p.kod_poczt
    AND pz.ulica IS NOT DISTINCT FROM p.ulica
    AND pz.nr_domu IS NOT DISTINCT FROM p.nr_domu
    AND pz.nr_lokalu IS NOT DISTINCT FROM p.nr_lokalu
  LIMIT
    1
  INTO
    zatrzaskIdPac;

  IF zatrzaskIdPac IS NULL THEN
    INSERT INTO t_pacjent_zatrzask (
      id_pac,
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
    )
    SELECT
      p_IdPac,
      p.nazwisko,
      p.nazwisko_pan,
      p.imie,
      p.pesel,
      p.plec,
      p.nr_dokumentu,
      p.miasto,
      p.kod_poczt,
      p.ulica,
      p.nr_domu,
      p.nr_lokalu
    FROM
      t_pacjent p
    WHERE
      p.id_pac = p_IdPac
    RETURNING
      id_pac_zatrzask
    INTO
      zatrzaskIdPac;
  END IF;

  RETURN zatrzaskIdPac;
END;
$$
LANGUAGE plpgsql;

----------------------------------------------------------------------------------------------