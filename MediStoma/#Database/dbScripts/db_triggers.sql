----------------------------------------------------------------------------------------------

DROP FUNCTION IF EXISTS f_t_pacjent_biu() CASCADE;
CREATE FUNCTION f_t_pacjent_biu() RETURNS trigger AS
$$
DECLARE
  optUpdate BOOLEAN := TG_OP = 'UPDATE';
BEGIN
  IF optUpdate THEN
    NEW.wpis_data_aktualizacji = CURRENT_TIMESTAMP;
  END IF;

  RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER trg_01_biu BEFORE INSERT OR UPDATE ON t_pacjent
FOR EACH ROW EXECUTE PROCEDURE f_t_pacjent_biu();

----------------------------------------------------------------------------------------------

DROP FUNCTION IF EXISTS f_t_wizyta_biu() CASCADE;
CREATE FUNCTION f_t_wizyta_biu() RETURNS trigger AS
$$
DECLARE
  optInsert BOOLEAN := TG_OP = 'INSERT';
BEGIN
  IF optInsert THEN
    IF NEW.id_pac_zatrzask IS NULL THEN
        NEW.id_pac_zatrzask = f_zatrzask_pacjent(NEW.id_pac);
    END IF;
  END IF;

  RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER trg_01_biu BEFORE INSERT OR UPDATE ON t_wizyta
FOR EACH ROW EXECUTE PROCEDURE f_t_wizyta_biu();

----------------------------------------------------------------------------------------------