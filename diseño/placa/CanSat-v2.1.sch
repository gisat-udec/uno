EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "SIMES-1 CanSat board"
Date "2021-03-22"
Rev "2.1"
Comp "SIMES Science Academy. Aerospace Research Group"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	700  650  10350 650 
Text Notes 2400 3900 0    50   ~ 0
On-Board Computer (RPI Zero W)
Text Notes 9350 3200 0    50   ~ 0
LoRa 915MHz module\n
Text GLabel 9000 1100 1    50   Input ~ 0
3V3
Wire Wire Line
	8900 2300 8900 2500
Wire Wire Line
	8900 2500 9000 2500
Wire Wire Line
	9000 2300 9000 2500
Text GLabel 8050 1500 0    50   Input ~ 0
MOSI
Text GLabel 8050 1600 0    50   Input ~ 0
MISO
Text GLabel 8050 1400 0    50   Input ~ 0
SCLK
$Comp
L CanSat-v2.1-rescue:CONN_20X2-SparkFun-Connectors J1
U 1 1 5FC2E467
P 2250 2100
F 0 "J1" H 2250 3254 45  0000 C CNN
F 1 "Raspberry Pi GPIO" H 2250 3170 45  0000 C CNN
F 2 "Module:Raspberry_Pi_Zero_Socketed_THT_FaceDown_MountingHoles" H 2250 3250 20  0001 C CNN
F 3 "" H 2250 2100 50  0001 C CNN
F 4 "XXX-00000" H 2250 3181 60  0001 C CNN "Field4"
	1    2250 2100
	1    0    0    -1  
$EndComp
Text GLabel 3400 1550 2    50   Input ~ 0
GPIO15
Text GLabel 3400 1650 2    50   Input ~ 0
GPIO18
Text GLabel 3400 2150 2    50   Input ~ 0
GPIO25
Text GLabel 3400 2350 2    50   Input ~ 0
GPIO7
Wire Wire Line
	2500 1350 2600 1350
Wire Wire Line
	2250 3300 2600 3300
$Comp
L power:GND #PWR05
U 1 1 5FC35D98
P 2250 3450
F 0 "#PWR05" H 2250 3200 50  0001 C CNN
F 1 "GND" H 2255 3277 50  0000 C CNN
F 2 "" H 2250 3450 50  0001 C CNN
F 3 "" H 2250 3450 50  0001 C CNN
	1    2250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1150 2650 1150
Wire Wire Line
	2500 1250 2650 1250
Connection ~ 2650 1150
$Comp
L power:+5V #PWR06
U 1 1 5FC37C14
P 2650 1000
F 0 "#PWR06" H 2650 850 50  0001 C CNN
F 1 "+5V" H 2665 1173 50  0000 C CNN
F 2 "" H 2650 1000 50  0001 C CNN
F 3 "" H 2650 1000 50  0001 C CNN
	1    2650 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1150 1850 1150
$Comp
L power:+3V3 #PWR03
U 1 1 5FC3914D
P 1850 1000
F 0 "#PWR03" H 1850 850 50  0001 C CNN
F 1 "+3V3" H 1865 1173 50  0000 C CNN
F 2 "" H 1850 1000 50  0001 C CNN
F 3 "" H 1850 1000 50  0001 C CNN
	1    1850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1600 9600 1600
Wire Wire Line
	9500 1700 9600 1700
Wire Wire Line
	9500 1800 9600 1800
Wire Wire Line
	9500 1900 9600 1900
Wire Wire Line
	9500 2000 9600 2000
Wire Wire Line
	9500 2100 9550 2100
Wire Wire Line
	9000 1200 9000 1100
Text Notes 6800 5900 2    50   ~ 0
GPS Module & Buzzer
Text Notes 6800 3200 2    50   ~ 0
Atitude Sensors
Wire Notes Line
	3850 650  3850 6000
Wire Notes Line
	6950 650  6950 6000
Wire Notes Line
	700  6000 10350 6000
Wire Notes Line
	10350 650  10350 6000
Wire Wire Line
	10100 3950 10100 3800
$Comp
L power:+5V #PWR07
U 1 1 5FC721BB
P 10100 3800
F 0 "#PWR07" H 10100 3650 50  0001 C CNN
F 1 "+5V" H 10115 3973 50  0000 C CNN
F 2 "" H 10100 3800 50  0001 C CNN
F 3 "" H 10100 3800 50  0001 C CNN
	1    10100 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FC738D5
P 10100 4250
F 0 "#PWR08" H 10100 4000 50  0001 C CNN
F 1 "GND" H 10105 4077 50  0000 C CNN
F 2 "" H 10100 4250 50  0001 C CNN
F 3 "" H 10100 4250 50  0001 C CNN
	1    10100 4250
	1    0    0    -1  
$EndComp
NoConn ~ 9600 1900
NoConn ~ 9600 2000
NoConn ~ 9600 1800
NoConn ~ 9600 1700
NoConn ~ 9600 1600
Text GLabel 8050 1700 0    50   Input ~ 0
GPIO7
Text GLabel 9600 2100 2    50   Input ~ 0
GPIO5
$Comp
L power:GND #PWR09
U 1 1 5FE2509C
P 5250 5700
F 0 "#PWR09" H 5250 5450 50  0001 C CNN
F 1 "GND" H 5255 5527 50  0000 C CNN
F 2 "" H 5250 5700 50  0001 C CNN
F 3 "" H 5250 5700 50  0001 C CNN
	1    5250 5700
	1    0    0    -1  
$EndComp
$Comp
L CanSat-v2.1-rescue:UBLOX-NEO-6M-modulos_cansat U2
U 1 1 5FE2AF26
P 5850 4050
F 0 "U2" H 6028 4051 50  0000 L CNN
F 1 "UBLOX-NEO-6M" H 6028 3960 50  0000 L CNN
F 2 "Sparkfun_Connectors:1X04_LOCK" H 5840 4350 50  0001 C CNN
F 3 "" H 5840 4350 50  0001 C CNN
	1    5850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4050 5550 4050
Wire Wire Line
	5600 4250 5500 4250
Text GLabel 5500 4050 0    50   Input ~ 0
GPIO15
Wire Wire Line
	5600 3950 5000 3950
Wire Wire Line
	5000 3950 5000 4050
$Comp
L power:GND #PWR010
U 1 1 5FE34B66
P 5000 4050
F 0 "#PWR010" H 5000 3800 50  0001 C CNN
F 1 "GND" H 5005 3877 50  0000 C CNN
F 2 "" H 5000 4050 50  0001 C CNN
F 3 "" H 5000 4050 50  0001 C CNN
	1    5000 4050
	1    0    0    -1  
$EndComp
Text GLabel 5500 4250 0    50   Input ~ 0
5V
Wire Wire Line
	10100 4150 10100 4250
NoConn ~ 5600 4150
Text GLabel 9600 1400 2    50   Input ~ 0
RFM_ANT
Text GLabel 7800 2750 2    50   Input ~ 0
RFM_ANT
$Comp
L CanSat-v2.1-rescue:SMA_Conn-modulos_cansat U6
U 1 1 60042635
P 7450 2700
F 0 "U6" H 7508 2915 50  0000 C CNN
F 1 "SMA_Conn" H 7508 2824 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132203-12_Horizontal" H 7450 2700 50  0001 C CNN
F 3 "" H 7450 2700 50  0001 C CNN
	1    7450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2750 7700 2750
$Comp
L power:GND #PWR0101
U 1 1 60048A9E
P 9000 2550
F 0 "#PWR0101" H 9000 2300 50  0001 C CNN
F 1 "GND" H 9005 2377 50  0000 C CNN
F 2 "" H 9000 2550 50  0001 C CNN
F 3 "" H 9000 2550 50  0001 C CNN
	1    9000 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2550 9000 2500
Wire Wire Line
	7700 2850 7900 2850
Wire Wire Line
	7900 2850 7900 2900
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 60053859
P 10200 7100
F 0 "#LOGO1" H 10200 7375 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10200 6875 50  0001 C CNN
F 2 "" H 10200 7100 50  0001 C CNN
F 3 "~" H 10200 7100 50  0001 C CNN
	1    10200 7100
	1    0    0    -1  
$EndComp
NoConn ~ 5600 1550
$Comp
L CanSat-v2.1-rescue:GY-91-modulos_cansat U1
U 1 1 600FB2CA
P 5800 1250
F 0 "U1" V 6200 1050 50  0000 L CNN
F 1 "GY-91" V 6100 1000 50  0000 L CNN
F 2 "Sparkfun_Connectors:1X08_LOCK" H 5800 1555 50  0001 C CNN
F 3 "" H 5800 1555 50  0001 C CNN
	1    5800 1250
	0    -1   -1   0   
$EndComp
Text GLabel 5900 1700 3    50   Input ~ 0
GPIO3
Text GLabel 6000 1700 3    50   Input ~ 0
GPIO2
NoConn ~ 6100 1550
NoConn ~ 6200 1550
NoConn ~ 6300 1550
Text GLabel 5700 1700 3    50   Input ~ 0
3V3
Text GLabel 5050 2800 2    50   Input ~ 0
3V3
Text GLabel 5050 2200 2    50   Input ~ 0
GPIO3
Text GLabel 5050 2500 2    50   Input ~ 0
GPIO2
$Comp
L power:GND #PWR013
U 1 1 5FE2DD7F
P 4550 2550
F 0 "#PWR013" H 4550 2300 50  0001 C CNN
F 1 "GND" H 4555 2377 50  0000 C CNN
F 2 "" H 4550 2550 50  0001 C CNN
F 3 "" H 4550 2550 50  0001 C CNN
	1    4550 2550
	1    0    0    -1  
$EndComp
$Comp
L CanSat-v2.1-rescue:DM13-DC-STEP-UP-modulos_cansat U3
U 1 1 601BD4F0
P 9350 4050
F 0 "U3" H 9350 4375 50  0000 C CNN
F 1 "DM13-DC-STEP-UP" H 9350 4284 50  0000 C CNN
F 2 "footprints-cansat:DM13" H 9350 4250 50  0001 C CNN
F 3 "" H 9350 4250 50  0001 C CNN
	1    9350 4050
	1    0    0    -1  
$EndComp
Text Notes 9300 5900 0    50   ~ 0
Electrical Power System
Wire Notes Line
	700  650  700  6000
$Comp
L Device:Battery_Cell BT1
U 1 1 609DE320
P 7200 5250
F 0 "BT1" H 7318 5346 50  0000 L CNN
F 1 "3.7v 1S Li-ion" H 7318 5255 50  0000 L CNN
F 2 "Battery:BatteryHolder_MPD_BH-18650-PC2" V 7200 5310 50  0001 C CNN
F 3 "~" V 7200 5310 50  0001 C CNN
	1    7200 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60A1396D
P 9150 5200
F 0 "J2" H 9230 5192 50  0000 L CNN
F 1 "Secondary Power Input" H 9230 5101 50  0000 L CNN
F 2 "Connector_JST:JST_PH_S2B-PH-K_1x02_P2.00mm_Horizontal" H 9150 5200 50  0001 C CNN
F 3 "~" H 9150 5200 50  0001 C CNN
	1    9150 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5300 8900 5300
Wire Wire Line
	8950 5200 8900 5200
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60BD3997
P 1500 1000
F 0 "#FLG0101" H 1500 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 1173 50  0000 C CNN
F 2 "" H 1500 1000 50  0001 C CNN
F 3 "~" H 1500 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60BDCCDF
P 3000 1000
F 0 "#FLG0102" H 3000 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 1173 50  0000 C CNN
F 2 "" H 3000 1000 50  0001 C CNN
F 3 "~" H 3000 1000 50  0001 C CNN
	1    3000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1000 2650 1100
Wire Wire Line
	2650 1100 3000 1100
Wire Wire Line
	3000 1100 3000 1000
Connection ~ 2650 1100
Wire Wire Line
	2650 1100 2650 1150
Wire Wire Line
	1850 1000 1750 1000
Connection ~ 1850 1000
Text GLabel 1750 1000 0    50   Input ~ 0
3V3
Wire Wire Line
	2650 1000 2800 1000
Text GLabel 2800 1000 2    50   Input ~ 0
5V
Wire Wire Line
	2000 1950 1850 1950
Connection ~ 1850 1150
$Comp
L CanSat-v2.1-rescue:HDC1080(Module)-modulos_cansat U5
U 1 1 60BDB7BD
P 4700 1850
F 0 "U5" V 5100 1800 50  0000 L CNN
F 1 "HDC1080(Module)" V 5000 1500 50  0000 L CNN
F 2 "Sparkfun_Connectors:1X04_LOCK" H 4300 2195 50  0001 C CNN
F 3 "" H 4300 2195 50  0001 C CNN
	1    4700 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 3300 2250 3450
$Comp
L power:GND #PWR01
U 1 1 60C756DE
P 5800 2050
F 0 "#PWR01" H 5800 1800 50  0001 C CNN
F 1 "GND" H 5805 1877 50  0000 C CNN
F 2 "" H 5800 2050 50  0001 C CNN
F 3 "" H 5800 2050 50  0001 C CNN
	1    5800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2100 4550 2550
Wire Wire Line
	4850 2200 4950 2200
Wire Wire Line
	4850 2100 4850 2200
$Comp
L Connector:TestPoint TP1
U 1 1 60C955A0
P 5050 2350
F 0 "TP1" V 5004 2538 50  0000 L CNN
F 1 "GPIO3" V 5095 2538 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5250 2350 50  0001 C CNN
F 3 "~" H 5250 2350 50  0001 C CNN
	1    5050 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2200 4950 2350
Connection ~ 4950 2200
Wire Wire Line
	4950 2200 5050 2200
Wire Wire Line
	4750 2500 4900 2500
Wire Wire Line
	4750 2100 4750 2500
Wire Wire Line
	4900 2500 4900 2650
Connection ~ 4900 2500
Wire Wire Line
	4900 2500 5050 2500
Wire Wire Line
	4900 2650 5050 2650
Wire Wire Line
	4950 2350 5050 2350
$Comp
L Connector:TestPoint TP2
U 1 1 60CADDA9
P 5050 2650
F 0 "TP2" V 5004 2838 50  0000 L CNN
F 1 "GPIO2" V 5095 2838 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5250 2650 50  0001 C CNN
F 3 "~" H 5250 2650 50  0001 C CNN
	1    5050 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 2800 4900 2800
Wire Wire Line
	4650 2100 4650 2800
Wire Wire Line
	4900 2800 4900 2950
Wire Wire Line
	4900 2950 5050 2950
Connection ~ 4900 2800
Wire Wire Line
	4900 2800 5050 2800
$Comp
L Connector:TestPoint TP3
U 1 1 60CB779C
P 5050 2950
F 0 "TP3" V 5004 3138 50  0000 L CNN
F 1 "3V3" V 5095 3138 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5250 2950 50  0001 C CNN
F 3 "~" H 5250 2950 50  0001 C CNN
	1    5050 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 1100 8050 1100
Wire Wire Line
	8150 1100 8150 1400
Wire Wire Line
	8150 1400 8500 1400
Wire Wire Line
	8050 1400 8150 1400
Connection ~ 8150 1400
Wire Wire Line
	8050 1500 8250 1500
Wire Wire Line
	8250 1500 8250 1000
Wire Wire Line
	8250 1000 8050 1000
Connection ~ 8250 1500
Wire Wire Line
	8250 1500 8500 1500
Wire Wire Line
	8050 1600 8350 1600
Wire Wire Line
	8350 1600 8350 900 
Wire Wire Line
	8350 900  8050 900 
Connection ~ 8350 1600
Wire Wire Line
	8350 1600 8500 1600
Wire Wire Line
	8050 1700 8150 1700
Text GLabel 8050 1900 0    50   Input ~ 0
GPIO25
$Comp
L RF_Module:RFM95W-915S2 U4
U 1 1 5FC1BE9B
P 9000 1700
F 0 "U4" H 8750 2300 50  0000 C CNN
F 1 "RFM95W" H 8750 2200 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 5700 3350 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 5700 3350 50  0001 C CNN
	1    9000 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1900 8250 1900
Wire Wire Line
	8150 1700 8150 2050
Wire Wire Line
	8150 2050 8050 2050
Connection ~ 8150 1700
Wire Wire Line
	8150 1700 8500 1700
Wire Wire Line
	8250 1900 8250 2150
Wire Wire Line
	8250 2150 8050 2150
Connection ~ 8250 1900
Wire Wire Line
	8250 1900 8500 1900
$Comp
L Connector:TestPoint TP11
U 1 1 60D6B3CB
P 8050 2050
F 0 "TP11" V 8050 2300 50  0000 C CNN
F 1 "GPIO7" V 8050 2600 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8250 2050 50  0001 C CNN
F 3 "~" H 8250 2050 50  0001 C CNN
	1    8050 2050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 60D6C7EA
P 8050 2150
F 0 "TP12" V 8050 2400 50  0000 C CNN
F 1 "GPIO25" V 8050 2700 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8250 2150 50  0001 C CNN
F 3 "~" H 8250 2150 50  0001 C CNN
	1    8050 2150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 60D70E5B
P 8050 1100
F 0 "TP10" V 8050 1350 50  0000 C CNN
F 1 "GPIO11" V 8050 1650 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8250 1100 50  0001 C CNN
F 3 "~" H 8250 1100 50  0001 C CNN
	1    8050 1100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 60D75243
P 8050 1000
F 0 "TP9" V 8050 1250 50  0000 C CNN
F 1 "GPIO10" V 8050 1550 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8250 1000 50  0001 C CNN
F 3 "~" H 8250 1000 50  0001 C CNN
	1    8050 1000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 60D7945F
P 8050 900
F 0 "TP8" V 8050 1150 50  0000 C CNN
F 1 "GPIO9" V 8050 1450 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8250 900 50  0001 C CNN
F 3 "~" H 8250 900 50  0001 C CNN
	1    8050 900 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 2100 9550 2250
Connection ~ 9550 2100
Wire Wire Line
	9550 2100 9600 2100
$Comp
L Connector:TestPoint TP15
U 1 1 60D86739
P 9550 2250
F 0 "TP15" H 9492 2276 50  0000 R CNN
F 1 "GPIO5" H 9492 2367 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9750 2250 50  0001 C CNN
F 3 "~" H 9750 2250 50  0001 C CNN
	1    9550 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 4050 5550 3800
Connection ~ 5550 4050
Wire Wire Line
	5550 4050 5500 4050
$Comp
L Connector:TestPoint TP6
U 1 1 60D8B950
P 5550 3800
F 0 "TP6" H 5608 3918 50  0000 L CNN
F 1 "GPIO15" H 5608 3827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5750 3800 50  0001 C CNN
F 3 "~" H 5750 3800 50  0001 C CNN
	1    5550 3800
	1    0    0    -1  
$EndComp
Text Notes 3700 5900 2    50   ~ 0
Expansion Ports
Wire Wire Line
	9500 1400 9600 1400
Wire Wire Line
	9650 3950 9850 3950
Wire Wire Line
	9650 4150 9850 4150
Connection ~ 9850 3950
Wire Wire Line
	9850 3950 10100 3950
Connection ~ 9850 4150
Wire Wire Line
	9850 4150 10100 4150
$Comp
L Connector:TestPoint TP14
U 1 1 60DBF6F0
P 9700 4450
F 0 "TP14" V 9895 4522 50  0000 C CNN
F 1 "GND" V 9804 4522 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9900 4450 50  0001 C CNN
F 3 "~" H 9900 4450 50  0001 C CNN
	1    9700 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 4450 9850 4450
Wire Wire Line
	9850 4150 9850 4450
$Comp
L Connector:TestPoint TP13
U 1 1 60DC4C5A
P 9700 3700
F 0 "TP13" V 9895 3772 50  0000 C CNN
F 1 "5V" V 9804 3772 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9900 3700 50  0001 C CNN
F 3 "~" H 9900 3700 50  0001 C CNN
	1    9700 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 3700 9850 3700
Wire Wire Line
	9850 3700 9850 3950
NoConn ~ 7700 3950
NoConn ~ 7700 4050
NoConn ~ 7700 4150
$Comp
L power:GND #PWR02
U 1 1 60E46EC8
P 7350 4300
F 0 "#PWR02" H 7350 4050 50  0001 C CNN
F 1 "GND" H 7355 4127 50  0000 C CNN
F 2 "" H 7350 4300 50  0001 C CNN
F 3 "" H 7350 4300 50  0001 C CNN
	1    7350 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 60E78C85
P 7350 3800
F 0 "#PWR0103" H 7350 3650 50  0001 C CNN
F 1 "+5V" H 7365 3973 50  0000 C CNN
F 2 "" H 7350 3800 50  0001 C CNN
F 3 "" H 7350 3800 50  0001 C CNN
	1    7350 3800
	1    0    0    -1  
$EndComp
$Comp
L CanSat-v2.1-rescue:USB_MICRO-B_FEMALE-SMT-SparkFun-Connectors J3
U 1 1 60E7A7A2
P 7950 4050
F 0 "J3" H 7950 4610 45  0000 C CNN
F 1 "USB_MICRO-B_FEMALE-SMT" H 7950 4526 45  0000 C CNN
F 2 "Sparkfun_Connectors:USB-B-MICRO-SMD" H 7950 4500 20  0001 C CNN
F 3 "" H 7950 4050 50  0001 C CNN
F 4 "CONN-11752" H 7950 4431 60  0000 C CNN "Field4"
	1    7950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3800 7350 3850
Wire Wire Line
	7350 3850 7700 3850
Wire Wire Line
	7350 4300 7350 4250
Wire Wire Line
	7350 4250 7700 4250
NoConn ~ 8200 4300
Wire Wire Line
	5700 1550 5700 1700
Wire Wire Line
	6000 1550 6000 1700
Wire Wire Line
	5900 1550 5900 1700
Wire Wire Line
	5800 1550 5800 2050
$Comp
L power:GND1 #PWR0102
U 1 1 60F43C0A
P 8650 2900
F 0 "#PWR0102" H 8650 2650 50  0001 C CNN
F 1 "GND1" H 8655 2727 50  0000 C CNN
F 2 "" H 8650 2900 50  0001 C CNN
F 3 "" H 8650 2900 50  0001 C CNN
	1    8650 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 60F92869
P 2200 4500
F 0 "J4" H 2280 4492 50  0000 L CNN
F 1 "I2C Expansion" H 2280 4401 50  0000 L CNN
F 2 "Sparkfun_Connectors:1X04_LOCK_LONGPADS" H 2200 4500 50  0001 C CNN
F 3 "~" H 2200 4500 50  0001 C CNN
	1    2200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4400 1900 4400
Text GLabel 1900 4400 0    50   Input ~ 0
3V3
Text Label 1850 4600 0    50   ~ 0
SDA
Text Label 1850 4700 0    50   ~ 0
SCL
Text GLabel 1800 4600 0    50   Input ~ 0
GPIO2
Text GLabel 1800 4700 0    50   Input ~ 0
GPIO3
Wire Wire Line
	1800 4600 2000 4600
Wire Wire Line
	2000 4700 1800 4700
Wire Wire Line
	1450 4500 1450 4750
Wire Wire Line
	1450 4500 2000 4500
$Comp
L power:GND #PWR0105
U 1 1 60FD806C
P 1450 4750
F 0 "#PWR0105" H 1450 4500 50  0001 C CNN
F 1 "GND" H 1455 4577 50  0000 C CNN
F 2 "" H 1450 4750 50  0001 C CNN
F 3 "" H 1450 4750 50  0001 C CNN
	1    1450 4750
	1    0    0    -1  
$EndComp
Connection ~ 2250 3300
Wire Wire Line
	2600 1350 2600 1750
Wire Wire Line
	2500 2750 2600 2750
Connection ~ 2600 2750
Wire Wire Line
	2600 2750 2600 3300
Wire Wire Line
	2500 2550 2600 2550
Connection ~ 2600 2550
Wire Wire Line
	2600 2550 2600 2750
Wire Wire Line
	2500 2050 2600 2050
Connection ~ 2600 2050
Wire Wire Line
	2600 2050 2600 2550
Wire Wire Line
	2500 1750 2600 1750
Connection ~ 2600 1750
Wire Wire Line
	2600 1750 2600 2050
Wire Wire Line
	1900 1550 1900 2350
Wire Wire Line
	1900 1550 2000 1550
Wire Wire Line
	1900 2350 2000 2350
Connection ~ 1900 2350
Wire Wire Line
	1900 2350 1900 3050
Wire Wire Line
	1900 3300 2250 3300
Wire Wire Line
	1900 3050 2000 3050
Connection ~ 1900 3050
Wire Wire Line
	1900 3050 1900 3300
Connection ~ 2650 1000
Wire Wire Line
	2650 1150 2650 1250
Wire Notes Line
	10350 3300 3850 3300
Wire Notes Line
	700  4000 3850 4000
NoConn ~ 3400 1450
NoConn ~ 3400 1850
NoConn ~ 3400 1950
NoConn ~ 3400 2250
NoConn ~ 3400 2450
NoConn ~ 3400 2650
NoConn ~ 3400 2850
NoConn ~ 3400 2950
NoConn ~ 3400 3050
Text Label 2650 3050 0    50   ~ 0
GPIO21
Text Label 2650 2950 0    50   ~ 0
GPIO20
Text Label 2650 2850 0    50   ~ 0
GPIO16
Text Label 2650 2650 0    50   ~ 0
GPIO12
Text Label 2650 2450 0    50   ~ 0
ID_SC
Text Label 2650 2350 0    50   ~ 0
GPIO7_SPI_CE1_N
Wire Wire Line
	2500 1450 3400 1450
Wire Wire Line
	2500 1550 3400 1550
Wire Wire Line
	2500 1650 3400 1650
Wire Wire Line
	2500 1850 3400 1850
Wire Wire Line
	2500 1950 3400 1950
Wire Wire Line
	2500 2150 3400 2150
Wire Wire Line
	2500 2250 3400 2250
Wire Wire Line
	2500 2350 3400 2350
Wire Wire Line
	2500 2450 3400 2450
Wire Wire Line
	2500 2650 3400 2650
Wire Wire Line
	2500 2850 3400 2850
Wire Wire Line
	2500 2950 3400 2950
Wire Wire Line
	2500 3050 3400 3050
Text Label 2650 2250 0    50   ~ 0
GPIO8_SPI_CE0_N
Text Label 2650 2150 0    50   ~ 0
GPIO25_GEN6
Text Label 2650 1950 0    50   ~ 0
GPIO24_GEN5
Text Label 2650 1850 0    50   ~ 0
GPIO23_GEN4
Text Label 2650 1650 0    50   ~ 0
GPIO18_GEN01
Text Label 2650 1550 0    50   ~ 0
GPIO15_RXD0
Text Label 2650 1450 0    50   ~ 0
GPIO14_TXD0
Text Label 1150 2950 0    50   ~ 0
GPIO26
Text Label 1150 2850 0    50   ~ 0
GPIO19
Text Label 1150 2750 0    50   ~ 0
GPIO13
Text Label 1150 2650 0    50   ~ 0
GPIO6
Text Label 1150 2450 0    50   ~ 0
ID_SD
Text Label 1150 2550 0    50   ~ 0
GPIO5
Text Label 1150 1850 0    50   ~ 0
GPIO22_GEN3
Text Label 1150 1750 0    50   ~ 0
GPIO27_GEN2
Text Label 1150 1650 0    50   ~ 0
GPIO17_GEN0
NoConn ~ 1100 2950
NoConn ~ 1100 2850
NoConn ~ 1100 2750
NoConn ~ 1100 2650
NoConn ~ 1100 2450
NoConn ~ 1100 1850
NoConn ~ 1100 1750
NoConn ~ 1100 1650
Text Label 1150 2250 0    50   ~ 0
GPIO11_SPI_SCLK
Text Label 1150 2150 0    50   ~ 0
GPIO10_SPI_MISO
Text Label 1150 2050 0    50   ~ 0
GPIO10_SPI_MOSI
Text Label 1150 1450 0    50   ~ 0
GPIO4_GCLK
NoConn ~ 1100 1450
Text Label 1150 1350 0    50   ~ 0
GPIO3_SCL1
Text Label 1150 1250 0    50   ~ 0
GPIO2_SDA1
Wire Wire Line
	1500 1100 1850 1100
Wire Wire Line
	1500 1000 1500 1100
Text GLabel 1100 2550 0    50   Input ~ 0
GPIO5
Text GLabel 1100 2250 0    50   Input ~ 0
SCLK
Text GLabel 1100 2150 0    50   Input ~ 0
MISO
Text GLabel 1100 2050 0    50   Input ~ 0
MOSI
Text GLabel 1100 1350 0    50   Input ~ 0
GPIO3
Text GLabel 1100 1250 0    50   Input ~ 0
GPIO2
Wire Wire Line
	1850 1000 1850 1100
Wire Wire Line
	1100 2050 2000 2050
Wire Wire Line
	1100 2150 2000 2150
Wire Wire Line
	1100 2250 2000 2250
Wire Wire Line
	1100 2450 2000 2450
Wire Wire Line
	1100 2550 2000 2550
Wire Wire Line
	1100 2650 2000 2650
Wire Wire Line
	1100 2750 2000 2750
Wire Wire Line
	1100 2850 2000 2850
Wire Wire Line
	1100 2950 2000 2950
Wire Wire Line
	1100 1250 2000 1250
Wire Wire Line
	1100 1350 2000 1350
Wire Wire Line
	1100 1450 2000 1450
Wire Wire Line
	1100 1650 2000 1650
Wire Wire Line
	1100 1750 2000 1750
Wire Wire Line
	1850 1150 1850 1950
Wire Wire Line
	1100 1850 2000 1850
Text GLabel 4250 4800 0    50   Input ~ 0
GPIO18
Wire Wire Line
	5250 5000 5250 5100
Wire Wire Line
	5350 5000 5250 5000
$Comp
L Device:Buzzer BZ1
U 1 1 5FC1D864
P 5450 4900
F 0 "BZ1" H 5602 4929 50  0000 L CNN
F 1 "Buzzer" H 5602 4838 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 5425 5000 50  0001 C CNN
F 3 "~" V 5425 5000 50  0001 C CNN
	1    5450 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 6140DC34
P 2200 5200
F 0 "J5" H 2280 5192 50  0000 L CNN
F 1 "5V PWR" H 2280 5101 50  0000 L CNN
F 2 "Sparkfun_Connectors:1X02_LOCK_LONGPADS" H 2200 5200 50  0001 C CNN
F 3 "~" H 2200 5200 50  0001 C CNN
	1    2200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5300 1900 5300
Wire Wire Line
	1900 5300 1900 5400
$Comp
L power:GND #PWR0106
U 1 1 61417358
P 1900 5400
F 0 "#PWR0106" H 1900 5150 50  0001 C CNN
F 1 "GND" H 1905 5227 50  0000 C CNN
F 2 "" H 1900 5400 50  0001 C CNN
F 3 "" H 1900 5400 50  0001 C CNN
	1    1900 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5200 1900 5200
Text GLabel 1900 5200 0    50   Input ~ 0
5V
$Comp
L Connector:TestPoint TP4
U 1 1 614819D4
P 7350 4900
F 0 "TP4" V 7545 4972 50  0000 C CNN
F 1 "BT1+" V 7454 4972 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7550 4900 50  0001 C CNN
F 3 "~" H 7550 4900 50  0001 C CNN
	1    7350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4900 7350 5050
Wire Wire Line
	7350 5050 7200 5050
$Comp
L Connector:TestPoint TP5
U 1 1 614955D5
P 7350 5500
F 0 "TP5" V 7545 5572 50  0000 C CNN
F 1 "BT1-" V 7454 5572 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7550 5500 50  0001 C CNN
F 3 "~" H 7550 5500 50  0001 C CNN
	1    7350 5500
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 6149F62A
P 8900 5050
F 0 "TP7" H 8958 5168 50  0000 L CNN
F 1 "BT2-" H 8958 5077 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9100 5050 50  0001 C CNN
F 3 "~" H 9100 5050 50  0001 C CNN
	1    8900 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP16
U 1 1 614A142F
P 8900 5500
F 0 "TP16" H 8842 5526 50  0000 R CNN
F 1 "BT2+" H 8842 5617 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9100 5500 50  0001 C CNN
F 3 "~" H 9100 5500 50  0001 C CNN
	1    8900 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8900 5200 8900 5050
Connection ~ 8900 5200
Wire Wire Line
	8900 5200 8800 5200
Wire Wire Line
	8900 5300 8900 5500
Connection ~ 8900 5300
Wire Wire Line
	8900 5300 8950 5300
Wire Wire Line
	9050 3950 8900 3950
Wire Wire Line
	9050 4150 8900 4150
Text GLabel 8900 3950 0    50   Input ~ 0
BT1+
Text GLabel 8900 4150 0    50   Input ~ 0
BT1-
Wire Wire Line
	7350 5050 7700 5050
Connection ~ 7350 5050
Text GLabel 7850 4950 2    50   Input ~ 0
BT1+
Text GLabel 7850 5450 2    50   Input ~ 0
BT1-
Wire Wire Line
	7700 5350 7700 5450
Wire Wire Line
	7700 4950 7700 5050
Wire Wire Line
	7700 5050 7850 5050
Connection ~ 7700 5050
Text GLabel 7850 5050 2    50   Input ~ 0
BT2+
Wire Wire Line
	7700 4950 7850 4950
Wire Wire Line
	7700 5450 7850 5450
Wire Wire Line
	7700 5350 7850 5350
Connection ~ 7700 5350
Text GLabel 7850 5350 2    50   Input ~ 0
BT2-
Text GLabel 8800 5200 0    50   Input ~ 0
BT2-
Text GLabel 8800 5300 0    50   Input ~ 0
BT2+
Wire Wire Line
	7200 5350 7350 5350
Wire Wire Line
	7350 5500 7350 5350
Connection ~ 7350 5350
Wire Wire Line
	7350 5350 7700 5350
Connection ~ 1850 1100
Wire Wire Line
	1850 1100 1850 1150
$Comp
L power:GND #PWR012
U 1 1 60C38765
P 7900 2900
F 0 "#PWR012" H 7900 2650 50  0001 C CNN
F 1 "GND" H 7905 2727 50  0000 C CNN
F 2 "" H 7900 2900 50  0001 C CNN
F 3 "" H 7900 2900 50  0001 C CNN
	1    7900 2900
	1    0    0    -1  
$EndComp
Connection ~ 9000 2500
Wire Wire Line
	9100 2300 9100 2500
Wire Wire Line
	9100 2500 9000 2500
$Comp
L Transistor_FET:DMG3404L Q1
U 1 1 60CB545F
P 5150 5350
F 0 "Q1" H 5354 5396 50  0000 L CNN
F 1 "DMG3404L" H 5354 5305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5350 5275 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/DMG3404L.pdf" H 5150 5350 50  0001 L CNN
	1    5150 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 60CB8C6A
P 5800 5400
F 0 "JP1" V 5754 5448 50  0000 L CNN
F 1 "Jumper_NO_Small" V 5845 5448 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 5800 5400 50  0001 C CNN
F 3 "~" H 5800 5400 50  0001 C CNN
	1    5800 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 60CBA298
P 4650 5350
F 0 "R1" V 4454 5350 50  0000 C CNN
F 1 "R_Small" V 4545 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4650 5350 50  0001 C CNN
F 3 "~" H 4650 5350 50  0001 C CNN
	1    4650 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 5550 5250 5700
$Comp
L Device:R_Small R2
U 1 1 60CC8270
P 4850 5550
F 0 "R2" H 4791 5504 50  0000 R CNN
F 1 "R_Small" H 4791 5595 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4850 5550 50  0001 C CNN
F 3 "~" H 4850 5550 50  0001 C CNN
	1    4850 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 5450 4850 5350
Wire Wire Line
	4850 5350 4950 5350
$Comp
L power:GND #PWR04
U 1 1 60CD3120
P 4850 5700
F 0 "#PWR04" H 4850 5450 50  0001 C CNN
F 1 "GND" H 4855 5527 50  0000 C CNN
F 2 "" H 4850 5700 50  0001 C CNN
F 3 "" H 4850 5700 50  0001 C CNN
	1    4850 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5650 4850 5700
Wire Wire Line
	4850 5350 4750 5350
Connection ~ 4850 5350
Wire Wire Line
	4550 5350 4450 5350
Wire Wire Line
	4450 4800 4450 5350
Connection ~ 4450 4800
Wire Wire Line
	4450 4800 4250 4800
Wire Wire Line
	4450 4800 4750 4800
Wire Wire Line
	5800 5300 5800 5100
Wire Wire Line
	5800 5100 5250 5100
Connection ~ 5250 5100
Wire Wire Line
	5250 5100 5250 5150
$Comp
L power:GND #PWR011
U 1 1 60D28A9D
P 5800 5750
F 0 "#PWR011" H 5800 5500 50  0001 C CNN
F 1 "GND" H 5805 5577 50  0000 C CNN
F 2 "" H 5800 5750 50  0001 C CNN
F 3 "" H 5800 5750 50  0001 C CNN
	1    5800 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5500 5800 5750
$Comp
L Device:Jumper_NO_Small JP2
U 1 1 60D3479A
P 4850 4800
F 0 "JP2" H 4850 4615 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4850 4706 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4850 4800 50  0001 C CNN
F 3 "~" H 4850 4800 50  0001 C CNN
	1    4850 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 4800 5250 4800
Text GLabel 5150 4450 0    50   Input ~ 0
5V
Wire Wire Line
	5150 4450 5250 4450
Wire Wire Line
	5250 4450 5250 4550
Wire Wire Line
	5250 4750 5250 4800
Connection ~ 5250 4800
Wire Wire Line
	5250 4800 5350 4800
$Comp
L Device:Jumper_NC_Small JP3
U 1 1 60D4CF4F
P 5250 4650
F 0 "JP3" V 5204 4724 50  0000 L CNN
F 1 "Jumper_NC_Small" V 5295 4724 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_RoundedPad1.0x1.5mm" H 5250 4650 50  0001 C CNN
F 3 "~" H 5250 4650 50  0001 C CNN
	1    5250 4650
	0    1    1    0   
$EndComp
$EndSCHEMATC
