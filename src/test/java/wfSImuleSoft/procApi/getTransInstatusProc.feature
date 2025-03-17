Feature: Getting mule-transprocesses-proc-api trans instatus for ticket CSR-3546


  Scenario Outline: Verify mule trans instatus api in proc environment for ticket CSR-3546
    * karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/transprocesses/prc/v1/transprocess/<trans_instatus>'
    When method get
    Then status 200       
    
      
    

    
    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ProcApiData\\data_getTranstransInstatus.csv') |