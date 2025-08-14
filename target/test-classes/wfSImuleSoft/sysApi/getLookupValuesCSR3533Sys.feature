Feature: Getting mule-eis-sys-api to get Lookup Values for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/lookups/ACAmbulanceTransportation'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/lookups/ACAmbulanceTransportation'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get Lookup Values for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        

* match response.content[0].code == <code>
* match response.content[0].defaultValue == <defaultValue>
* match response.content[0].coverageCd == <coverageCd>
* match response.content[0].productCd == <productCd>



    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getLookupValuesCSR3533Sys.csv') |
      
      
