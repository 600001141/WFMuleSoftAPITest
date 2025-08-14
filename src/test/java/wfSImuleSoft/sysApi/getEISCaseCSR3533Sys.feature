Feature: Getting mule-eis-sys-api to get EIS Case for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/cases'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/cases?customerNumber=510005'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get EIS case for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And param customerNumber = '510005'
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        
* match response.content[0].caseNumber == <caseNumber>
* match response.content[0].name == <name>
* match response.content[0].customerNumber == <customerNumber>
* match response.content[0].originalEffectiveDate == <originalEffectiveDate>
* match response.content[0].effectiveDate == <effectiveDate>
* match response.content[0].geographyCd == <geographyCd>
* match response.content[0].stateCd == <stateCd>
* match response.content[0].lastPerformer == <lastPerformer>
* match response.content[0].timedStatusCd == <timedStatusCd>


    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getEISCaseCSR3533Sys.csv') |
