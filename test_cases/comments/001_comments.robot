*** Setting ***
Resource  000_comments_setup.robot
Suite Setup   Setup HTTP Client

*** Test Cases ***

Retrieve collection of comments
    [tags]    GET
    REST Call    GET    /comments    200

Retrieve collection of comments by Post ID
    [tags]    GET
    REST Call    GET    /comments/1    200

Add comment to a post
    [tags]    POST
    REST Call    POST    /comments?postId=1    201
