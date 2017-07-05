*** Setting ***
Resource    ./post_resources.robot
<<<<<<< HEAD
Test Setup  Setup HTTP Client


=======

Test Setup  Setup HTTP Client



>>>>>>> 22f27865f74c589a74cbb3edcaf080339c94a742
*** Test Cases ***

C4 Retrieve collection of posts
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/4
<<<<<<< HEAD
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    GET
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file
=======
    [tags]    GET
>>>>>>> 22f27865f74c589a74cbb3edcaf080339c94a742
    
    GET    /posts
    Log Response Body
    Response Status Code Should Equal    200

C11 Retrieve a collection of posts by user's ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/11
<<<<<<< HEAD
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    GET
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file
=======
    [tags]    GET
>>>>>>> 22f27865f74c589a74cbb3edcaf080339c94a742

    GET    /posts?userId=${user id}
    Log Response Body
    Response Status Code Should Equal    200

C12 Retrieve a post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/12
<<<<<<< HEAD
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    GET
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file
=======
    [tags]    GET
>>>>>>> 22f27865f74c589a74cbb3edcaf080339c94a742

    GET    /posts/1
    Log Response Body
    Response Status Code Should Equal    200

C13 Edit an exisiting post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/13
<<<<<<< HEAD
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    PUT
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file
=======
    [tags]    PUT
>>>>>>> 22f27865f74c589a74cbb3edcaf080339c94a742

    ${post}=    Create Dictionary    userId=${user id}  title=${title}    body=${body}
    ${json post}=    Stringify JSON      ${post}
    Set Request Header    Content-Type  application/json
    Set Request Body      ${json post}
    PUT    /posts/${user id}
    Log Response Body
    Response Status Code Should Equal    200
    
C14 Delete a post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/14
<<<<<<< HEAD
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    DELETE
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file
=======
    [tags]    DELETE
>>>>>>> 22f27865f74c589a74cbb3edcaf080339c94a742

    DELETE    /posts/1
    Log Response Body
    Response Status Code Should Equal    200

C16 Create a new post from an existing user
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/16
<<<<<<< HEAD
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    POST
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file
=======
    [tags]    POST
>>>>>>> 22f27865f74c589a74cbb3edcaf080339c94a742
    
    ${post}=    Create Dictionary    userId=${user id}  title=${title}    body=${body}
    ${json post}=    Stringify JSON      ${post}
    Set Request Header    Content-Type  application/json
    Set Request Body      ${json post}
    POST    /posts/
    Log Response Body
    Response Status Code Should Equal    201

C18 Search for an non existing post
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/18
<<<<<<< HEAD
<<<<<<< b6b49c75d4d68731d673c2c2c8fd14fc664c5db2
    [tags]    GET
=======
>>>>>>> Add comments test resources. Add comments test cases in posts.robot file

    Next Request May Not Succeed
    GET    /posts/0
    ${response}=    Get Response Status
    Should Be Equal As Strings    404 Not Found    ${response}
    
=======
    [tags]    GET
    
    Run Keyword And Ignore Error    GET    /posts/0
    Response Status Code Should Equal    404
>>>>>>> 22f27865f74c589a74cbb3edcaf080339c94a742
    


