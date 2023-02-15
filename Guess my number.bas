REM
Cls
Dim ANSWER As Integer
Dim GUESS As Integer
Dim CNT As Integer
Dim GAME As Integer
Cls
Do
    Do
        Print "..............................GUESS MY NUMBER................................."
        Print "SELECT DIFFICULTY: "
        Print
        Print
        Print "A)EASY"
        Print "B)NORMAL"
        Print "C)HARD"
        Input "ENTER THE DIFFICULTY: ", GAME$
        GAME$ = UCase$(GAME$) 
        GAME = UCODE(GAME)
    Loop Until GAME$ = "A" Or GAME$ = "B" Or GAME$ = "C"
    Cls
    Randomize Timer
    Select Case GAME$
        Case "A"
            ANSWER = (Rnd * 9) + 1
            Print "GAME FROM 1 TO 10"
        Case "B"
            ANSWER = (Rnd * 99) + 1
            Print "GAME FROM 1 TO 100"
        Case "C"
            ANSWER = (Rnd * 999) + 1
            Print "A GAME FROM 1 TO 1000"
    End Select
    GUESS = 0
    CNT = 0
    Do
        Input "ENTER YOUR ANSWER: ", GUESS
        CNT = CNT + 1
        If GUESS < ANSWER Then Print "YOUR ANSWER IS LOWER THAN THE NUMBER I IMAGINED"
        If GUESS > ANSWER Then Print "YOUR ANSWER IS HIGHER THAN THE NUMBER I IMAGINED"
        If GUESS = ANSWER Then Print "YOU SUCCEEDED IN GUESSING MY NUMBER IN "; CNT; " ATTEMPTS"
    Loop Until GUESS = ANSWER
    Print
    Do
        Input "DO YOU WANT TO PLAY AGAIN Y/N: ", GAME$
        GAME$ = UCase$(GAME$)
        GAME = UCASE(GAME)
    Loop Until GAME$ = "Y" Or GAME$ = "N"
    If GAME$ = "Y" Then
        Cls
    End If
Loop Until GAME$ = "N"
Cls
End
