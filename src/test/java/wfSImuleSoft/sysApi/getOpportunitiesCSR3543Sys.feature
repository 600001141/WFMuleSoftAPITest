Feature:  Getting mule-salesforce-sys-api to test opportunities for ticket CSR-3543

Scenario Outline: Verify opportunities for mule-salesforce-sys-api in sys environment for ticket CSR-3543

* karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/salesforce/sys/v1/<opportunities>'
    When method get
    Then status 200
   
    * def length1 = karate.jsonPath(response, "$.content.[*].id")
    And print length1
    * def count = length1.length
    * match count == 25
    
     Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getOpportunitiesCSR3543Sys.csv') |