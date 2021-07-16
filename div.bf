,>,            // read a b

>>>>+>         // set a b 0 a 0 1 0
<<<<<<         // back to a

[->>>>>>>+>+<<<<<<<<] >>>>>>>> [-<<<<<<<<+>>>>>>>>] <<<<<<<<    //copy a
>[->>>>>>>+>+<<<<<<<<] >>>>>>>> [-<<<<<<<<+>>>>>>>>] <<<<<<<<<  //copy b
// now tape is a b 0 a 0 1 0 a b

>>>>>>>        // set ptr to last a
[
    [->-[>]<<] //dec a and b util ethier is 0
    // a GE b
    <[-
        <<< +   // inc quotient
        <[->>>>>>>+>+<<<<<<<<] >>>>>>>> [-<<<<<<<<+>>>>>>>>]  //copy b
        <<<
    ]
    // a L b
    <[-
        <<<<    // set back to b
        [->>+>+<<<] >>> [-<<<+>>>] < // copy b to remainder
        >>>>> [- <<<<< - >>>>>]      // sub b-left from remainder
        <<<
    ]
    +>>
]
<<-<<<<<    // clear 1 and back to a

[-]>[-]>    // clear a b and move to quotient
// print quotient and space
< ++++ ++++
[> +++ +++ <-]
>. [-]
< ++++ ++++
[> ++++ <-]
>. [-]
>           // move to remainder
// print remainder and endl
< ++++ ++++
[> +++ +++ <-]
>. [-]
+++++ +++++
. [-]
