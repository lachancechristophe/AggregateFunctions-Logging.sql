CREATE OR REPLACE FUNCTION logging_function()
    RETURNS TRIGGER
    SET SCHEMA 'public'
    LANGUAGE plpgsql
    AS $body$
    BEGIN
        IF TG_OP = 'UPDATE' THEN
            INSERT INTO journal_evenements
            (usager, action, tablename, champ,
            data_before, data_after, moment)
            VALUES (current_user, TG_OP, TG_TABLE_NAME, '',
            row_to_json(OLD.*), row_to_json(NEW.*), NOW());
            RETURN NEW;
        ELSE 
            INSERT INTO journal_evenements
            (usager, action, tablename, champ,
            data_before, data_after, moment)
            VALUES (current_user, TG_OP, TG_TABLE_NAME, '',
            NULL, row_to_json(NEW.*), NOW());
            RETURN NEW;
        END IF;
    END;
    $body$;