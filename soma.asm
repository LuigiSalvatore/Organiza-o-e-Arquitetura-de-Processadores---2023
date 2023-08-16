.text
.global main

main:
    li      $v0,    5               # loads instantly the value '5' into $v0 (getchar)
    syscall 
    move    $t0,    $v0             # moves value in $v0 to $t0

    li      $v0,    5               # loads instantly the value '5' into $v0 (getchar)
    syscall 
    move    $t1,    $v0             # moves value in $v0 to $t1

    add     $t2,    $t1,    $t0     # adds $t1 and $t0 Ans goes to $t2
    move    $a0,    $t2             # moves $t2 to $a0 (buffer for print)
    li      $v0,    1               # loads instantly the value '1' into $v0 (printf)
    syscall 

    li      $v0,    10              # exit code
    syscall 

