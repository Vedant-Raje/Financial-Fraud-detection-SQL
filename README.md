# Financial Fraud Detection Analysis using SQL

## Project Overview
This project analyzes financial transaction data to identify patterns of fraudulent activity using SQL.  
The analysis is performed on a subset of the **PaySim Synthetic Financial Dataset for Fraud Detection**, which simulates mobile money transactions. The goal is to explore transaction behavior, detect suspicious accounts, and understand patterns associated with fraudulent transactions.

## Dataset
Dataset used: **Synthetic Financial Dataset for Fraud Detection (PaySim)**

The dataset contains simulated financial transactions with attributes such as:

- Transaction type
- Transaction amount
- Sender and receiver accounts
- Account balances before and after transactions
- Fraud indicators

For this project, a **sample of 100,000 transactions** was used for analysis.

## Tools Used
- SQL
- MySQL
- MySQL Workbench

## Key Analysis Performed
The SQL analysis focuses on identifying patterns related to fraud. Key investigations include:

- Distribution of transaction types
- Fraud vs non-fraud transaction counts
- Fraud occurrence by transaction type
- Identification of suspicious accounts involved in multiple fraud attempts
- Detection of high-value transactions
- Balance consistency checks in transactions

## Insights
From the analysis, the following key insights were observed:

1. **Fraud occurs mainly in TRANSFER transactions.**
2. **Fraud transactions represent less than 1% of total transactions**, showing that fraud detection involves identifying rare events.
3. **Some accounts repeatedly appear in fraud attempts**, indicating possible compromised accounts or coordinated fraudulent activity.
4. **Large transfers are more likely to be fraudulent**, suggesting that high-value transactions require closer monitoring.


## Conclusion
This project demonstrates how SQL can be used to analyze financial transaction data and uncover patterns associated with fraudulent activity. The analysis highlights how transaction type, amount, and account behavior can help identify suspicious activity in financial systems.
