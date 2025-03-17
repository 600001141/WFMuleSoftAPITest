Feature: Getting mule-transprocesses-proc-api details for ticket CSR-3546


  Scenario Outline: Verify mule Trans processes details api in proc environment for ticket CSR-3546
    * karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/transprocesses/prc/v1/<Trans_details>'
    When method get
    Then status 200       
    
      
    

    
    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ProcApiData\\data_getTransDetailsProc.csv') |