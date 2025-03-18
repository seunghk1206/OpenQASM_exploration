OPENQASM 3;
include "stdgates.inc";

const n = 3; // number of qubits
qubit[n] q; // a register 'q' of n qubits
bit[n] c; // a register 'c' of n classical bits

h q[0]; // Hadamard
for k in [0:n-1] { 
  cnot q[k], q[k+1]; // Controlled-NOT from control qubit q[k] to target qubit q[k+1] 
}

c = measure q; // measure quantum register