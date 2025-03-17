Feature: Getting mule-fileprocesses-proc-api MULE_PAYCLAIM_PROCESS_API for ticket CSR-3537


Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  

Scenario Outline: To verify the MULE_PAYCLAIM_PROCESS_API in Proc environment for ticket CSR-3537

* karate.configure('ssl',true)
Given path 'api/fileprocesses/prc/v1/fileprocess'
And param page = <page no>
And param pagesize = <page size>
And param appshortname = '<appshort name>'
When method get
Then status 200
And print response

	  * def length1 = karate.jsonPath(response, "$.content.[*].id")
      And print length1
    * def count = length1.length
    * match count == 10

 
Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ProcApiData\\data_getFilePayClaimProcessProcCSR3537.csv') |