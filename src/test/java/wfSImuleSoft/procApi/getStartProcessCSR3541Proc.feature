Feature: Getting mule-payClaim-proc-api Start The Process for ticket CSR-3541


    
  Scenario Outline: Verify mule-payClaim-proc-api in proc environment for ticket CSR-3541
  
    * karate.configure('ssl',true)
    
    Given url 'https://mule-wft.qa.medpro.com/api/payclaim/v1/<start_process>'
    When method get
    Then status 200
    Then print response
    * def expResponse = response
    
    * print '=========Validating field values in response================= :'
    * match expResponse == <testData>     
                 
        
    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ProcApiData\\data_getStartProcessCSR3541.csv') |