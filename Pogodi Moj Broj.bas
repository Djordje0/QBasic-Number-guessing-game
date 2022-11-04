Rem IGRA POGADJANJA BROJEVA
Dim ANSWER As Integer
Dim GUESS As Integer
Dim CNT As Integer
Dim GAME As Integer
Do
    Cls
    Do
        Print "............................POGODI MOJ BROJ..................................."
        Print "IZABERI TEZINU"
        Print
        Print "A)LAKO"
        Print "B)NORMALNO"
        Print "C)TESKO"
        Input "UNESITE ZELJENU TEZINU: ", GAME$
        GAME = UCODE(GAME)
    Loop Until GAME$ = "A" Or GAME$ = "B" Or GAME$ = "C"
    Cls
    Randomize Timer
    Select Case GAME$
        Case "A"
            ANSWER = (Rnd * 9) + 1
            Print "IGRA OD 1 DO 10"
        Case "B"
            ANSWER = (Rnd * 99) + 1
            Print "IGRA OD 1 DO 100"
        Case "C"
            ANSWER = (Rnd * 999) + 1
            Print "IGRA OD 1 DO 1000"
    End Select
    GUESS = 0
    CNT = 0
    Do
        Input "UNESITE VAS ODGOVOR: ", GUESS
        CNT = CNT + 1

        If GUESS < ANSWER Then Print "VAS ODGOVOR JE NIZI OD BROJA KOJI SAN ZAMISLIO"
        If GUESS > ANSWER Then Print "VAS ODGOVOR JE VISI NEGO BROJ KOJI SAM ZAMISLIO"
        If GUESS = ANSWER Then Print "USPJELI STE DA POGODITE MOJ BROJ U "; CNT; "POKUSAJA "
    Loop Until GUESS = ANSWER
    Print
    Do
        Input "ZELITE LI DA IGRATE PONOVO D/N: ", GAME$
        GAME = UCASE(GAME)
    Loop Until GAME$ = "D" Or GAME$ = "N"
Loop Until GAME$ = "N"
END
