*** Keywords ***
Home Page Opened
    Wait Until Element Is Visible    ${ROTATE_BUTTON}    timeout=20
    Element Should Be Visible        ${ROTATE_BUTTON}
    Element Should Be Visible        ${FILTER_BUTTON}

Select Product
    [Arguments]           ${title}
    ${PRODUCT_TITLE}=     Replace String      ${PRODUCT_TITLE}    {product}    ${title}
    #Swipe    0    495    0    100
    Click Element         ${PRODUCT_TITLE}
