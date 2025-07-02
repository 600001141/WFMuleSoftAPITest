Feature: Getting mule-eis-sys-api to get Cert for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/certificates/CP0001003505'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/certificates/CP0001003505'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get Cert for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'        


* match response.metadata.count == <count>
* match response.metadata.page == <page>
* match response.content[0].policyNumber == <policyNumber>
* match response.content[0].customerNumber == <customerNumber>
* match response.content[0].insured.firstName == <firstName>
* match response.content[0].coverages[0].coverageCd == <coverageCd>



    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getCertCSR3533Sys.csv') |
      
      
