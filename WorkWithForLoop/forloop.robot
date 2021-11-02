***Test Cases***
# Test Case1
#     FOR   ${i}    IN RANGE    1   10
#     log to console  ${i}
#     END

# for loop with list
#     @{items}    create list     1  2  3  4  5
#     FOR     ${i}    IN  @{items}
#     log to console      ${i}
#     END


# Work with strings
#     FOR     ${i}    IN  Rahul   Aayush  Rohit
#     log to console  ${i}
#     END


Work with strings
    @{list}     create list     1  2  3  4  5
    FOR     ${i}    IN  @{list}
    log to console  ${i}
    exit for loop if    ${i}==4
    END