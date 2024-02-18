ORG 0000H  ; Set the origin of the program

MAIN:
    MOV P2, #00H  ; Initialize P2 port to display 0
    CALL DELAY    ; Introduce a delay
    
    MOV P2, #01H  ; Display 1
    CALL DELAY
    
    MOV P2, #02H  ; Display 2
    CALL DELAY
    
    MOV P2, #03H  ; Display 3
    CALL DELAY
    
    MOV P2, #04H  ; Display 4
    CALL DELAY
    
    MOV P2, #05H  ; Display 5
    CALL DELAY
    
    MOV P2, #06H  ; Display 6
    CALL DELAY
    
    MOV P2, #07H  ; Display 7
    CALL DELAY
    
    MOV P2, #08H  ; Display 8
    CALL DELAY
    
    MOV P2, #09H  ; Display 9
    CALL DELAY
    
    SJMP MAIN     ; Jump back to the beginning to repeat the sequence

DELAY:
    MOV R2, #20     ; Outer loop counter
DELAY_OUTER:
    MOV R1, #250    ; Inner loop counter
DELAY_INNER:
    DJNZ R1, DELAY_INNER  ; Decrement inner loop counter
    DJNZ R2, DELAY_OUTER  ; Decrement outer loop counter
    RET                ; Return from the delay subroutine

END           ; End of the program

