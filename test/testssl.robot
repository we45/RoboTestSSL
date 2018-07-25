*** Settings ***
Library  /home/nithin/PycharmProjects/github/we45/RoboTestSSL/robotestssl/RoboTestSSL.py
Library  Collections


*** Variables ***
${RESULT_PATH}  /home/nithin/Downloads/testssl_results
${TARGET}  www.testfire.net
${REPORT_NAME}  testfire_results

*** Test Cases ***
RUN TestSSL Scan
    run testssl against target  ${TARGET}  ${RESULT_PATH}  ${REPORT_NAME}
