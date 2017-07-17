*** Setting ***
Resource     ./users_resources.robot
Suite Setup   Initialise Test

*** Test Cases ***

C3 Retrieve collection of users
  [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/3
  [tags]    GET

  Test http request option    get    /users    200


C6 Create user with valid data
   [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/3
   [tags]    POST

   Test http request option    post    /users    201

C7 Retrieve exisiting user's information
   [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/7
   [tags]    GET

   Test http request option    get    /users/1    200

C8 Edit user's information
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/8
    [tags]    PUT
    
    Test http request option    put    /users/1    200

C9 Delete user information by ID  
   [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/9
   [tags]    DELETE
    
    Test http request option    delete    /users/1    200

C19 Search for a non exisiting user
    [Documentation]   https://jobsity.testrail.net/index.php?/cases/view/19
    [tags]    GET

    Next Request May Not Succeed
    Test http request option    get    /users/0    404  

*** Keywords ***
Initialise Test
    Setup HTTP Client
    Add user to http request body

Add user to http request body
    ${user}=         Create Dictionary    name=${name}
    ...                                   username=${username}
    ...                                   email=${email}
    ...                                   address=Create address
    ...                                   phone=${phone}
    ...                                   website=${website}
    ${json user}=    Stringify JSON       ${user}
    Set Request Body      ${json user }

Create address
   ${address}=  Create Dictionary    street=${street}
   ...                               suite=${suite}
   ...                               city=${city}
   ...                               zipcode=${zipcode}
   [return]  $address





   
