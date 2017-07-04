*** Setting ***
Resource    ./post_resources.robot

Test Setup  Setup HTTP Client



*** Test Cases ***

C4 Retrieve collection of posts
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/4
    [tags]    GET
    
    GET    /posts
    Log Response Body
    Response Status Code Should Equal    200

C11 Retrieve a collection of posts by user's ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/11
    [tags]    GET

    GET    /posts?userId=${user id}
    Log Response Body
    Response Status Code Should Equal    200

C12 Retrieve a post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/12
    [tags]    GET

    GET    /posts/1
    Log Response Body
    Response Status Code Should Equal    200

C13 Edit an exisiting post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/13
    [tags]    PUT

    ${post}=    Create Dictionary    userId=${user id}  title=${title}    body=${body}
    ${json post}=    Stringify JSON      ${post}
    Set Request Header    Content-Type  application/json
    Set Request Body      ${json post}
    PUT    /posts/${user id}
    Log Response Body
    Response Status Code Should Equal    200
    
C14 Delete a post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/14
    [tags]    DELETE

    DELETE    /posts/1
    Log Response Body
    Response Status Code Should Equal    200

C16 Create a new post from an existing user
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/16
    [tags]    POST
    
    ${post}=    Create Dictionary    userId=${user id}  title=${title}    body=${body}
    ${json post}=    Stringify JSON      ${post}
    Set Request Header    Content-Type  application/json
    Set Request Body      ${json post}
    POST    /posts/
    Log Response Body
    Response Status Code Should Equal    201

C18 Search for an non existing post
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/18
    [tags]    GET

    Next Request May Not Succeed
    GET    /posts/0
    ${response}=    Get Response Status
    Should Be Equal As Strings    404 Not Found    ${response}
    
    


