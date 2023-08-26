# Ploy_proof_module_3
This project aims to implement a logical gate circuit using the circom programming language and provide a Zero-Knowledge Succinct Non-Interactive Argument of Knowledge (ZK-SNARK) proof to demonstrate the knowledge of specific inputs that yield a particular output.

# Steps Involved
To successfully complete the project, the following steps will be undertaken:
  1. Write a Correct Circuit Implementation: Implement the logical gate circuit using the circom programming language.
  2. Compile the Circuit: Compile the circuit to generate circuit intermediaries.
  3. Generate a ZK-SNARK Proof: Generate a ZK-SNARK proof using the specified inputs A=0 and B=1.
  4. Deploy a Solidity Verifier Contract: Deploy a solidity verifier contract on the Sepolia or Mumbai Testnet.
  5. Verify the Proof: Call the verifyProof() method on the deployed verifier contract and assert that the output is true.
## CODE: 
the Circom code defines a circuit template that checks whether the value q is the result of multiplying input values a and b using custom logic gate templates. The main component instantiates this circuit template, resulting in a complete circuit instance with the defined behavior. 

## DEPLOYMENT: 
1. Circuit Definition: The circuit template is defined using the pragma circom statement, specifying the version as 2.0.0. It defines a template named 
   Customcircuit1 that checks whether the value q is the multiplication of values a and b.
2. Signal Inputs: The Customcircuit1 template starts by declaring two input signals: a and b.
3. Signal Outputs: The circuit template also defines an output signal named q that represents the result of the comparison.
4. Component Declarations: The circuit template declares three components: andGate, notGate, and norGate. These components will be used to build the logic of the 
   circuit.
5. Template Definitions: The circuit template defines three gate templates: AND(), NOT(), and NOR(). These templates define the behavior of AND, NOT, and NOR 
   gates, respectively.
6. AND Gate Template: The AND() template is defined with two input signals (a and b) and an output signal (out). The output signal is assigned the result of the 
   AND operation between a and b.
7. NOT Gate Template: The NOT() template is defined with an input signal (in) and an output signal (out). The output signal is assigned the result of a custom NOT 
   operation using arithmetic calculations.
8. NOR Gate Template: The NOR() template is defined with two input signals (a and b) and an output signal (out). The output signal is assigned the result of a 
   custom NOR operation using arithmetic calculations.

## Circuit Logic: 
Inside the Customcircuit1 template, the circuit logic is defined using the declared components and gate templates.
The andGate component's a and b inputs are connected to the a and b input signals, respectively. The x signal is assigned the output of the andGate.
The notGate component's in input is connected to the x signal. The y signal is assigned the output of the notGate.
The norGate component's a and b inputs are connected to the x and y signals, respectively. The q output signal is assigned the output of the norGate.
Component Instantiation: The main component is instantiated as an instance of the Customcircuit1 template. This effectively creates an instance of the circuit with the specified inputs, logic, and outputs.
