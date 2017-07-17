*** Setting ***
Resource     ./comments_resources.robot
Suite Setup   Initialise Test

*** Test Cases ***

C5 Retrieve a collection of comments
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/5
    [tags]    GET

    Test http request option    get    /comments    200
    
    

C15 Retrieve a collection of comments by Post ID
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/15
    [tags]    GET

    Test http request option    get    /comments/1    200



C17 Add a comment of an existing post
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/17
    [tags]    POST

    Test http request option    post    /comments?postId=${post id}    201

*** Keywords ***

Initialise Test
    Setup HTTP Client
    Add comment to http request body

Add comment to http request body
    ${comment}=         Create Dictionary    name=${name}
    ...                                      email=${email}
    ...                                      body=${body}

    ${json comment}=    Stringify JSON       ${comment}
    Set Request Body      ${json comment}

