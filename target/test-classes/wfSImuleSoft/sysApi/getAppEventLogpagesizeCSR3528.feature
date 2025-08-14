Feature: Getting mule-appeventlogs-sys-api to get appeventlogs pagesize for ticket CSR-3528

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/appeventlogs/sys/v2/logs'
  
  # URL 'https://mule-wft.qa.medpro.com/api/appeventlogs/sys/v2/logs?pagesize=10&searchterm=at+methodname+such+and+such'
  
  @reg
  Scenario Outline: Verify mule-appeventlogs-sys-api to get appeventlogs pagesiz for ticket CSR-3528
  
 * karate.configure('ssl',true)
    
Given url getUrl
And param pagesize = 10
And param searchterm = 'at+methodname+such+and+such'
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        

* match response.content[*].OrganizationID contains <OrganizationID>
#* match response.content[*].Id contains <Id>


    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getAppEventLogpagesizeCSR3528.csv') |
      
      
