pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template Customcircuit1 () {
   //signal inputs 

   signal input a; 
   signal input b;

   // signal from gates

   signal  x;
   signal y;

   //final signal output
   signal output q;

   //component gates used to create circiut
   component andGate=AND();
   component notGate=NOT();
   component norGate=NOR();
   
   // circuit logic 
   // AND gate 

   andGate.a<==a;
   andGate.b<==b;
   x<==andGate.out;
   
   // NOT gate 
   notGate.in<==x;
   y<==notGate.out;

   //NOR gate 
   norGate.a<==x;
   norGate.b<==y;
   q<==norGate.out;
 
}
template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}
template NOR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b + 1 - a - b;
}


component main = Customcircuit1();