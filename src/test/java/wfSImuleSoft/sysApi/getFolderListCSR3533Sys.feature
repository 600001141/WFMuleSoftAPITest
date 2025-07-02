Feature: Getting mule-eis-sys-api to get folder list for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/efolders/claim/C68'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/efolders/claim/C68'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get folder list for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        

* match response.content[0].folderId == <folderId>
* match response.content[0].folderName == <folderName>
* match response.content[0].actions.add_document == <add_document>
* match response.content[0].actions.add_ext_document == <add_ext_document>
* match response.content[0].actions.refresh == <refresh>
* match response.content[0].documentTypes.RQST_ASSESS == <RQST_ASSESS>
* match response.content[0].documentTypes.MISC == <MISC>



    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getFolderListCSR3533Sys.csv') |
      
      
