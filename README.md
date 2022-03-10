![image](  
  ## *Clk_Generator-RVMYTH-DAC* Mixed-Signal circuit 
  ###     Implementation & Simulations with eSim



- [I.    REFERENCE CIRCUIT](#i----reference-circuit)
  * [flow design & simulation](#flow-design---simulation)
  * [Overview of eSim Tool Used](#overview-of-esim-tool-used)
  * [1 *Fahr_clk_gen* Circuit](#1--fahr-clk-gen--circuit)
  * [2 *Fahr_rvmyth* circuit](#2--fahr-rvmyth--circuit)
  * [3 *Fahr_10bit_DAC* Circuit](#3--fahr-10bit-dac--circuit)
- [II.   DESIGN & SIMULATION OF REFERENCE CIRCUIT](#ii---design---simulation-of-reference-circuit)
  * [* Design schematic](#--design-schematic)
  * [* Setting](#--setting)
  * [* Simulation](#--simulation)
  * [* Netlist of the Circuits](#--netlist-of-the-circuits)






# I.	REFERENCE CIRCUIT
 My reference circuit is a mixed-signal SoC including 2 analog circuits *Fahr_clk-gen* & *Fahr_10bitDac and a digital RISCV-based processor named *Fahr_rvmyth*.
First I  design the 2 analog  circuis and simulate them after I simulate the tlv code of my digital circuit  by Makerchip and create  it s model by Ngveri  Finally I implement my reference mixed signal circuit and simulate it with eSim


## What is RVMYTH

RVMYTH core is a simple RISCV-based CPU, introduced in a workshop by RedwoodEDA and VSD. 

is a control system that generates an output signal whose phase is related to the phase of an input signal. PLLs are widely used for synchronization purposes, including clock generation and distribution.

## What is DAC

A digital-to-analog converter or DAC is a system that converts a digital signal into an analog signal. DACs are widely used in modern communication systems enabling the generation of digitally-defined transmission signals. As a result, high-speed DACs are used for mobile communications and ultra-high-speed DACs are employed in optical communications systems.


.

  [Here](https://github.com/shivanishah269/risc-v-core) is the repo we used as a reference to model the RVMYTH

## Step by step modeling walkthrough


##    flow design & simulation 

##    Overview of eSim Tool Used      

## 1 *Fahr_clk_gen* Circuit  

## 2 *Fahr_rvmyth* circuit
## 3 *Fahr_10bit_DAC* Circuit 

# II.	DESIGN & SIMULATION OF REFERENCE CIRCUIT 

## * Design schematic
## * Setting 
## * Simulation 
## * Netlist of the Circuits

