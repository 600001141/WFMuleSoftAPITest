Feature: Getting mule-eis-sys-api to get EIS Agent for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/claimpayments?paymentstatus=cleared&asofdate=2024-02-01T00%3A00%3A00Z'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/claimpayments?paymentstatus=cleared&asofdate=2024-02-01T00%3A00%3A00Z&offset=0&limit=10'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get EIS agent for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And param offset = '0'
And param limit = '10'
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        

* match response.content[0].paymentNumber == <paymentNumber>
* match response.content[0].paymentStatus == <paymentStatus>
* match response.content[0].payee.typeCd == <typeCd>
* match response.content[0].payee.refId == <refId>
* match response.content[0].payee.displayValue == <displayValue>
* match response.content[0].netPaymentAmt.currencyCd == <currencyCd>
* match response.content[0].paymentDetails.type == <type>



    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getEISPaymentsCSR3533Sys.csv') |
      
      
