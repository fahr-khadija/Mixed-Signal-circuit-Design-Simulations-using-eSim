EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:Fahr_clk-RVMyth-Dac-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L adc_bridge_2 U3
U 1 1 6222AD7D
P 4800 1950
F 0 "U3" H 4800 1950 60  0000 C CNN
F 1 "adc_bridge_2" H 4800 2100 60  0000 C CNN
F 2 "" H 4800 1950 60  0000 C CNN
F 3 "" H 4800 1950 60  0000 C CNN
	1    4800 1950
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_8 U5
U 1 1 6222AD96
P 7900 1950
F 0 "U5" H 7900 1950 60  0000 C CNN
F 1 "dac_bridge_8" H 7900 2100 60  0000 C CNN
F 2 "" H 7900 1950 60  0000 C CNN
F 3 "" H 7900 1950 60  0000 C CNN
	1    7900 1950
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_2 U4
U 1 1 6222AE23
P 7750 2900
F 0 "U4" H 7750 2900 60  0000 C CNN
F 1 "dac_bridge_2" H 7800 3050 60  0000 C CNN
F 2 "" H 7750 2900 60  0000 C CNN
F 3 "" H 7750 2900 60  0000 C CNN
	1    7750 2900
	1    0    0    -1  
$EndComp
$Comp
L 10bitDAC X2
U 1 1 6222B08C
P 9400 2300
F 0 "X2" H 9400 2350 60  0000 C CNN
F 1 "10bitDAC" H 9350 2250 60  0000 C CNN
F 2 "" H 9400 2350 60  0001 C CNN
F 3 "" H 9400 2350 60  0001 C CNN
	1    9400 2300
	1    0    0    -1  
$EndComp
$Comp
L Clock_pulse_generator X1
U 1 1 6222B19D
P 3100 1900
F 0 "X1" H 3100 1900 60  0000 C CNN
F 1 "Clock_pulse_generator" H 3100 1800 60  0000 C CNN
F 2 "" H 3100 1900 60  0001 C CNN
F 3 "" H 3100 1900 60  0001 C CNN
	1    3100 1900
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 6222B220
P 2100 1700
F 0 "R1" H 2150 1830 50  0000 C CNN
F 1 "1k" H 2150 1650 50  0000 C CNN
F 2 "" H 2150 1680 30  0000 C CNN
F 3 "" V 2150 1750 30  0000 C CNN
	1    2100 1700
	0    -1   -1   0   
$EndComp
$Comp
L resistor R2
U 1 1 6222B243
P 2100 2400
F 0 "R2" H 2150 2530 50  0000 C CNN
F 1 "10k" H 2150 2350 50  0000 C CNN
F 2 "" H 2150 2380 30  0000 C CNN
F 3 "" V 2150 2450 30  0000 C CNN
	1    2100 2400
	0    -1   -1   0   
$EndComp
$Comp
L capacitor C1
U 1 1 6222B268
P 2050 2800
F 0 "C1" H 2075 2900 50  0000 L CNN
F 1 "0.1u" H 2075 2700 50  0000 L CNN
F 2 "" H 2088 2650 30  0000 C CNN
F 3 "" H 2050 2800 60  0000 C CNN
	1    2050 2800
	1    0    0    -1  
$EndComp
$Comp
L DC v1
U 1 1 6222B28F
P 1100 1950
F 0 "v1" H 900 2050 60  0000 C CNN
F 1 "DC" H 900 1900 60  0000 C CNN
F 2 "R1" H 800 1950 60  0000 C CNN
F 3 "" H 1100 1950 60  0000 C CNN
	1    1100 1950
	1    0    0    -1  
$EndComp
$Comp
L DC v2
U 1 1 6222B2B8
P 4200 2700
F 0 "v2" H 4000 2800 60  0000 C CNN
F 1 "DC" H 4000 2650 60  0000 C CNN
F 2 "R1" H 3900 2700 60  0000 C CNN
F 3 "" H 4200 2700 60  0000 C CNN
	1    4200 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 6222B69E
P 4200 3150
F 0 "#PWR01" H 4200 2900 50  0001 C CNN
F 1 "GND" H 4200 3000 50  0000 C CNN
F 2 "" H 4200 3150 50  0001 C CNN
F 3 "" H 4200 3150 50  0001 C CNN
	1    4200 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 6222B6C8
P 2050 2950
F 0 "#PWR02" H 2050 2700 50  0001 C CNN
F 1 "GND" H 2050 2800 50  0000 C CNN
F 2 "" H 2050 2950 50  0001 C CNN
F 3 "" H 2050 2950 50  0001 C CNN
	1    2050 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 6222B6F2
P 1100 2400
F 0 "#PWR03" H 1100 2150 50  0001 C CNN
F 1 "GND" H 1100 2250 50  0000 C CNN
F 2 "" H 1100 2400 50  0001 C CNN
F 3 "" H 1100 2400 50  0001 C CNN
	1    1100 2400
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 u1
U 1 1 6222B71C
P 1600 2750
F 0 "u1" H 1600 3250 60  0000 C CNN
F 1 "plot_v1" H 1800 3100 60  0000 C CNN
F 2 "" H 1600 2750 60  0000 C CNN
F 3 "" H 1600 2750 60  0000 C CNN
	1    1600 2750
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U6
U 1 1 6222B749
P 10100 1700
F 0 "U6" H 10100 2200 60  0000 C CNN
F 1 "plot_v1" H 10300 2050 60  0000 C CNN
F 2 "" H 10100 1700 60  0000 C CNN
F 3 "" H 10100 1700 60  0000 C CNN
	1    10100 1700
	1    0    0    -1  
$EndComp
Text GLabel 9950 1500 0    60   Output ~ 0
out
Text GLabel 1450 2650 0    60   Output ~ 0
c_out
Text GLabel 4000 1650 2    60   Output ~ 0
clk
Text GLabel 4000 2100 2    60   Input ~ 0
rst
Wire Wire Line
	2050 2650 2050 2500
Wire Wire Line
	2350 2650 2350 2100
Wire Wire Line
	1450 2650 2350 2650
Wire Wire Line
	8700 1900 8450 1900
Wire Wire Line
	7300 1900 7000 1900
Wire Wire Line
	7300 2000 7000 2000
Wire Wire Line
	7300 2100 7000 2100
Wire Wire Line
	7300 2200 7000 2200
Wire Wire Line
	7300 2400 7000 2400
Wire Wire Line
	7300 2500 7000 2500
Wire Wire Line
	7300 2600 7000 2600
Wire Wire Line
	7300 2850 7300 2700
Wire Wire Line
	7300 2700 7000 2700
Wire Wire Line
	7300 2950 7200 2950
Wire Wire Line
	7200 2950 7200 2800
Wire Wire Line
	7200 2800 7000 2800
Wire Wire Line
	5600 1900 5350 1900
Wire Wire Line
	5600 2000 5350 2000
Wire Wire Line
	4200 2000 4200 2250
Wire Wire Line
	3900 1900 4200 1900
Wire Wire Line
	4000 1650 4000 1900
Connection ~ 4000 1900
Wire Wire Line
	2350 1950 2050 1950
Wire Wire Line
	2050 1800 2050 2200
Connection ~ 2050 1950
Wire Wire Line
	2350 1300 2350 1800
Wire Wire Line
	1100 1300 2350 1300
Wire Wire Line
	2050 1300 2050 1500
Wire Wire Line
	1100 1500 1100 1300
Connection ~ 2050 1300
Connection ~ 2050 2650
Wire Wire Line
	1600 2550 1600 2650
Connection ~ 1600 2650
Wire Wire Line
	4150 2100 4200 2100
Connection ~ 4200 2100
Wire Wire Line
	8700 2000 8450 2000
Wire Wire Line
	8450 2100 8700 2100
Wire Wire Line
	8450 2200 8700 2200
Wire Wire Line
	8450 2300 8700 2300
Wire Wire Line
	8450 2400 8700 2400
Wire Wire Line
	8450 2600 8700 2600
Wire Wire Line
	8700 2700 8300 2700
Wire Wire Line
	8300 2700 8300 2850
Wire Wire Line
	8700 2800 8400 2800
Wire Wire Line
	8400 2800 8400 2950
Wire Wire Line
	8400 2950 8300 2950
Wire Wire Line
	10000 1950 10100 1950
Wire Wire Line
	10100 1950 10100 1500
Wire Wire Line
	10100 1500 9950 1500
$Comp
L plot_v1 U2
U 1 1 622369C2
P 3900 1900
F 0 "U2" H 3900 2400 60  0000 C CNN
F 1 "plot_v1" H 4100 2250 60  0000 C CNN
F 2 "" H 3900 1900 60  0000 C CNN
F 3 "" H 3900 1900 60  0000 C CNN
	1    3900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1700 3900 1900
Text Notes 3700 4500 0    118  Italic 24
          Mixed-Signal-Circuit\nImplementation&Simulation by eSim\n             Fahr Khadija\n             07/03/2022
Wire Wire Line
	7300 2300 7000 2300
Connection ~ 8700 2500
Wire Wire Line
	8700 2500 8450 2500
$Comp
L fahr_rvmyth U7
U 1 1 62263701
P 3450 3800
F 0 "U7" H 6300 5600 60  0000 C CNN
F 1 "fahr_rvmyth" H 6300 5800 98  0000 C TIB
F 2 "" H 6300 5750 60  0000 C CNN
F 3 "" H 6300 5750 60  0000 C CNN
	1    3450 3800
	1    0    0    -1  
$EndComp
Text Label 5800 1050 0    118  Italic 24
Digital
Text Label 8850 1050 0    118  Italic 24
Analog
Text Label 2150 1000 2    118  Italic 24
Analog
Wire Notes Line
	800  800  4350 800 
Wire Notes Line
	4350 800  4350 3450
Wire Notes Line
	4350 3450 800  3450
Wire Notes Line
	800  3450 800  800 
Wire Notes Line
	5450 850  7150 850 
Wire Notes Line
	7150 850  7150 3400
Wire Notes Line
	7150 3400 5550 3400
Wire Notes Line
	5550 3400 5550 850 
Wire Notes Line
	8550 850  10200 850 
Wire Notes Line
	10200 850  10200 3450
Wire Notes Line
	10200 3450 8600 3450
Wire Notes Line
	8600 3450 8600 850 
Text Label 4650 1550 0    118  Italic 24
Bridge
Text Label 7600 1500 0    118  Italic 24
Bridges
Text Label 2250 1000 0    118  Italic 24
circuit
Text Label 6450 1050 0    118  Italic 24
circuit
Text Label 9500 1050 0    118  Italic 24
circuit
$EndSCHEMATC
