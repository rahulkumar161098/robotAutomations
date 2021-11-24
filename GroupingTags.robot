***Settings***

***Test Cases***
TC1 Registration
    [Tags]  sanity
    log to console  this is user reg test
    log to console  this is user reg test complete
TC2 Login
    [Tags]  sanity
    log to console  this is user log test
    log to console  this is user log test complete
TC3 Change user name
    [tags]  regression
    log to console  this is user name test
    log to console  this is user name test complete
TC4 
    [Tags]  sanity
    log to console  this is user logout test
    log to console  this is user logout test complete

# run tag
# robot --include=sanity GroupingTags.robot
# run multiple Tags
# robot -i sanity -i regression GroupingTags.robot
# robot -e sanity GroupingTags.robot
# -e exclude