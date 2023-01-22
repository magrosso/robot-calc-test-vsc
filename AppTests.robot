*** Settings ***
Library    Application.py    WITH NAME    App
Library    Test.py    WITH NAME    TestLib
Test Setup    App.Start Application    hw-tree
Test Teardown    App.Stop Application


*** Test Cases ***
Test Addition
    [Documentation]    Cannot handle thousand separator when enetering more than 3 digits!
    [Teardown]    None
    TestLib.Test Addition    4    6
    TestLib.Test Addition    90    8
    TestLib.Test Addition    0100    0
    TestLib.Test Addition    9    92
    TestLib.Test Addition    698    -92

Test Subtraction
    [Documentation]    Cannot handle thousand separator when enetering more than 3 digits!
    [Setup]    App.Init Application
    [Teardown]    None
    TestLib.Test Subtraction    9    3
    TestLib.Test Subtraction    178    1
    TestLib.Test Subtraction    0    7
    TestLib.Test Subtraction    -6    -5
    
