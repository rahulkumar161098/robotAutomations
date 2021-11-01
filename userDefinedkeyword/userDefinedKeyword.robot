***Settings***
Library     SeleniumLibrary
Resource    ../userDefinedKeyword/Resources/resources.robot

***Variables***
${url}  http://www.newtours.demoaut.com/
${browser}  chrome

***Test Cases***
TC1
    # without arguments
    # launchBrowser   ${url}  ${browser}

    # with arguments
    ${pageTitle}    launchBrowser   ${url}  ${browser}
    log to console  ${pageTitle}
    log  ${pageTitle}
    close browser

***Keywords***


