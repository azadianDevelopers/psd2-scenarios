@Sandbox
Feature: Website availability

Scenario Outline: Login to sandbox

  Given customer is redirected from <tpp>
  When user logs in <username> and <password>
  Then the UI will ask for Consent
  Examples:
   	| url	| loadTime	| Add
   	| https://developer.swedbank.com/admin/login	| 3000	| Run
   	| https://developer.swedbank.com/admin/login	| 3000	| Run
   	| https://prod.swedbank.com/admin/login	| 3000	| Run