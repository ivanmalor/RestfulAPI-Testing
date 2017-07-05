*** Settings ***
Library     HttpLibrary.HTTP

*** Variables ***

${HOST}      jsonplaceholder.typicode.com


*** Keywords ***

Setup HTTP Client
    Create HTTP Context  ${HOST}
    Set json content type

Set json content type
    Set Request Header    Content-Type  application/json

Test http request option
    [Arguments]    ${method}    ${resource}    ${status}
    Run Keyword If    '${method}'=='get'       GET    ${resource}
    Run Keyword If    '${method}'=='delete'    DELETE    ${resource}
    Run Keyword If    '${method}'=='post'      POST    ${resource}
    Run Keyword If    '${method}'=='put'       PUT    ${resource}
    Log Response Body
    Response Status Code Should Equal    ${status}
