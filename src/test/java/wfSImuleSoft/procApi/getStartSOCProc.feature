Feature: Getting mule-soc-proc-api for ticket CSR-3545

  Scenario Outline: Verify Start the SOC in proc environment for ticket CSR-3545
    * karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/socproc/v1/<Start_SOC>'
    When method get
    Then status 200    
    
    
    * print '=========Validating field values in response================= :'
    * match response == 'Completed'   
    

    
    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ProcApiData\\data_getStartSOCProc.csv') |