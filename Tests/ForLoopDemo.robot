*** Test Cases ***
#Loop1
#        FOR      ${i}     IN RANGE      1     10
#        Log To Console    ${i}
#        END
#Loop2
#        FOR      ${i}     IN      1 2 3 4 5 6 7 8         #double space betweeen values give output in new line
#        Log To Console    ${i}
#        END
Loop3
        @{items}     Create List     1 2 3 4 5 6 7 8         #double space betweeen values give output in new line
        FOR    ${i}     IN      @{items}
        Log To Console    ${i}
        END
Loop4
        FOR      ${name}     IN      John  Scott   Doe         #double space betweeen values give output in new line
        Log To Console    ${name}
        END
Loop5
        @{items}     Create List     1 2 3 4 5 6 7 8         #double space betweeen values give output in new line
        FOR    ${i}     IN      @{items}
        Exit For Loop If    $90i    Log To Console    ${i}
        END
