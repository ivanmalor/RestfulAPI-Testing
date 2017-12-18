*** Setting ***
Resource  000_comments_setup.robot
Suite Setup   Setup HTTP Client

*** Test Cases ***

C5 Retrieve collection of comments
    [tags]    GET
    Test http request option    get    /comments    200

C15 Retrieve collection of comments by Post ID
    [tags]    GET
    Test http request option    get    /comments/1    200

C17 Add comment to a post
    [tags]    POST
    Test http request option    post    /comments?postId=1    201
