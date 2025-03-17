Feature:  Getting mule-salesforce-sys-api to test opportunities smoke test for ticket CSR-3543

Scenario Outline: Verify opportunities smoke test for mule-salesforce-sys-api in sys environment for ticket CSR-3543

* karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/salesforce/sys/v1/<opportunities_smoke>'
    When method get
    Then status 200
   
    
    * def length1 = karate.jsonPath(response, "$.content.[*].id")
    And print length1
    * def count = length1.length
    * match count == 1
    
     Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getOpportunitiesSmokeCSR3543Sys.csv') |