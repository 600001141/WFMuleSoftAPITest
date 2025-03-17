Feature:  Getting mule-salesforce-sys-api to test contacts ID for ticket CSR-3543

Scenario Outline: Verify contacts ID for mule-salesforce-sys-api in sys environment for ticket CSR-3543

* karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/salesforce/sys/v1/<contacts_id>'
    When method get
    Then status 200
   
    * def length1 = karate.jsonPath(response, "$.content.[*].id")
    And print length1
    * def count = length1.length
    * match count == 1
    
     Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getContactsIDCSR3543Sys.csv') |