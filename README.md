![image](https://user-images.githubusercontent.com/100168693/157722908-a0722faa-4032-47a1-8d84-e34b34d14fb3.jpg)
 
 ## *Clk_Generator-RVMYTH-DAC* Mixed-Signal circuit 
  ###     Implementation & Simulations with eSim



- [I.    REFERENCE CIRCUIT](#i----reference-circuit)
  * [flow design and simulation](#flow-design-and-simulation)
  * [Overview of EDA Tool Used](#overview-of-eda-tool-used)
  * [1 *Fahr_rvmyth* circuit](#1--fahr-rvmyth--circuit)
  * [2 *Fahr_clk_gen* Circuit](#2--fahr-clk-gen--circuit)
  * [3 *Fahr_10bit_DAC* Circuit](#3--fahr-10bit-dac--circuit)
- [II.   DESIGN & SIMULATION OF REFERENCE CIRCUIT](#ii---design---simulation-of-reference-circuit)
  * [* Design schematic](#--design-schematic)
  * [* Setting](#--setting)
  * [* Simulation](#--simulation)
  
- [III.   REFERENCES](#iii---references)




# I.	REFERENCE CIRCUIT
 My reference circuit is a mixed-signal SoC including 2 analog circuits *Fahr_clk-gen* & *Fahr_10bitDac and a digital RISCV-based processor named *Fahr_rvmyth*.
First I  design the 2 analog  circuis and simulate them after I simulate the tlv code of my digital circuit  by Makerchip and create  it s model by Ngveri  Finally I implement my reference mixed signal circuit and simulate it with eSim


![image](https://user-images.githubusercontent.com/100168693/157901148-fd9aa3e2-e069-47a7-b5e4-b82d463aca70.png)





##    flow design & simulation 


######  •	Step 1 : 		simulate th verilog file of digital circuit *Fahr_rvmyth* and simulate it  on Makerchip

### •	Step 2 : 		Model creation on NgVeri

### •	Step 3 :		Schematics creation of  3 analog circuit 

### •	Step 4 :		Creating Netlist

### •	Step 5 :		Setting simulation instance parameters on KicadToNgspice converter

### •	Step 6: 		Simulation & Verification of results


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


## 1*Fahr_rvmyth* circuit

It s based on RVMYTH core which  is a simple RISCV-based CPU, introduced in a workshop by RedwoodEDA and VSD. 

 [Here](https://github.com/shivanishah269/risc-v-core) is the repo we used as a reference to model the RVMYTH
 

## fahr_rvmyth.tlv

<img width="359" alt="module fahr_rvmyth_tlv" src="https://user-images.githubusercontent.com/100168693/157906865-a32c02ad-b808-411b-b952-3a5255756ddb.png">

 
I used the tlv code for rvmyth and edit it succesefly by makerchip .

 ![image](https://user-images.githubusercontent.com/100168693/157900373-dd35ae10-8f35-41dc-bfdb-145b208b4898.png)
 
 
![image](https://user-images.githubusercontent.com/100168693/157900550-52bc2dbd-b161-4450-9dc4-6aa925fce4f0.png)

I run verilog to NgSpice Converter to create the model *fahr_rvmyth*

![image](https://user-images.githubusercontent.com/100168693/157900753-eea82b7f-79be-4dc3-8b72-a3f3cd298695.png)


![image](https://user-images.githubusercontent.com/100168693/157900847-2bcab26d-ba6c-431d-ad20-172cf1b7d94b.png)



## 2  **Fahr_clk_gen** Circuit  
  It is a control system that generates an output analog signal of clk  including **Pulse clock generation** subchip .
 
 # Schematic
  I design a circuit to generate the clk signal by using the subchip clk_pulse_generator from eSim componant library , I generate a verilog module for *Fahr_clk-Gen* 
  
 ![image](https://user-images.githubusercontent.com/100168693/157898740-2dd2f6f8-53d1-4550-9041-563e5e67019e.png)

  I put  R1=R2=20K,Vdd=10V,C=0.1u for Simulation the analog output  v(clk)&v(c_out) 
  v(c_out) the plot at the out of capacitor 
 
 # Simulation
  ![image](https://user-images.githubusercontent.com/100168693/157899692-51925e6d-af4f-4199-9035-f2db586ef0f3.png)
 



## 3 *Fahr_10bit_DAC* Circuit 
A digital-to-analog converter or DAC is a system that converts a digital signal into an analog signal. DACs are widely used in modern communication systems enabling the generation of digitally-defined transmission signals. As a result, high-speed DACs are used for mobile communications and ultra-high-speed DACs are employed in optical communications systems.

 I used the subship 10bit_DAC from library to generate a Netlist verilog module of  DAC and obtain the analog v(out) for digital inputs to test it.       

  **Design Schematic**

![image](https://user-images.githubusercontent.com/100168693/157731765-49ef2d84-3418-46ea-8ee0-9b800872bf87.png)

  **Calcul**

![image](https://user-images.githubusercontent.com/100168693/157731702-384e53de-f0ea-4bb4-8616-d61b5cb57a00.png)

  **Simulation**

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

You can change the sitting to show more detail 


## v out and v clk of mixed circuit of 2000ms simulation time

![v out and v clk of mixed circuit of 2000ms simulation time ](https://user-images.githubusercontent.com/100168693/157906288-e10d3092-063f-4620-8c96-364fb8399b8b.jpeg)


## v out and v clk of mixed circuit of 100ms simulation time

![v out and v clk of mixed circuit of 100ms simulation time ](https://user-images.githubusercontent.com/100168693/157906469-981ef257-5815-48ec-af1f-16aa30b38e9d.jpeg)



<img width="821" alt="v clk of mixed circuit of 100ms simulation time  jpeg" src="https://user-images.githubusercontent.com/100168693/157906630-c9d0130e-aede-406e-bc6b-868c32899b6e.png">



# III.   REFERENCES

### [1]	https://github.com/vsdip/rvmyth_avsddac_interface
### [2]	https://github.com/vsdip/rvmyth_avsdpll_interface
### [3]	https://esim.fossee.in/circuit-simulation-project/esim-circuit-simulation-run
### [4]	https://hackathon.fossee.in/esim/ 








.

 



