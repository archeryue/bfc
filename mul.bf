,>,<                            // read a b

[-<+<+>>] << [->>+<<] >>>       // duplicate a in left as a_1
-                               // dec b
[
    <<[-<+<+>>] << [->>+<<] >>  // duplicate a_1 in left as a_2
    [ ->+< ]                    // a plus a_1
    <[ ->+< ] >                 // a_1 = a_2
    >>-                         // dec b
]

++++ ++++ [< +++ +++ > -] <     // add 48 to a
. [-]                           // print a
+++++ +++++ . [-]               // print endl
