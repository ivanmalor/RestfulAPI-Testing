*** Settings ***
Library     HttpLibrary.HTTP

*** Variables ***

${HOST}      jsonplaceholder.typicode.com

&{valid_post}   userId=1
...             title=facere repellat provident occaecati excepturi optio reprehenderit
...             body=suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto

&{valid_comment}    name=Ivan Malo
...                 email=ivanmalo@gmail.biz
...                 body=Something

&{valid_user}   name=Ivan Malo
...             username=Imalo
...             email=ivanmalo@gmail.biz
...             address=Create address
...             phone=1-770-736-8031
...             website=www.test.com

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

Add message body
    [Arguments]      &{dict}
    ${json_object}    Stringify JSON    ${dict}
    Set Request Body    ${json_object}
