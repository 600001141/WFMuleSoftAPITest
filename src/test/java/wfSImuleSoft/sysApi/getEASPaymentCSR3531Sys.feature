Feature: Getting mule-eas-sys-api to get EAS Payment for ticket CSR-3531

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eas/sys/v1/payments'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eas/sys/v1/payments'
  
  @reg
  Scenario: Verify mule-eas-sys-api to get EAS Payment for ticket CSR-3531
  
 * karate.configure('ssl',true)
    
Given url getUrl
And request {}
When method get
Then status 200
And print response
    
    

        




   
      
