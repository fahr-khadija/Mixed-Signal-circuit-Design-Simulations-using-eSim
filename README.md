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
![image](https://user-images.githubusercontent.com/100168693/157731054-17cf84d5-b818-47f8-b2eb-ef22bdf7bf89.png)




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

![image](https://user-images.githubusercontent.com/100168693/157731137-2806bef2-effe-4ac3-b7af-e2cbac421b4c.png)
![image](https://user-images.githubusercontent.com/100168693/157731178-d42d5126-e60b-44e1-ae4b-3050a405c7bb.png)


## 2 *Fahr_rvmyth* circuit
it s based on RVMYTH core which  is a simple RISCV-based CPU, introduced in a workshop by RedwoodEDA and VSD. 
 [Here](https://github.com/shivanishah269/risc-v-core) is the repo we used as a reference to model the RVMYTH
 
 
![image](https://user-images.githubusercontent.com/100168693/157731250-9c495588-d257-4ff7-953b-a320c4ac997c.png)

![image](https://user-images.githubusercontent.com/100168693/157731293-1801c237-0d12-41ba-8038-abed2023bedd.png)

![image](https://user-images.githubusercontent.com/100168693/157731355-4f4859f0-2ddb-4a1c-bf25-3bff452f6f88.png)

![image](https://user-images.githubusercontent.com/100168693/157731395-4d2c95a9-6723-4114-9ad0-86710f606b74.png)


## 3 *Fahr_10bit_DAC* Circuit 
A digital-to-analog converter or DAC is a system that converts a digital signal into an analog signal. DACs are widely used in modern communication systems enabling the generation of digitally-defined transmission signals. As a result, high-speed DACs are used for mobile communications and ultra-high-speed DACs are employed in optical communications systems.

![image](https://user-images.githubusercontent.com/100168693/157731598-ed2d0786-6b4d-4ef7-8bee-c0d7bf1389bc.png)

![image](https://user-images.githubusercontent.com/100168693/157731702-384e53de-f0ea-4bb4-8616-d61b5cb57a00.png)

![image](https://user-images.githubusercontent.com/100168693/157731765-49ef2d84-3418-46ea-8ee0-9b800872bf87.png)


![image](https://user-images.githubusercontent.com/100168693/157731832-b21646a2-859c-4129-bd4e-13ffef67aa68.png)

![image](https://user-images.githubusercontent.com/100168693/157731890-18928713-1228-4a91-b1a9-cfd5ddbdab85.png)


# II.	DESIGN & SIMULATION OF REFERENCE CIRCUIT 
## * Design schematic

![image](https://user-images.githubusercontent.com/100168693/157731960-4ede5876-4a72-4328-b65e-f8d548c8bae3.png)



## * Setting 
![image](https://user-images.githubusercontent.com/100168693/157732052-8f694cea-5430-4a52-a313-c4db04f7dc39.png)
![image](https://user-images.githubusercontent.com/100168693/157732080-c145a2da-6337-4009-a76a-9ffba3919b22.png)

![image](https://user-images.githubusercontent.com/100168693/157732108-e50d27c1-ebce-428f-8df7-db77aea2a817.png)

## * Simulation 

![image](https://user-images.githubusercontent.com/100168693/157732230-11e934d2-abe2-4d68-b15a-822943b76431.png)


![image](https://user-images.githubusercontent.com/100168693/157732186-dc5a6023-fa7a-44d0-9df3-8d18f5f1753f.png)



REFERENCES
[1]	https://github.com/vsdip/rvmyth_avsddac_interface
[2]	https://github.com/vsdip/rvmyth_avsdpll_interface
[3]	https://esim.fossee.in/circuit-simulation-project/esim-circuit-simulation-run
[4]	https://hackathon.fossee.in/esim/ 








.

 



