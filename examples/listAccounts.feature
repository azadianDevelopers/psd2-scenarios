@Account @AnotherLabel
Feature: List All Accounts

@Consent
Scenario Outline: List All Consented Accounts
   Given customer is redirected from <tpp>,
   When user logs in with <username> and <password>,
   Then the UI will ask for Consent,
   When user gives consent to account numbers <accountNumbers>
   Then the API will list the details of accounts <accountNumbers>