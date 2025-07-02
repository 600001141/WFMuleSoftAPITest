Feature: Getting mule-eis-sys-api to get EIS Agent for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/users'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/users?offset=0&limit=10&sort=lastName'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get EIS agent for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And param offset = '0'
And param limit = '10'
And param sort = 'lastName'
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        

* match response.content[0].id == <id>
* match response.content[0].userName == <userName>
* match response.content[0].userLogin == <userLogin>
* match response.content[0].domain == <domain>
* match response.content[0].subProducer == <subProducer>
* match response.content[0].defaultAgencyCode == <defaultAgencyCode>
* match response.content[0].firstName == <firstName>
* match response.content[0].lastName == <lastName>
* match response.content[0].userWorkStatus == <userWorkStatus>




    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getEISAgentsCSR3533Sys.csv') |
