Feature: Getting mule-fileprocesses-proc-api GetFileProcess for ticket CSR-3537




Scenario Outline: To verify the File Process in Proc environment for ticket CSR-3537
* karate.configure('ssl',true)
Given url 'https://mule-wft.qa.medpro.com/api/fileprocesses/prc/v1/<file process>'
When method get
Then status 200


	  * def length1 = karate.jsonPath(response, "$.content.[*].id")
      And print length1
    * def count = length1.length
    * match count == 10

 
Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ProcApiData\\data_getFileProcessProcCSR3537.csv') |