,>,            // read a b
>>>>+> <<<<<<  // set a b 0 0 0 1 0 and move back to a
[->>>>>>>+>+<<<<<<<<] >>>>>>>> [-<<<<<<<<+>>>>>>>>] <<<<<<<<    //copy a to a_ and move back to a
>[->>>>>>>+>+<<<<<<<<] >>>>>>>> [-<<<<<<<<+>>>>>>>>] <<<<<<<<<  //copy b to b_ and move back to a
// now tape is a b 0 0 0 1 0 a_ b_
>>>>>>>        // move to a_
[
    [->-[>]<<] // dec a_ and b_ util ethier is 0
    // b_ is 0
    <[-
        <<< +   // inc quotient
        <[->>>>>>>+>+<<<<<<<<] >>>>>>>> [-<<<<<<<<+>>>>>>>>]  //copy b to b_
        <<<
    ]
    // a_ is 0
    <[-
        <<<<    // set back to b
        [->>+>+<<<] >>> [-<<<+>>>] < // copy b to remainder
        >>>>> [- <<<<< - >>>>>]      // sub b_left from remainder
        <<<
    ]
    +>>
]
<<-<<<<<    // clear 1 and move back to a
// now tape is a b q r 0 0 0 0 0
[-]>[-]>    // clear a b and move to quotient
// print quotient and space
< ++++ ++++
[> +++ +++ <-]
>. [-]
< ++++ ++++
[> ++++ <-]
>. [-]
>   // move to remainder
// print remainder and endline
< ++++ ++++
[> +++ +++ <-]
>. [-]
+++++ +++++
. [-]
