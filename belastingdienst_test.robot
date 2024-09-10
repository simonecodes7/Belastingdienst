*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://www.belastingdienst.nl
${BROWSER}    chromium 

*** Test Cases ***
Simulate User Navigation With Browser Library
    Open Browser    ${URL}    browser=${BROWSER}
    Maximize Browser Window
    
    # Close Cookie Consent Popup if it appears
    Click    text=Sluiten


    # Click "Aangifte doen" button
    Click    xpath=//a[contains(text(), 'Aangifte doen')]
    Go Back

    # Click "Toeslagen" button
    Click    text=Toeslagen
    Wait For Elements State    text=Toeslagen, visible=True    timeout=5s
    Go Back

    # Click "Betalen en ontvangen" button
    Click    text=Betalen en ontvangen
    Wait For Elements State    text=Betalen en ontvangen, visible=True    timeout=5s
    Go Back

    # Click "Auto en woon-werkverkeer" button
    Click    text=Auto en woon-werkverkeer
    Wait For Elements State    text=Auto en woon-werkverkeer, visible=True    timeout=5s
    Go Back

    # Continue with other buttons similarly...
    Click    text=Ondernemers
    Wait For Elements State    text=Ondernemers, visible=True    timeout=5s
    Go Back

    # Additional interactions for other buttons
    Click    text=Aftrekposten en kortingen
    Go Back

    # Close the browser
    Close Browser
