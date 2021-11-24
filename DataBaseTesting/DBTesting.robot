***Settings***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown      Disconnect From Database

***Variables***

${DBName}   mydb        #database name
${DBUser}   root        #database username
${DBPass}   root        #database password
${DBHost}   127.0.0.1       #database hostname(localhost)
${DBPort}   3306        #database port number

***Test Cases***
Create Table
    ${outpot}   Execute SQL String      Create table person(id integer,first_name varchar(30),last_name varchar(30))
    log to console  ${outpot}
    should be equal as string   ${outpot}   None

Insert Data In Table
    #for single rocord
    # ${outpot}   Execute SQL String      insert into person values(101,"rahul","kumar")

    #for multiple data
    # ${outpot}   Execute SQL Script      ./data.sql      #file location
    # log to console  ${outpot}
    # should be equal as string   ${outpot}   None

Check Record Paresent In Table
    check if exists in database     select id from mydb.person where first_name="rahul"

Check Table Exist In Database
    table must exist    person      #table name

Verify Row Count Is Zero
    row count is 0      select * from mydb.person Where firt_name="abc"

