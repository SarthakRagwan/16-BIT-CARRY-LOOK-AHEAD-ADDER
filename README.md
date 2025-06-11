# 16-BIT-CARRY-LOOK-AHEAD-ADDER
Author - Sarthak Kumar

This project involves the design and implementation of a 16-bit Carry Look-Ahead Adder (CLA) using Verilog. Unlike the conventional ripple carry adder, which propagates carry bits sequentially and suffers from increased delay with larger bit-widths, the Carry Look-Ahead Adder improves speed by calculating carry in advance based on input values. Although this approach requires more complex hardware, it significantly enhances the overall performance of the circuit.

The 16-bit adder is constructed using a hierarchical design methodology, comprising four instances of 4-bit Carry Look-Ahead Adders. This modular structure simplifies design, testing, and scalability.

Each 4-bit CLA is implemented using gate-level logic. The logic for each bit of the sum and carry is as follows:

Sum Calculation:
Sum[k] = in1[k] ⊕ in2[k] ⊕ carry_in[k]
where in1[k] and in2[k] are the k-th bits of the 4-bit input numbers, and carry_in[k] is the carry-in for that bit position.

Carry Calculation:
carry_in[k] = (in1[k]&in2[k]) | ((in1[k]⊕in2[k])&carry_in[k−1])
where carry_in[k-1] represents the carry-in from the previous bit position.

This implementation demonstrates how digital design principles and modular construction can be combined to build high-performance arithmetic circuits.

Here are the block and structural level diagram of diffrent part of the circuit : 

![4 BIT CLA BLOCK DIAGRAM](https://raw.githubusercontent.com/SarthakRagwan/16-BIT-CARRY-LOOK-AHEAD-ADDER/refs/heads/main/4bit-cla-block.png)
![4 BIT CLA GATE LEVEL DIAGRAM](https://raw.githubusercontent.com/SarthakRagwan/16-BIT-CARRY-LOOK-AHEAD-ADDER/refs/heads/main/4bit-cla-gatelvl.png)
![16 BIT CLA BLOCK DIAGRAM](https://raw.githubusercontent.com/SarthakRagwan/16-BIT-CARRY-LOOK-AHEAD-ADDER/refs/heads/main/16bit-cla-block.png)
![16 BIT CLA GATE LEVEL DIAGRAM](https://raw.githubusercontent.com/SarthakRagwan/16-BIT-CARRY-LOOK-AHEAD-ADDER/refs/heads/main/16bit-cla-gatelvl.png)

Output Waveform :

![16 BIT CLA GATE LEVEL DIAGRAM](https://github.com/SarthakRagwan/16-BIT-CARRY-LOOK-AHEAD-ADDER/blob/main/output.png?raw=true)

