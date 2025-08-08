*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}    https://httpbin.org
&{HDRS}        Content-Type=application/json    Accept=application/json

*** Test Cases ***
GET Example
    Create Session    api    ${BASE_URL}    headers=${HDRS}    verify=False    disable_warnings=1
    ${resp}=    GET On Session    api    url=/get    params=a=1&b=2    expected_status=200
    Should Be Equal As Strings    1    ${resp.json()}[args][a]

POST Example
    Create Session    api    ${BASE_URL}    headers=${HDRS}    verify=False    disable_warnings=1
    ${data}=    Create Dictionary    name=morpheus    job=leader
    ${resp}=    POST On Session    api    url=/post    json=${data}    expected_status=200
    Should Be Equal As Strings    morpheus    ${resp.json()}[json][name]

PUT Example
    Create Session    api    ${BASE_URL}    headers=${HDRS}    verify=False    disable_warnings=1
    ${data}=    Create Dictionary    name=morpheus    job=zion
    ${resp}=    PUT On Session    api    url=/put    json=${data}    expected_status=200
    Should Be Equal As Strings    zion    ${resp.json()}[json][job]

DELETE Example
    Create Session    api    ${BASE_URL}    headers=${HDRS}    verify=False    disable_warnings=1
    ${resp}=    DELETE On Session    api    url=/delete    expected_status=200
    Should Be Equal As Integers    200    ${resp.status_code}
