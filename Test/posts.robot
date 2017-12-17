*** Setting ***
Resource      ../_resources.robot


*** Test Cases ***

C4 Retrieve collection of posts
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/4
    [tags]    GET

    Test http request option    get    /posts    200

C11 Retrieve a collection of posts by user's ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/11
    [tags]    GET

    Test http request option    get    /posts?userID    200

C12 Retrieve a post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/12
    [tags]    GET

    Test http request option    get    /posts/1    200

C13 Edit an exisiting post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/13
    [tags]    PUT

    Test http request option    put    /posts/1    200

C14 Delete a post by ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/14
    [tags]    DELETE

    Test http request option    delete    /posts/1    200

C16 Create a new post from an existing user
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/16
    [tags]    POST

    Test http request option    post    /posts    201   &{valid_post}

C18 Search for an non existing post
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/18
    [tags]    GET

    Next Request May Not Succeed
    Test http request option    get    /posts/0    404
