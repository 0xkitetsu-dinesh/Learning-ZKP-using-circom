
pragma circom 2.0.3;
// file: circuit.circom

template BadHash() {
    signal input x;

    signal x_squared;
    signal x_cubed;

    signal output out;
    
    // defining f(x)
    x_squared <-- x * x;
    x_cubed <-- x_squared * x;
    out <-- x_cubed - x + 7;

    // verifying f(x)
    x_squared === x * x;
    x_cubed === x_squared * x ;
    out === x_cubed - x + 7;
    // out === x_cubed - x + 8; // this will cause error

}

component main = BadHash();