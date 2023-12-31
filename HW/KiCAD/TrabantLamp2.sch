EESchema Schematic File Version 4
LIBS:TrabantLamp2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Title"
Date "date"
Rev "Rev"
Comp "Ondrej Fidra"
Comment1 "Com1"
Comment2 "Com2"
Comment3 "Com3"
Comment4 "Com4"
$EndDescr
$Comp
L ma_obecna:LED_6pin D1
U 1 1 5F533C69
P 2950 2200
F 0 "D1" H 2968 2417 50  0000 C CNN
F 1 "RED_B" H 2968 2326 50  0000 C CNN
F 2 "ma_obecna:LED_3232_6Pin" H 2950 2200 50  0001 C CNN
F 3 "~" H 2950 2200 50  0001 C CNN
	1    2950 2200
	1    0    0    -1  
$EndComp
$Comp
L ma_obecna:LED_6pin D2
U 1 1 5F546B4D
P 2950 2600
F 0 "D2" H 2968 2817 50  0000 C CNN
F 1 "RED_B" H 2968 2726 50  0000 C CNN
F 2 "ma_obecna:LED_3232_6Pin" H 2950 2600 50  0001 C CNN
F 3 "~" H 2950 2600 50  0001 C CNN
	1    2950 2600
	1    0    0    -1  
$EndComp
$Comp
L ma_obecna:LED_6pin D3
U 1 1 5F547152
P 2950 3000
F 0 "D3" H 2968 3217 50  0000 C CNN
F 1 "RED_B" H 2968 3126 50  0000 C CNN
F 2 "ma_obecna:LED_3232_6Pin" H 2950 3000 50  0001 C CNN
F 3 "~" H 2950 3000 50  0001 C CNN
	1    2950 3000
	1    0    0    -1  
$EndComp
$Comp
L ma_obecna:LED_6pin D4
U 1 1 5F5473DD
P 2950 3400
F 0 "D4" H 2968 3617 50  0000 C CNN
F 1 "RED_B" H 2968 3526 50  0000 C CNN
F 2 "ma_obecna:LED_3232_6Pin" H 2950 3400 50  0001 C CNN
F 3 "~" H 2950 3400 50  0001 C CNN
	1    2950 3400
	1    0    0    -1  
$EndComp
$Comp
L ma_obecna:LED_4pin D5
U 1 1 5F5477F3
P 3650 2600
F 0 "D5" H 3668 2817 50  0000 C CNN
F 1 "RED_T" H 3668 2726 50  0000 C CNN
F 2 "ma_obecna:LED_3528" H 3650 2600 50  0001 C CNN
F 3 "~" H 3650 2600 50  0001 C CNN
	1    3650 2600
	1    0    0    -1  
$EndComp
$Comp
L ma_obecna:LED_4pin D6
U 1 1 5F548739
P 3650 3000
F 0 "D6" H 3668 3217 50  0000 C CNN
F 1 "RED_T" H 3668 3126 50  0000 C CNN
F 2 "ma_obecna:LED_3528" H 3650 3000 50  0001 C CNN
F 3 "~" H 3650 3000 50  0001 C CNN
	1    3650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2200 3200 2200
Wire Wire Line
	3200 3600 3150 3600
Wire Wire Line
	3150 3500 3200 3500
Connection ~ 3200 3500
Wire Wire Line
	3200 3500 3200 3600
Wire Wire Line
	3150 3400 3200 3400
Connection ~ 3200 3400
Wire Wire Line
	3200 3400 3200 3500
Wire Wire Line
	3150 3200 3200 3200
Connection ~ 3200 3200
Wire Wire Line
	3200 3200 3200 3300
Wire Wire Line
	3150 3100 3200 3100
Connection ~ 3200 3100
Wire Wire Line
	3200 3100 3200 3200
Wire Wire Line
	3150 3000 3200 3000
Wire Wire Line
	3200 2200 3200 2300
Connection ~ 3200 3000
Wire Wire Line
	3200 3000 3200 3100
Wire Wire Line
	3150 2800 3200 2800
Connection ~ 3200 2800
Wire Wire Line
	3200 2800 3200 2900
Wire Wire Line
	3150 2700 3200 2700
Connection ~ 3200 2700
Wire Wire Line
	3200 2700 3200 2800
Wire Wire Line
	3150 2600 3200 2600
Connection ~ 3200 2600
Wire Wire Line
	3200 2600 3200 2700
Wire Wire Line
	3150 2400 3200 2400
Connection ~ 3200 2400
Wire Wire Line
	3200 2400 3200 2500
Wire Wire Line
	3150 2300 3200 2300
Connection ~ 3200 2300
Wire Wire Line
	3200 2300 3200 2400
Wire Wire Line
	3850 2600 3900 2600
Wire Wire Line
	3900 2600 3900 2700
Wire Wire Line
	3900 3200 3850 3200
Wire Wire Line
	3850 3100 3900 3100
Connection ~ 3900 3100
Wire Wire Line
	3900 3100 3900 3200
Wire Wire Line
	3850 3000 3900 3000
Connection ~ 3900 3000
Wire Wire Line
	3900 3000 3900 3100
Wire Wire Line
	3850 2800 3900 2800
Wire Wire Line
	3900 2800 3900 3000
Wire Wire Line
	3850 2700 3900 2700
Connection ~ 3900 2700
Wire Wire Line
	3900 2700 3900 2800
Wire Wire Line
	3500 2600 3450 2600
Wire Wire Line
	3450 3000 3500 3000
Wire Wire Line
	3900 2600 3900 2550
Connection ~ 3900 2600
Wire Wire Line
	3200 2150 3200 2200
Connection ~ 3200 2200
Wire Wire Line
	3450 3100 3450 3000
$Comp
L Device:R R2
U 1 1 5F55FF49
P 3450 3250
F 0 "R2" H 3380 3204 50  0000 R CNN
F 1 "R" H 3380 3295 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3380 3250 50  0001 C CNN
F 3 "~" H 3450 3250 50  0001 C CNN
	1    3450 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5F55EAC8
P 2700 3700
F 0 "R1" H 2630 3654 50  0000 R CNN
F 1 "R" H 2630 3745 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2630 3700 50  0001 C CNN
F 3 "~" H 2700 3700 50  0001 C CNN
	1    2700 3700
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5F5660F4
P 3900 2550
F 0 "#PWR0102" H 3900 2400 50  0001 C CNN
F 1 "VCC" H 3915 2723 50  0000 C CNN
F 2 "" H 3900 2550 50  0001 C CNN
F 3 "" H 3900 2550 50  0001 C CNN
	1    3900 2550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5F56590F
P 3200 2150
F 0 "#PWR0101" H 3200 2000 50  0001 C CNN
F 1 "VCC" H 3215 2323 50  0000 C CNN
F 2 "" H 3200 2150 50  0001 C CNN
F 3 "" H 3200 2150 50  0001 C CNN
	1    3200 2150
	1    0    0    -1  
$EndComp
Connection ~ 3900 2800
Wire Wire Line
	3450 3000 3450 2600
Connection ~ 3450 3000
Wire Wire Line
	3450 3400 3450 4250
Wire Wire Line
	3150 3700 3200 3700
Wire Wire Line
	3200 3700 3200 3600
Connection ~ 3200 3600
Wire Wire Line
	3150 3300 3200 3300
Connection ~ 3200 3300
Wire Wire Line
	3200 3300 3200 3400
Wire Wire Line
	3150 2900 3200 2900
Connection ~ 3200 2900
Wire Wire Line
	3200 2900 3200 3000
Wire Wire Line
	3150 2500 3200 2500
Connection ~ 3200 2500
Wire Wire Line
	3200 2500 3200 2600
Wire Wire Line
	2700 2200 2700 2300
Wire Wire Line
	2750 2200 2700 2200
Wire Wire Line
	2700 2300 2750 2300
Connection ~ 2700 2300
Wire Wire Line
	2700 2300 2700 2600
Wire Wire Line
	2750 2600 2700 2600
Connection ~ 2700 2600
Wire Wire Line
	2700 2600 2700 2700
Wire Wire Line
	2700 2700 2750 2700
Connection ~ 2700 2700
Wire Wire Line
	2700 2700 2700 3000
Wire Wire Line
	2750 3000 2700 3000
Connection ~ 2700 3000
Wire Wire Line
	2700 3000 2700 3100
Wire Wire Line
	2750 3100 2700 3100
Connection ~ 2700 3100
Wire Wire Line
	2700 3100 2700 3400
Wire Wire Line
	2750 3400 2700 3400
Connection ~ 2700 3400
Wire Wire Line
	2700 3400 2700 3500
Wire Wire Line
	2750 3500 2700 3500
Connection ~ 2700 3500
Wire Wire Line
	2700 3500 2700 3550
Wire Wire Line
	2700 3850 2700 4250
Wire Wire Line
	2700 4250 3450 4250
$EndSCHEMATC
