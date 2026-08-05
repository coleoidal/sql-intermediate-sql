CREATE TABLE accounts (id INTEGER PRIMARY KEY, balance INTEGER);
INSERT INTO accounts VALUES(1, 500), (2, 600);

BEGIN TRANSACTION;
UPDATE accounts
  SET balance = balance - 100
  WHERE id = 1;
UPDATE accounts
  SET balance = balance + 100
  WHERE id = 2;
COMMIT;

SELECT id, balance FROM accounts
ORDER BY id;
