@Account
Feature List All Accounts

Scenario Outline:
   Given customer is redirected from <tpp>,
   When user logs in with <username> and <password>,
   Then the UI will ask for Consent,
   When user gives logs in <username> and <password>,
   Then the API will list <numberOfAccounts> Accounts