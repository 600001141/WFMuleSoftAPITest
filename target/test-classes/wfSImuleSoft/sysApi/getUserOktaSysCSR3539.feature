Feature: Getting mule-okta-sys-api to test get users for ticket CSR-3539

  Scenario Outline: Verify get users for mule-okta-sys-api in sys environment for ticket CSR-3539
  
    * karate.configure('ssl',true)
    
    Given url 'https://mule-wft.qa.medpro.com/api/okta/sys/v1/<get_users>'
    When method get
    Then status 200
    
    * def length1 = karate.jsonPath(response, "$.content.[*].id")
    And print length1
    * def count = length1.length
    * match count == 3

    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getUserOktaSysCSR3539.csv') |
