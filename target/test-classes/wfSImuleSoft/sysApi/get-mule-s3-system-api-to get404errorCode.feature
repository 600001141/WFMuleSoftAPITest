Feature: Getting mule-s3-system-api to get 404 error message for test ticket CSR-3521

  Scenario Outline: To verify the system api to get 404 error message for ticket CSR-3521
    * karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/s3/sys/v1/<Pdf_file>'
    When method get
    Then status 404

    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getmule_s3_error404.csv') |
