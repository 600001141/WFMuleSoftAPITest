Feature: Getting mule-employeePolicies-exp-api to get employee Policies for ticket CSR-3535

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/employeePolicies/v1/Policies'
  
  # URL 'https://mule-wft.qa.medpro.com/api/employeePolicies/v1/Policies?customerNumber=511546&transactionEffectiveDate=2021-01-01'
  
  @reg
  Scenario Outline: Verify mule-employeePolicies-exp-api to get employee Policies for ticket CSR-3535
  
 * karate.configure('ssl',true)
    
Given url getUrl
And param customerNumber = 511546
And param transactionEffectiveDate = '2021-01-01'
  
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        

* match response.content[1].riderBenefits[0].masterPolicyNumber == <masterPolicyNumber>
* match response.content[1].riderBenefits[0].productCode == <productCode>
* match response.content[1].riderBenefits[0].benefits[0].code == <code>
* match response.metadata.count == <count>
* match response.message.state == <state>



 Examples: 
  | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getEmployeePoliciesCSR3535Exp.csv') |
      
      
