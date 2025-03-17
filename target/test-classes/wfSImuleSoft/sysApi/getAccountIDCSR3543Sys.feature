Feature:  Getting mule-salesforce-sys-api to test account ID for ticket CSR-3543

Scenario Outline: Verify account ID for mule-salesforce-sys-api in sys environment for ticket CSR-3543

* karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/salesforce/sys/v1/<account_ID>'
    When method get
    Then status 200
   
    * def length1 = karate.jsonPath(response, "$.content.[*].id")
    And print length1
    * def count = length1.length
    * match count == 1
    
     Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getAccountIDCSR3543Sys.csv') |