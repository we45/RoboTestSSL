*** Settings ***
Library  /Users/nithinjois/Desktop/RoboTestSSL/robotestssl/RoboTestSSL.py
Library  Collections


*** Variables ***
${RESULT_PATH}  /Users/nithinjois/Downloads/testssl_results
${TARGET}  www.testfire.net 

*** Test Cases ***
RUN TestSSL Scan
    run testssl against target  ${TARGET}  ${RESULT_PATH}
