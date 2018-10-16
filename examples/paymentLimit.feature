@Account @AnotherLabel
Feature: Payment Maximum Amount

Background:
      Selected <bank>
      Given customer has given PIS Consent to <tpp>
      

@Consent
Scenario Outline: List All Consented Accounts
   Given i make a payment of <amount> from <fromAccount> to account <toAccount>
   Then when the payment is submited its status is <success>   

Examples:
  |amount|fromAccount|toAccount|success|
  |30|5353-566999|34234-234234|true|
  |2333|234242-234234|234234-234234|false|
   
