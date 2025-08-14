Feature: Getting mule-s3-system-api to get PDF file to test ticket CSR-3521

  Background: 
    * url baseUrl
    * header Content-Type = 'application/json'
    #* header Accept = 'application/json'
    * karate.configure('ssl',true)

  @reg
  Scenario: To verify the system api to get pdf file for ticket CSR-3521
    * karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/s3/sys/v1/s3Object'
    * def body = read("PostData/cSR3521Post.json")
    And request body
    When method POST
    Then status 200
    And print response

  @reg
  Scenario Outline: To verify the system api to get pdf file for ticket CSR-3521
    * karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/s3/sys/v1/<pdf_file>'
    When method get
    Then status 200
    * header Accept = 'application/pdf'
    * def pdfFile = 'downloaded2.pdf'
    * karate.write(responseBytes, pdfFile)

    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getmule_s3_generatePdf.csv') |
