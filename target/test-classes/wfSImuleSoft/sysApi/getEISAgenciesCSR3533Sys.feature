Feature: Getting mule-eis-sys-api to get EIS Agencies for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/agencies'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/agencies?code=QAG'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get EIS Agencies for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And param code = 'QAG'
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        
* match response.content[0].id == 795421
* match response.content[0].name == <name>
* match response.content[0].code == <code>
* match response.content[0].taxId == <taxId>
* match response.content[0].status == <status>
* match response.content[0].address.addressLine1 == <addLine1>
* match response.content[0].address.city == <city>
* match response.content[0].address.postalCode == <pCode>
* match response.content[0].address.stateProvCd == <statePCd>
* match response.content[0].address.countryCd == <countryCd>
* match response.content[0].channelCd == <channelCd>


    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getEISAgenciesCSR3533Sys.csv') |
