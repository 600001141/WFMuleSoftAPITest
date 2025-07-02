Feature: Getting mule-eis-sys-api to get EIS Claim for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/claims/C548'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/claims/C548'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get EIS Claim for ticket CSR-3533
  
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
* match response.content[0].claimNumber == <claimNumber>
* match response.content[0].claimStatusCd == <claimStatusCd>
* match response.content[0].customerNumber == <customerNumber>
* match response.content[0].lossDesc == <lossDesc>



    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getEISClaimCSR3533Sys.csv') |
      
      
