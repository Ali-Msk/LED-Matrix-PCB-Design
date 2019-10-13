EESchema Schematic File Version 4
LIBS:Final Project-cache
EELAYER 29 0
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
L Device:R R5
U 1 1 5CD0D74C
P 7410 4445
F 0 "R5" V 7203 4445 50  0000 C CNN
F 1 "R" V 7294 4445 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7340 4445 50  0001 C CNN
F 3 "~" H 7410 4445 50  0001 C CNN
	1    7410 4445
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5CD0D674
P 7410 4345
F 0 "R4" V 7203 4345 50  0000 C CNN
F 1 "R" V 7294 4345 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7340 4345 50  0001 C CNN
F 3 "~" H 7410 4345 50  0001 C CNN
	1    7410 4345
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5CD0D53E
P 7410 4245
F 0 "R3" V 7203 4245 50  0000 C CNN
F 1 "R" V 7294 4245 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7340 4245 50  0001 C CNN
F 3 "~" H 7410 4245 50  0001 C CNN
	1    7410 4245
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5CD0CA61
P 7410 4145
F 0 "R2" V 7203 4145 50  0000 C CNN
F 1 "R" V 7294 4145 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7340 4145 50  0001 C CNN
F 3 "~" H 7410 4145 50  0001 C CNN
	1    7410 4145
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5CD0BCA9
P 7410 4045
F 0 "R1" V 7203 4045 50  0000 C CNN
F 1 "R" V 7294 4045 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7340 4045 50  0001 C CNN
F 3 "~" H 7410 4045 50  0001 C CNN
	1    7410 4045
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5CD0D81F
P 7410 4545
F 0 "R6" V 7203 4545 50  0000 C CNN
F 1 "R" V 7294 4545 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7340 4545 50  0001 C CNN
F 3 "~" H 7410 4545 50  0001 C CNN
	1    7410 4545
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5CD0D955
P 7410 4745
F 0 "R8" V 7203 4745 50  0000 C CNN
F 1 "R" V 7294 4745 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7340 4745 50  0001 C CNN
F 3 "~" H 7410 4745 50  0001 C CNN
	1    7410 4745
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5CD0DC07
P 7410 4645
F 0 "R7" V 7203 4645 50  0000 C CNN
F 1 "R" V 7294 4645 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7340 4645 50  0001 C CNN
F 3 "~" H 7410 4645 50  0001 C CNN
	1    7410 4645
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC595 U2
U 1 1 5CD0AB6F
P 2970 4595
F 0 "U2" H 2970 5376 50  0000 C CNN
F 1 "74HC595" H 2970 5285 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W10.16mm_LongPads" H 2970 4595 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2970 4595 50  0001 C CNN
	1    2970 4595
	-1   0    0    1   
$EndComp
Wire Wire Line
	3370 4395 3370 3895
Wire Wire Line
	2970 3895 3370 3895
$Comp
L Final-Project-rescue:8x8-Arduino U1
U 1 1 5CDB04D0
P 1640 4575
F 0 "U1" H 2058 4518 50  0000 L CNN
F 1 "8x8" H 2058 4427 50  0000 L CNN
F 2 "LED:8x8" H 1690 4695 50  0001 C CNN
F 3 "" H 1690 4695 50  0001 C CNN
	1    1640 4575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2970 6030 2970 5195
Connection ~ 3370 3895
Wire Wire Line
	6370 6030 2970 6030
Wire Wire Line
	6370 3895 6370 6030
Wire Wire Line
	6185 3895 6370 3895
$Comp
L Final-Project-rescue:ARDUINO_MEGA-Arduino SH1
U 1 1 5CD086C8
P 5010 3295
F 0 "SH1" H 5022 6088 60  0000 C CNN
F 1 "ARDUINO_MEGA" H 5022 5982 60  0000 C CNN
F 2 "LED:PinHeader_2x18_P2.54mm_Vertical" H 4060 3595 60  0000 C CNN
F 3 "http://arduino.cc/en/Main/ArduinoBoardMega2560" H 5022 5876 60  0000 C CNN
	1    5010 3295
	1    0    0    -1  
$EndComp
Wire Wire Line
	3370 4795 3765 4795
Wire Wire Line
	3765 4170 3765 4795
Wire Wire Line
	3675 4695 3675 4570
Wire Wire Line
	3370 4695 3675 4695
Wire Wire Line
	3370 3895 3860 3895
Wire Wire Line
	3860 4170 3765 4170
Wire Wire Line
	3835 4995 3835 4270
Wire Wire Line
	3370 4995 3835 4995
Wire Wire Line
	3695 4070 3860 4070
Wire Wire Line
	3695 4495 3695 4070
Wire Wire Line
	3370 4495 3695 4495
Wire Wire Line
	6185 4745 7260 4745
Wire Wire Line
	7260 4645 6185 4645
Wire Wire Line
	6185 4545 7260 4545
Wire Wire Line
	6185 4045 7260 4045
Wire Wire Line
	6185 4145 7260 4145
Wire Wire Line
	6185 4245 7260 4245
Wire Wire Line
	7260 4345 6185 4345
Wire Wire Line
	6185 4445 7260 4445
Wire Wire Line
	2190 4295 2570 4295
Wire Wire Line
	2190 4375 2570 4375
Wire Wire Line
	2570 4375 2570 4395
Wire Wire Line
	2190 4455 2570 4455
Wire Wire Line
	2570 4455 2570 4495
Wire Wire Line
	2190 4535 2570 4535
Wire Wire Line
	2570 4535 2570 4595
Wire Wire Line
	2190 4615 2570 4615
Wire Wire Line
	2570 4615 2570 4695
Wire Wire Line
	2190 4695 2540 4695
Wire Wire Line
	2540 4695 2540 4795
Wire Wire Line
	2540 4795 2570 4795
Wire Wire Line
	2190 4775 2500 4775
Wire Wire Line
	2500 4775 2500 4895
Wire Wire Line
	2500 4895 2570 4895
Wire Wire Line
	2190 4865 2450 4865
Wire Wire Line
	2450 4865 2450 4995
Wire Wire Line
	2450 4995 2570 4995
Wire Wire Line
	7560 4745 7560 6075
Wire Wire Line
	7560 6075 1920 6075
Wire Wire Line
	1920 6075 1920 5115
Wire Wire Line
	7560 4645 7595 4645
Wire Wire Line
	7595 4645 7595 6120
Wire Wire Line
	7595 6120 1840 6120
Wire Wire Line
	1840 6120 1840 5115
Wire Wire Line
	1760 5115 1760 6155
Wire Wire Line
	1760 6155 7630 6155
Wire Wire Line
	7630 6155 7630 4545
Wire Wire Line
	7630 4545 7560 4545
Wire Wire Line
	7560 4445 7665 4445
Wire Wire Line
	7665 4445 7665 6205
Wire Wire Line
	7665 6205 1680 6205
Wire Wire Line
	1680 6205 1680 5115
Wire Wire Line
	7560 4345 7710 4345
Wire Wire Line
	7710 4345 7710 6250
Wire Wire Line
	7710 6250 1600 6250
Wire Wire Line
	1600 6250 1600 5115
Wire Wire Line
	7560 4245 7765 4245
Wire Wire Line
	7765 4245 7765 6300
Wire Wire Line
	7765 6300 1520 6300
Wire Wire Line
	1520 6300 1520 5115
Wire Wire Line
	1440 5115 1440 6340
Wire Wire Line
	1440 6340 7805 6340
Wire Wire Line
	7805 6340 7805 4145
Wire Wire Line
	7805 4145 7560 4145
Wire Wire Line
	7560 4045 7860 4045
Wire Wire Line
	7860 4045 7860 6395
Wire Wire Line
	7860 6395 1360 6395
Wire Wire Line
	1360 6395 1360 5115
NoConn ~ 3860 1195
NoConn ~ 3860 1295
NoConn ~ 3860 1395
NoConn ~ 3860 1495
NoConn ~ 3860 1595
NoConn ~ 3860 1695
NoConn ~ 3860 1795
NoConn ~ 3860 1995
NoConn ~ 3860 2095
NoConn ~ 3860 2195
NoConn ~ 3860 2295
NoConn ~ 3860 2395
NoConn ~ 3860 2495
NoConn ~ 3860 2595
NoConn ~ 3860 2695
NoConn ~ 3860 2895
NoConn ~ 3860 2995
NoConn ~ 3860 3095
NoConn ~ 3860 3195
NoConn ~ 3860 3295
NoConn ~ 3860 3395
NoConn ~ 3860 3495
NoConn ~ 3860 3595
NoConn ~ 3860 3795
NoConn ~ 3860 4370
NoConn ~ 3860 4670
NoConn ~ 3860 4770
NoConn ~ 3860 4870
NoConn ~ 3860 4970
NoConn ~ 3860 5070
NoConn ~ 3860 5170
NoConn ~ 3860 5270
NoConn ~ 3860 5470
NoConn ~ 3860 5570
NoConn ~ 3860 5670
NoConn ~ 3860 5770
NoConn ~ 6185 895 
NoConn ~ 6185 995 
NoConn ~ 6185 1095
NoConn ~ 6185 1195
NoConn ~ 6185 1295
NoConn ~ 6185 1395
NoConn ~ 6185 1495
NoConn ~ 6185 1595
NoConn ~ 6185 1695
NoConn ~ 6185 1795
NoConn ~ 6185 1995
NoConn ~ 6185 2095
NoConn ~ 6185 2195
NoConn ~ 6185 2295
NoConn ~ 6185 2395
NoConn ~ 6185 2495
NoConn ~ 6185 2595
NoConn ~ 6185 2695
NoConn ~ 6185 2895
NoConn ~ 6185 2995
NoConn ~ 6185 3095
NoConn ~ 6185 3295
NoConn ~ 6185 3195
NoConn ~ 6185 3395
NoConn ~ 6185 3495
NoConn ~ 6185 3595
NoConn ~ 6185 3795
NoConn ~ 6185 4945
NoConn ~ 6185 5045
NoConn ~ 6185 5145
NoConn ~ 6185 5245
NoConn ~ 6185 5345
NoConn ~ 6185 5445
NoConn ~ 6185 5545
NoConn ~ 6185 5645
NoConn ~ 2570 4095
Wire Wire Line
	3835 4270 3860 4270
Wire Wire Line
	3675 4570 3860 4570
$EndSCHEMATC
