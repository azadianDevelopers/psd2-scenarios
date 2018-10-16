@Account @AnotherLabel
Feature: Payment Maximum Amount

Background:
      Selected <bank>
      Given customer has given PIS Consent to <tpp>
      

@Consent
Scenario Outline: Make a suucessful payment
   Given i make a payment of <amount> in currency <currency>from <fromAccount> to account <toAccount>
   Then when the payment is submited its succeeds 

Examples:
  |amount|currency|fromAccount|toAccount|
  |30|eur|5353-566999|34234-234234|
  |12|eur|234242-234234|234234-234234|

@Consent
Scenario Outline: Make a payment that fails
   Given i make a payment of <amount> in currency <currency> from <fromAccount> to account <toAccount>
   Then when the payment is submited its fails with error message <errorMessage>   

Examples:
  |amount|currency|fromAccount|toAccount|errorMessage|
  |11111|eur|5353-566999|34234-234234|Amount way too much|
  |2333|eur|234242-234234|234234-234234|Amount too much|
   
