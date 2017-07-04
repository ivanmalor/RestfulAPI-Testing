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

