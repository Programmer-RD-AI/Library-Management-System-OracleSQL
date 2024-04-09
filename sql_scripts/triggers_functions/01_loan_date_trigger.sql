CREATE
OR REPLACE TRIGGER trg_check_loan_date BEFORE
INSERT
    OR
UPDATE
    ON Loans FOR EACH ROW BEGIN IF :NEW.loan_date > SYSDATE THEN RAISE_APPLICATION_ERROR(-20001, 'Loan date cannot be in the future.');

END IF;

END;
