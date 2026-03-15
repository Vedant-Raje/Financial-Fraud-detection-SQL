CREATE DATABASE fraud_analysis;

USE fraud_analysis;

CREATE TABLE transactions (
step INT,
type VARCHAR(20),
amount FLOAT,
nameOrig VARCHAR(30),
oldbalanceOrg FLOAT,
newbalanceOrig FLOAT,
nameDest VARCHAR(30),
oldbalanceDest FLOAT,
newbalanceDest FLOAT,
isFraud INT,
isFlaggedFraud INT
);

-- Verifying the dataset
SELECT COUNT(*) AS total_rows
FROM transactions;

DESCRIBE transactions;

-- Looking at the sample data
SELECT *
FROM transactions
LIMIT 10;

-- Checking fraud distribution
SELECT isFraud,
COUNT(*) AS transaction_count
FROM transactions
GROUP BY isFraud;

-- Analysing transaction types
SELECT type,
COUNT(*) AS total_transactions
FROM transactions
GROUP BY type
ORDER BY total_transactions DESC;

-- Detecting fraud by transaction type
SELECT type,
COUNT(*) AS total_transactions,
SUM(isFraud) AS fraud_cases
FROM transactions
GROUP BY type
ORDER BY fraud_cases DESC;

-- Finding highest fraud amounts
SELECT nameOrig,
nameDest,
amount
FROM transactions
WHERE isFraud = 1
ORDER BY amount DESC
LIMIT 10;

-- Detecting suspicious accounts
SELECT nameOrig,
COUNT(*) AS fraud_attempts
FROM transactions
WHERE isFraud = 1
GROUP BY nameOrig
ORDER BY fraud_attempts DESC
LIMIT 10;

-- Analysing fraud over time 
SELECT step,
COUNT(*) AS fraud_cases
FROM transactions
WHERE isFraud = 1
GROUP BY step
ORDER BY step;

-- Detecting large transfer amounts
SELECT *
FROM transactions
WHERE type = 'TRANSFER'
AND amount > 500000
ORDER BY amount DESC;

-- Checking balance consistency
SELECT nameOrig,
amount,
oldbalanceOrg,
newbalanceOrig
FROM transactions
WHERE oldbalanceOrg - amount != newbalanceOrig
LIMIT 20;

-- Identifying top spending accounts
SELECT nameOrig,
SUM(amount) AS total_sent
FROM transactions
GROUP BY nameOrig
ORDER BY total_sent DESC
LIMIT 10;

