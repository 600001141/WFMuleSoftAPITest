Feature: Getting mule-eis-sys-api to get Active Certs for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/certificates/active?customerNumber=515753&transactionEffectiveDate=2024-01-01'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/certificates/active?customerNumber=515753&transactionEffectiveDate=2024-01-01'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get Active Certs for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        

# Metadata checks
* match response.metadata.count == <count>
* match response.metadata.page == <page>
* match response.metadata.limit == <limit>


# Content checks
* match response.content[0].policyNumber == <policyNumber>
* match response.content[0].policyStatusCd == <policyStatusCd>
* match response.content[0].customerNumber == <customerNumber>




    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getActiveCertsCSR3533Sys.csv') |
      
      
