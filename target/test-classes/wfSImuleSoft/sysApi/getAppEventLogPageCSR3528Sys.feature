Feature: Getting mule-appeventlogs-sys-api to get appeventlogs page for ticket CSR-3528

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/appeventlogs/sys/v2/logs'
  
  # URL 'https://mule-wft.qa.medpro.com/api/appeventlogs/sys/v2/logs?page=1&pagesize=10&sortexpression=Id&sortorder=desc'
  
  @reg
  Scenario Outline: Verify mule-appeventlogs-sys-api to get appeventlogs page for ticket CSR-3528
  
 * karate.configure('ssl',true)
    
Given url getUrl
And param page = 1
And param pagesize = 10
And param sortexpression = 'Id'
And param sortorder = 'desc'
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        

#* match response.content[*].OrganizationID contains <OrganizationID>
#* match response.content[*].Id contains <Id>


    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getAppEventLogCSR3528Sys.csv') |
      
      
