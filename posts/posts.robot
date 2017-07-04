*** Setting ***
Resource    ./post_resources.robot
Test Setup  Setup HTTP Client


*** Test Cases ***

C4 Retrieve collection of posts
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/4
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    GET
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file
    
    GET    /posts
    Log Response Body
    Response Status Code Should Equal    200

C11 Retrieve a collection of posts by user's ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/11
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    GET
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file

    GET    /posts?userId=${user id}
    Log Response Body
    Response Status Code Should Equal    200

C12 Retrieve a post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/12
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    GET
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file

    GET    /posts/1
    Log Response Body
    Response Status Code Should Equal    200

C13 Edit an exisiting post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/13
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    PUT
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file

    ${post}=    Create Dictionary    userId=${user id}  title=${title}    body=${body}
    ${json post}=    Stringify JSON      ${post}
    Set Request Header    Content-Type  application/json
    Set Request Body      ${json post}
    PUT    /posts/${user id}
    Log Response Body
    Response Status Code Should Equal    200
    
C14 Delete a post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/14
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    DELETE
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file

    DELETE    /posts/1
    Log Response Body
    Response Status Code Should Equal    200

C16 Create a new post from an existing user
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/16
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    POST
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file
    
    ${post}=    Create Dictionary    userId=${user id}  title=${title}    body=${body}
    ${json post}=    Stringify JSON      ${post}
    Set Request Header    Content-Type  application/json
    Set Request Body      ${json post}
    POST    /posts/
    Log Response Body
    Response Status Code Should Equal    201

C18 Search for an non existing post
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/18
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    GET
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file

    Next Request May Not Succeed
    GET    /posts/0
    ${response}=    Get Response Status
    Should Be Equal As Strings    404 Not Found    ${response}
    
    


