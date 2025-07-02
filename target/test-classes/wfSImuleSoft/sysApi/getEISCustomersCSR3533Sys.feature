Feature: Getting mule-eis-sys-api to get EIS customers for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/customers'
  
  # URL 'api/eis/sys/v1/customers?offset=0&limit=10&sort=lastName&firstname=John'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get EIS customers for ticket CSR-3533
  
    * karate.configure('ssl',true)
    
Given url getUrl
And param offset = 0
And param limit = 10
And param sort = 'lastName'
And param firstname = 'John'
And request {}
When method get
Then status 200
And print response
    
    

* print '=========Validating field values in response================= :'
        
    #* match response.content[0].customerNumber == <cNumber>
		#* match response.content[0].customerType contains <cType>
		#* match response.content[0].accountNumber contains <aNumber>
	  #* match response.content[0].displayValue contains <dValue>
		#* match response.content[0].preferredSpokenLanguageCd contains <pSLanguageCd>
		#* match response.content[0].preferredWrittenLanguageCd contains <pWLanguageCd>


    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getEISCustomersCSR3533Sys.csv') |
