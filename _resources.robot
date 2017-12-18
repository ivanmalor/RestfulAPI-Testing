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
    Set Request Header    Content-Type  application/json

REST Call
    [Arguments]    ${method}    ${resource}   ${status}   ${payload}=${EMPTY}
    Log Many    ${method}   ${resource}   ${payload}
    Set Request Body    ${payload}
    Run Keyword And Continue On Failure      ${method}    ${resource}
    Log Response Status
    Log Response Body
    Response Status Code Should Equal    ${status}

Add message body
    [Arguments]    ${dict}
    ${json_object}    Stringify JSON    ${dict}
    Set Request Body    ${json_object}
