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
Create table
    ${outpot}   Execute SQL String      Create table person(id integer,first_name varchar(30),last_name varchar(30))
    log to console  ${outpot}
    should be equal as string   ${outpot}   None