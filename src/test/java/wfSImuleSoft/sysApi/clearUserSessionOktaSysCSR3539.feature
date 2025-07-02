Feature: Getting mule-okta-sys-api to test get users for ticket CSR-3539

  
  @reg
  Scenario Outline: Verify get users for mule-okta-sys-api in sys environment for ticket CSR-3539
  
    * karate.configure('ssl',true)
    
    Given url 'https://mule-wft.qa.medpro.com/api/okta/sys/v1/<user_data>'
    When method delete
    Then status 204
    
    

    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_clearUserSessionOktaSysCSR3539.csv') |
