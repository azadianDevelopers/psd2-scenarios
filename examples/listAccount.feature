@Account
Feature: List Account details

@Consent
Scenario Outline: List basic account details
   Given customer is redirected from <tpp>,
   Then the UI will ask for Login,
   When user given logs in <username> and <password>,
   Then the UI will ask for consent to provide details of <accountNumber>
   When the <tpp> requests details of account <accountNumber>
   Then the TPP will receive basic details of the account

   