Feature: Getting mule-eis-sys-api to get Multiple Lookups for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/lookups/search?names=MaritalStatus%2CPaymentMethod'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/lookups/search?names=MaritalStatus%2CPaymentMethod'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get Multiple Lookups for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        


* match response.metadata.count == <count>
* match response.metadata.limit == <limit>
* match response.content[0].name == <name>
* match response.content[0].values[0].code == <code>





    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getMultipleLookupsCSR3533Sys.csv') |
      
      
