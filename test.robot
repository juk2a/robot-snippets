*** Settings ***
# Library             SeleniumLibrary
Library             DateTime
#Suite Setup         Open Browser    about:blank     chrome
#Suite Teardown      Close Browser

*** Variables ***
${today}            27.04.2019
${CurrentDate}=     Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
${newdatetime} =    Add Time To Date  ${CurrentDate}  -360 days
${myday} =          Convert Date 	${newdatetime}  result_format=%d.%m.%Y


*** Test Cases ***
Dates Test
    Log To Console      ${today}
    # ${CurrentDate}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    Log To Console      ${CurrentDate}
    # ${newdatetime} =  Add Time To Date  ${CurrentDate}  -360 days
    Log To Console      ${newdatetime}
    # ${myday} =      Convert Date 	${newdatetime} 	result_format=%d.%m.%Y
    Log To Console      ${myday}           
