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


## What is SoC

An SoC is a single-die chip that has some different IP cores on it. These IPs could be  microprocessors (completely digital) to 5G broadband modems (completely analog).

## What is RVMYTH

RVMYTH core is a simple RISCV-based CPU, introduced in a workshop by RedwoodEDA and VSD. During a 5-day workshop students (including middle-schoolers) managed to create a processor from scratch. The workshop used the TLV for faster development. All of the present and future contributions to the IP will be done by students and under open-source licenses.

## What is PLL

A phase-locked loop or PLL is a control system that generates an output signal whose phase is related to the phase of an input signal. PLLs are widely used for synchronization purposes, including clock generation and distribution.

## What is DAC

A digital-to-analog converter or DAC is a system that converts a digital signal into an analog signal. DACs are widely used in modern communication systems enabling the generation of digitally-defined transmission signals. As a result, high-speed DACs are used for mobile communications and ultra-high-speed DACs are employed in optical communications systems.

# VSDBabySoC Modeling

Here we are going to model and simulate the VSDBabySoC using `iverilog`, then we will show the results using `gtkwave` tool. Some initial input signals will be fed into `vsdbabysoc` module that make the pll start generating the proper `CLK` for the circuit. The clock signal will make the `rvmyth` to execute instructions in its `imem`. As a result the register `r17` will be filled with some values cycle by cycle. These values are used by dac core to provide the final output signal named `OUT`. So we have 3 main elements (IP cores) and a wrapper as an SoC and of-course there would be also a testbench module out there.

Please note that in the following sections we will mention some repos that we used to model the SoC. However the main source code is resided in [Source-Code Directory](src) and these modules are in [Modules Sub-Directory](src/module).

## RVMYTH modeling

As we mentioned in [What is RVMYTH](#what-is-rvmyth) section, RVMYTH is designed and created by the TL-Verilog language. So we need a way for compile and trasform it to the Verilog language and use the result in our SoC. Here the `sandpiper-saas` could help us do the job.

  [Here](https://github.com/shivanishah269/risc-v-core) is the repo we used as a reference to model the RVMYTH

## PLL and DAC modeling

It is not possible to sythesis an analog design with Verilog, yet. But there is a chance to simulate it using `real` datatype. We will use the following repositories to model the PLL and DAC cores:

  1. [Here](https://github.com/vsdip/rvmyth_avsdpll_interface) is the repo we used as a reference to model the PLL
  2. [Here](https://github.com/vsdip/rvmyth_avsddac_interface) is the repo we used as a reference to model the DAC

**CAUTION:** In the beginning of the project, we get our verilog model of the PLL from [here](https://github.com/vsdip/rvmyth_avsdpll_interface). However, by proceeding the project to the physical design flow we realize that this model needs a little changes to become sufficient for a real IP core. So we changed it a little and created a new model named `AVSDPLL` based on [this](https://github.com/lakshmi-sathi/avsdpll_1v8) IP

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

