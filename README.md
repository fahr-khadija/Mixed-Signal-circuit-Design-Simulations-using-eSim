![image](https://user-images.githubusercontent.com/100168693/157722908-a0722faa-4032-47a1-8d84-e34b34d14fb3.jpg)
 
 ## *Clk_Generator-RVMYTH-DAC* Mixed-Signal circuit 
  ###     Implementation & Simulations with eSim



- [I.    REFERENCE CIRCUIT](#i----reference-circuit)
  * [flow design and simulation](#flow-design-and-simulation)
  * [Overview of EDA Tool Used](#overview-of-eda-tool-used)
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
![image](


##    flow design & simulation 
	Step 1 : 		simulate th verilog file of Fahr_rvmyth and simulate it  on Makerchip

•	Step 2 : 		Model creation on NgVeri

•	Step 3 :		Schematics creation of reference circuit 

•	Step 4 :		Creating Netlist

•	Step 5 :		Setting simulation instance parameters on KicadToNgspice converter

•	Step 6: 		Simulation & Verification of results

##    Overview of  EDA Tools Used 



**eSim**

It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD. For more details refer:

https://esim.fossee.in/home

**NgSpice**

It is an Open Source Software for Spice Simulations. For more details refer:

http://ngspice.sourceforge.net/docs.html

**Makerchip**

It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. For more details refer:

https://www.makerchip.com/

**Verilator**

It is a tool which converts Verilog code to C++ objects. For more details refer:

https://www.veripool.org/verilator/


## 1 *Fahr_clk_gen* Circuit  
is a control system that generates an output signal including clock generation and distribution.

## 2 *Fahr_rvmyth* circuit
it s based on RVMYTH core which  is a simple RISCV-based CPU, introduced in a workshop by RedwoodEDA and VSD. 
 [Here](https://github.com/shivanishah269/risc-v-core) is the repo we used as a reference to model the RVMYTH

## 3 *Fahr_10bit_DAC* Circuit 
A digital-to-analog converter or DAC is a system that converts a digital signal into an analog signal. DACs are widely used in modern communication systems enabling the generation of digitally-defined transmission signals. As a result, high-speed DACs are used for mobile communications and ultra-high-speed DACs are employed in optical communications systems.


# II.	DESIGN & SIMULATION OF REFERENCE CIRCUIT 


## * Design schematic
## * Setting 
## * Simulation 


REFERENCES
[1]	https://github.com/vsdip/rvmyth_avsddac_interface
[2]	https://github.com/vsdip/rvmyth_avsdpll_interface
[3]	https://esim.fossee.in/circuit-simulation-project/esim-circuit-simulation-run
[4]	https://hackathon.fossee.in/esim/ 








.

 



