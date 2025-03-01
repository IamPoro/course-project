.HW1
.protect
.lib '/cad/cell_lib/cic018.l' tt
.unprotect

.param Vtop=1.8

.global VDD VSS
VDD VDD 0 dc Vtop
VSS VSS 0 dc 0



MM1 t01 VSS VDD VDD P_18 w=0.25u L=0.18u
MM2 t01 A0 VSS VSS N_18 w=0.25u L=0.18u
MM3 t01 B0 VSS VSS N_18 w=0.25u L=0.18u
MM4 Y0 t01 VSS VSS N_18 w=0.25u L=0.18u
MM5 Y0 VSS VDD VDD P_18 w=0.25u L=0.18u
MM6 Y0 B0 t02 t02 N_18 w=0.25u L=0.18u
MM7 t02 A0 VSS VSS N_18 w=0.25u L=0.18u

MM11 t03 VSS VDD VDD P_18 w=0.25u L=0.18u
MM12 t03 Y0 VSS VSS N_18 w=0.25u L=0.18u
MM13 t03 C0 VSS VSS N_18 w=0.25u L=0.18u
MM14 S0 t03 VSS VSS N_18 w=0.25u L=0.18u
MM15 S0 VSS VDD VDD P_18 w=0.25u L=0.18u
MM16 S0 Y0 t04 t04 N_18 w=0.25u L=0.18u
MM17 t04 C0 VSS VSS N_18 w=0.25u L=0.18u

MM101 Y0B Y0 VDD VDD P_18 w=0.25u L=0.18u
MM102 Y0B Y0 VSS VSS N_18 w=0.25u L=0.18u

MM103 C1B VSS VDD VDD P_18 w=0.25u L=0.18u
MM104 C1B Y0 k1 k1 N_18 w=0.25u L=0.18u
MM105 C1B Y0B k2 k2 N_18 w=0.25u L=0.18u
MM106 k1 C0 VSS VSS N_18 w=0.25u L=0.18u
MM107 k2 A0 VSS VSS N_18 w=0.25u L=0.18u

MM20 A1B A1 VDD VDD P_18 w=0.25u L=0.18u
MM30 A1B A1 VSS VSS N_18 w=0.25u L=0.18u

MM21 t11 VSS VDD VDD P_18 w=0.25u L=0.18u
MM22 t11 A1B VSS VSS N_18 w=0.25u L=0.18u
MM23 t11 B1 VSS VSS N_18 w=0.25u L=0.18u
MM24 Y1 t11 VSS VSS N_18 w=0.25u L=0.18u
MM25 Y1 VSS VDD VDD P_18 w=0.25u L=0.18u
MM26 Y1 B1 t12 t12 N_18 w=0.25u L=0.18u
MM27 t12 A1B VSS VSS N_18 w=0.25u L=0.18u

MM31 t13 VSS VDD VDD P_18 w=0.25u L=0.18u
MM32 t13 Y1 VSS VSS N_18 w=0.25u L=0.18u
MM33 t13 C1B VSS VSS N_18 w=0.25u L=0.18u
MM34 S1 t13 VSS VSS N_18 w=0.25u L=0.18u
MM35 S1 VSS VDD VDD P_18 w=0.25u L=0.18u
MM36 S1 Y1 t14 t14 N_18 w=0.25u L=0.18u
MM37 t14 C1B VSS VSS N_18 w=0.25u L=0.18u

MM111 Y1B Y1 VDD VDD P_18 w=0.25u L=0.18u
MM112 Y1B Y1 VSS VSS N_18 w=0.25u L=0.18u

MM113 C2 VSS VDD VDD P_18 w=0.25u L=0.18u
MM114 C2 Y1B k3 k3 N_18 w=0.25u L=0.18u
MM115 C2 Y1 k4 k4 N_18 w=0.25u L=0.18u
MM116 k3 C1B VSS VSS N_18 w=0.25u L=0.18u
MM117 k4 A1B VSS VSS N_18 w=0.25u L=0.18u



MM41 t21 VSS VDD VDD P_18 w=0.25u L=0.18u
MM42 t21 A2 VSS VSS N_18 w=0.25u L=0.18u
MM43 t21 B2 VSS VSS N_18 w=0.25u L=0.18u
MM44 Y2 t21 VSS VSS N_18 w=0.25u L=0.18u
MM45 Y2 VSS VDD VDD P_18 w=0.25u L=0.18u
MM46 Y2 B2 t22 t22 N_18 w=0.25u L=0.18u
MM47 t22 A2 VSS VSS N_18 w=0.25u L=0.18u

MM51 t23 VSS VDD VDD P_18 w=0.25u L=0.18u
MM52 t23 Y2 VSS VSS N_18 w=0.25u L=0.18u
MM53 t23 C2 VSS VSS N_18 w=0.25u L=0.18u
MM54 S2 t23 VSS VSS N_18 w=0.25u L=0.18u
MM55 S2 VSS VDD VDD P_18 w=0.25u L=0.18u
MM56 S2 Y2 t24 t24 N_18 w=0.25u L=0.18u
MM57 t24 C2 VSS VSS N_18 w=0.25u L=0.18u

MM121 Y2B Y2 VDD VDD P_18 w=0.25u L=0.18u
MM122 Y2B Y2 VSS VSS N_18 w=0.25u L=0.18u

MM123 C3B VSS VDD VDD P_18 w=0.25u L=0.18u
MM124 C3B Y2 k5 k5 N_18 w=0.25u L=0.18u
MM125 C3B Y2B k6 k6 N_18 w=0.25u L=0.18u
MM126 k5 C2 VSS VSS N_18 w=0.25u L=0.18u
MM127 k6 A2 VSS VSS N_18 w=0.25u L=0.18u

MM60 A3B A3 VDD VDD P_18 w=0.25u L=0.18u
MM70 A3B A3 VSS VSS N_18 w=0.25u L=0.18u

MM61 t31 VSS VDD VDD P_18 w=0.25u L=0.18u
MM62 t31 A3B VSS VSS N_18 w=0.25u L=0.18u
MM63 t31 B3 VSS VSS N_18 w=0.25u L=0.18u
MM64 Y3 t31 VSS VSS N_18 w=0.25u L=0.18u
MM65 Y3 VSS VDD VDD P_18 w=0.25u L=0.18u
MM66 Y3 B3 t32 t32 N_18 w=0.25u L=0.18u
MM67 t32 A3B VSS VSS N_18 w=0.25u L=0.18u

MM71 t33 VSS VDD VDD P_18 w=0.25u L=0.18u
MM72 t33 Y3 VSS VSS N_18 w=0.25u L=0.18u
MM73 t33 C3B VSS VSS N_18 w=0.25u L=0.18u
MM74 S3 t33 VSS VSS N_18 w=0.25u L=0.18u
MM75 S3 VSS VDD VDD P_18 w=0.25u L=0.18u
MM76 S3 Y3 t34 t34 N_18 w=0.25u L=0.18u
MM77 t34 C3B VSS VSS N_18 w=0.25u L=0.18u

MM131 Y3B Y3 VDD VDD P_18 w=0.25u L=0.18u
MM132 Y3B Y3 VSS VSS N_18 w=0.25u L=0.18u

MM133 C4 VSS VDD VDD P_18 w=0.25u L=0.18u
MM134 C4 Y3B k7 k7 N_18 w=0.25u L=0.18u
MM135 C4 Y3 k8 k8 N_18 w=0.25u L=0.18u
MM136 k7 C3B VSS VSS N_18 w=0.25u L=0.18u
MM137 k8 A3B VSS VSS N_18 w=0.25u L=0.18u




.option post
.temp 25
.op
.tran 50p 2560n

VA3 A3 VSS pwl(0ns 0V 1279.9ns 0V 1280ns Vtop 2559.9ns Vtop 2560ns 0V)
VA2 A2 VSS pwl(0ns 0V 639.9ns 0V 640ns Vtop 1279.9ns Vtop 1280ns 0V 1919.9ns 0V 1920ns Vtop 2559.9ns Vtop 2560ns 0V)

VA1 A1 VSS pwl(0ns 0V 319.9ns 0V 320ns Vtop 639.9ns Vtop 640ns 0V 959.9ns 0V 960ns Vtop 1279.9ns Vtop 1280ns 0V 1599.9ns 0V 1600ns Vtop 1919.9ns Vtop 1920ns 0V 2239.9ns 0V 2240ns Vtop 2559.9ns Vtop 2560ns 0V)

VA0 A0 VSS pwl(0ns 0V 159.9ns 0V 160ns Vtop 319.9ns Vtop 320ns 0V 479.9ns 0V 480ns Vtop 639.9ns Vtop 640ns 0V 799.9ns 0V 800ns Vtop 959.9ns Vtop 960ns 0V 1119.9ns 0V 1120ns Vtop 1279.9ns Vtop 1280ns 0V 1439.9ns 0V 1440ns Vtop 1599.9ns Vtop 1600ns 0V 1759.9ns 0V 1760ns Vtop 1919.9ns Vtop 1920ns 0V 2079.9ns 0V 2080ns Vtop 2239.9ns Vtop 2240ns 0V 2399.9ns 0V 2400ns Vtop 2559.9ns Vtop 2560ns 0V)


VB3 B3 VSS pwl(0ns 0V 79.9ns 0V 80ns Vtop 159.9ns Vtop 160ns 0V 239.9ns 0V 240ns Vtop 319.9ns Vtop 320ns 0V 399.9ns 0V 400ns Vtop 479.9ns Vtop 480ns 0V 559.9ns 0V 560ns Vtop 639.9ns Vtop 640ns 0V 719.9ns 0V 720ns Vtop 799.9ns Vtop 800ns 0V 879.9ns 0V 880ns Vtop 959.9ns Vtop 960ns 0V 1039.9ns 0V 1040ns Vtop 1119.9ns Vtop 1120ns 0V 1199.9ns 0V 1200ns Vtop 1279.9ns Vtop 1280ns 0V 1359.9ns 0V 1360ns Vtop 1439.9ns Vtop 1440ns 0V 1519.9ns 0V 1520ns Vtop 1599.9ns Vtop 1600ns 0V 1679.9ns 0V 1680ns Vtop 1759.9ns Vtop 1760ns 0V 1839.9ns 0V 1840ns Vtop 1919.9ns Vtop 1920ns 0V 1999.9ns 0V 2000ns Vtop 2079.9ns Vtop 2080ns 0V 2159.9ns 0V 2160ns Vtop 2239.9ns Vtop 2240ns 0V 2319.9ns 0V 2320ns Vtop 2399.9ns Vtop 2400ns 0V 2479.9ns 0V 2480ns Vtop 2559.9ns Vtop 2560ns 0V)

VB2 B2 VSS pwl(0ns 0V 39.9ns 0V 40ns Vtop 79.9ns Vtop 80ns 0V 119.9ns 0V 120ns Vtop 159.9ns Vtop 160ns 0V 199.9ns 0V 200ns Vtop 239.9ns Vtop 240ns 0V 279.9ns 0V 280ns Vtop 319.9ns Vtop 320ns 0V 359.9ns 0V 360ns Vtop 399.9ns Vtop 400ns 0V 439.9ns 0V 440ns Vtop 479.9ns Vtop 480ns 0V 519.9ns 0V 520ns Vtop 559.9ns Vtop 560ns 0V 599.9ns 0V 600ns Vtop 639.9ns Vtop 640ns 0V 679.9ns 0V 680ns Vtop 719.9ns Vtop 720ns 0V 759.9ns 0V 760ns Vtop 799.9ns Vtop 800ns 0V 839.9ns 0V 840ns Vtop 879.9ns Vtop 880ns 0V 919.9ns 0V 920ns Vtop 959.9ns Vtop 960ns 0V 999.9ns 0V 1000ns Vtop 1039.9ns Vtop 1040ns 0V 1079.9ns 0V 1080ns Vtop 1119.9ns Vtop 1120ns 0V 1159.9ns 0V 1160ns Vtop 1199.9ns Vtop 1200ns 0V 1239.9ns 0V 1240ns Vtop 1279.9ns Vtop 1280ns 0V 1319.9ns 0V 1320ns Vtop 1359.9ns Vtop 1360ns 0V 1399.9ns 0V 1400ns Vtop 1439.9ns Vtop 1440ns 0V 1479.9ns 0V 1480ns Vtop 1519.9ns Vtop 1520ns 0V 1559.9ns 0V 1560ns Vtop 1599.9ns Vtop 1600ns 0V 1639.9ns 0V 1640ns Vtop 1679.9ns Vtop 1680ns 0V 1719.9ns 0V 1720ns Vtop 1759.9ns Vtop 1760ns 0V 1799.9ns 0V 1800ns Vtop 1839.9ns Vtop 1840ns 0V 1879.9ns 0V 1880ns Vtop 1919.9ns Vtop 1920ns 0V 1959.9ns 0V 1960ns Vtop 1999.9ns Vtop 2000ns 0V 2039.9ns 0V 2040ns Vtop 2079.9ns Vtop 2080ns 0V 2119.9ns 0V 2120ns Vtop 2159.9ns Vtop 2160ns 0V 2199.9ns 0V 2200ns Vtop 2239.9ns Vtop 2240ns 0V 2279.9ns 0V 2280ns Vtop 2319.9ns Vtop 2320ns 0V 2359.9ns 0V 2360ns Vtop 2399.9ns Vtop 2400ns 0V 2439.9ns 0V 2440ns Vtop 2479.9ns Vtop 2480ns 0V 2519.9ns 0V 2520ns Vtop 2559.9ns Vtop 2560ns 0V)

VB1 B1 VSS pwl(0ns 0V 19.9ns 0V 20ns Vtop 39.9ns Vtop 40ns 0V 59.9ns 0V 60ns Vtop 79.9ns Vtop 80ns 0V 99.9ns 0V 100ns Vtop 119.9ns Vtop 120ns 0V 139.9ns 0V 140ns Vtop 159.9ns Vtop 160ns 0V 179.9ns 0V 180ns Vtop 199.9ns Vtop 200ns 0V 219.9ns 0V 220ns Vtop 239.9ns Vtop 240ns 0V 259.9ns 0V 260ns Vtop 279.9ns Vtop 280ns 0V 299.9ns 0V 300ns Vtop 319.9ns Vtop 320ns 0V 339.9ns 0V 340ns Vtop 359.9ns Vtop 360ns 0V 379.9ns 0V 380ns Vtop 399.9ns Vtop 400ns 0V 419.9ns 0V 420ns Vtop 439.9ns Vtop 440ns 0V 459.9ns 0V 460ns Vtop 479.9ns Vtop 480ns 0V 499.9ns 0V 500ns Vtop 519.9ns Vtop 520ns 0V 539.9ns 0V 540ns Vtop 559.9ns Vtop 560ns 0V 579.9ns 0V 580ns Vtop 599.9ns Vtop 600ns 0V 619.9ns 0V 620ns Vtop 639.9ns Vtop 640ns 0V 659.9ns 0V 660ns Vtop 679.9ns Vtop 680ns 0V 699.9ns 0V 700ns Vtop 719.9ns Vtop 720ns 0V 739.9ns 0V 740ns Vtop 759.9ns Vtop 760ns 0V 779.9ns 0V 780ns Vtop 799.9ns Vtop 800ns 0V 819.9ns 0V 820ns Vtop 839.9ns Vtop 840ns 0V 859.9ns 0V 860ns Vtop 879.9ns Vtop 880ns 0V 899.9ns 0V 900ns Vtop 919.9ns Vtop 920ns 0V 939.9ns 0V 940ns Vtop 959.9ns Vtop 960ns 0V 979.9ns 0V 980ns Vtop 999.9ns Vtop 1000ns 0V 1019.9ns 0V 1020ns Vtop 1039.9ns Vtop 1040ns 0V 1059.9ns 0V 1060ns Vtop 1079.9ns Vtop 1080ns 0V 1099.9ns 0V 1100ns Vtop 1119.9ns Vtop 1120ns 0V 1139.9ns 0V 1140ns Vtop 1159.9ns Vtop 1160ns 0V 1179.9ns 0V 1180ns Vtop 1199.9ns Vtop 1200ns 0V 1219.9ns 0V 1220ns Vtop 1239.9ns Vtop 1240ns 0V 1259.9ns 0V 1260ns Vtop 1279.9ns Vtop 1280ns 0V 1299.9ns 0V 1300ns Vtop 1319.9ns Vtop 1320ns 0V 1339.9ns 0V 1340ns Vtop 1359.9ns Vtop 1360ns 0V 1379.9ns 0V 1380ns Vtop 1399.9ns Vtop 1400ns 0V 1419.9ns 0V 1420ns Vtop 1439.9ns Vtop 1440ns 0V 1459.9ns 0V 1460ns Vtop 1479.9ns Vtop 1480ns 0V 1499.9ns 0V 1500ns Vtop 1519.9ns Vtop 1520ns 0V 1539.9ns 0V 1540ns Vtop 1559.9ns Vtop 1560ns 0V 1579.9ns 0V 1580ns Vtop 1599.9ns Vtop 1600ns 0V 1619.9ns 0V 1620ns Vtop 1639.9ns Vtop 1640ns 0V 1659.9ns 0V 1660ns Vtop 1679.9ns Vtop 1680ns 0V 1699.9ns 0V 1700ns Vtop 1719.9ns Vtop 1720ns 0V 1739.9ns 0V 1740ns Vtop 1759.9ns Vtop 1760ns 0V 1779.9ns 0V 1780ns Vtop 1799.9ns Vtop 1800ns 0V 1819.9ns 0V 1820ns Vtop 1839.9ns Vtop 1840ns 0V 1859.9ns 0V 1860ns Vtop 1879.9ns Vtop 1880ns 0V 1899.9ns 0V 1900ns Vtop 1919.9ns Vtop 1920ns 0V 1939.9ns 0V 1940ns Vtop 1959.9ns Vtop 1960ns 0V 1979.9ns 0V 1980ns Vtop 1999.9ns Vtop 2000ns 0V 2019.9ns 0V 2020ns Vtop 2039.9ns Vtop 2040ns 0V 2059.9ns 0V 2060ns Vtop 2079.9ns Vtop 2080ns 0V 2099.9ns 0V 2100ns Vtop 2119.9ns Vtop 2120ns 0V 2139.9ns 0V 2140ns Vtop 2159.9ns Vtop 2160ns 0V 2179.9ns 0V 2180ns Vtop 2199.9ns Vtop 2200ns 0V 2219.9ns 0V 2220ns Vtop 2239.9ns Vtop 2240ns 0V 2259.9ns 0V 2260ns Vtop 2279.9ns Vtop 2280ns 0V 2299.9ns 0V 2300ns Vtop 2319.9ns Vtop 2320ns 0V 2339.9ns 0V 2340ns Vtop 2359.9ns Vtop 2360ns 0V 2379.9ns 0V 2380ns Vtop 2399.9ns Vtop 2400ns 0V 2419.9ns 0V 2420ns Vtop 2439.9ns Vtop 2440ns 0V 2459.9ns 0V 2460ns Vtop 2479.9ns Vtop 2480ns 0V 2499.9ns 0V 2500ns Vtop 2519.9ns Vtop 2520ns 0V 2539.9ns 0V 2540ns Vtop 2559.9ns Vtop 2560ns 0V)

VB0 B0 VSS pwl(0ns 0V 9.9ns 0V 10ns Vtop 19.9ns Vtop 20ns 0V 29.9ns 0V 30ns Vtop 39.9ns Vtop 40ns 0V 49.9ns 0V 50ns Vtop 59.9ns Vtop 60ns 0V 69.9ns 0V 70ns Vtop 79.9ns Vtop 80ns 0V 89.9ns 0V 90ns Vtop 99.9ns Vtop 100ns 0V 109.9ns 0V 110ns Vtop 119.9ns Vtop 120ns 0V 129.9ns 0V 130ns Vtop 139.9ns Vtop 140ns 0V 149.9ns 0V 150ns Vtop 159.9ns Vtop 160ns 0V 169.9ns 0V 170ns Vtop 179.9ns Vtop 180ns 0V 189.9ns 0V 190ns Vtop 199.9ns Vtop 200ns 0V 209.9ns 0V 210ns Vtop 219.9ns Vtop 220ns 0V 229.9ns 0V 230ns Vtop 239.9ns Vtop 240ns 0V 249.9ns 0V 250ns Vtop 259.9ns Vtop 260ns 0V 269.9ns 0V 270ns Vtop 279.9ns Vtop 280ns 0V 289.9ns 0V 290ns Vtop 299.9ns Vtop 300ns 0V 309.9ns 0V 310ns Vtop 319.9ns Vtop 320ns 0V 329.9ns 0V 330ns Vtop 339.9ns Vtop 340ns 0V 349.9ns 0V 350ns Vtop 359.9ns Vtop 360ns 0V 369.9ns 0V 370ns Vtop 379.9ns Vtop 380ns 0V 389.9ns 0V 390ns Vtop 399.9ns Vtop 400ns 0V 409.9ns 0V 410ns Vtop 419.9ns Vtop 420ns 0V 429.9ns 0V 430ns Vtop 439.9ns Vtop 440ns 0V 449.9ns 0V 450ns Vtop 459.9ns Vtop 460ns 0V 469.9ns 0V 470ns Vtop 479.9ns Vtop 480ns 0V 489.9ns 0V 490ns Vtop 499.9ns Vtop 500ns 0V 509.9ns 0V 510ns Vtop 519.9ns Vtop 520ns 0V 529.9ns 0V 530ns Vtop 539.9ns Vtop 540ns 0V 549.9ns 0V 550ns Vtop 559.9ns Vtop 560ns 0V 569.9ns 0V 570ns Vtop 579.9ns Vtop 580ns 0V 589.9ns 0V 590ns Vtop 599.9ns Vtop 600ns 0V 609.9ns 0V 610ns Vtop 619.9ns Vtop 620ns 0V 629.9ns 0V 630ns Vtop 639.9ns Vtop 640ns 0V 649.9ns 0V 650ns Vtop 659.9ns Vtop 660ns 0V 669.9ns 0V 670ns Vtop 679.9ns Vtop 680ns 0V 689.9ns 0V 690ns Vtop 699.9ns Vtop 700ns 0V 709.9ns 0V 710ns Vtop 719.9ns Vtop 720ns 0V 729.9ns 0V 730ns Vtop 739.9ns Vtop 740ns 0V 749.9ns 0V 750ns Vtop 759.9ns Vtop 760ns 0V 769.9ns 0V 770ns Vtop 779.9ns Vtop 780ns 0V 789.9ns 0V 790ns Vtop 799.9ns Vtop 800ns 0V 809.9ns 0V 810ns Vtop 819.9ns Vtop 820ns 0V 829.9ns 0V 830ns Vtop 839.9ns Vtop 840ns 0V 849.9ns 0V 850ns Vtop 859.9ns Vtop 860ns 0V 869.9ns 0V 870ns Vtop 879.9ns Vtop 880ns 0V 889.9ns 0V 890ns Vtop 899.9ns Vtop 900ns 0V 909.9ns 0V 910ns Vtop 919.9ns Vtop 920ns 0V 929.9ns 0V 930ns Vtop 939.9ns Vtop 940ns 0V 949.9ns 0V 950ns Vtop 959.9ns Vtop 960ns 0V 969.9ns 0V 970ns Vtop 979.9ns Vtop 980ns 0V 989.9ns 0V 990ns Vtop 999.9ns Vtop 1000ns 0V 1009.9ns 0V 1010ns Vtop 1019.9ns Vtop 1020ns 0V 1029.9ns 0V 1030ns Vtop 1039.9ns Vtop 1040ns 0V 1049.9ns 0V 1050ns Vtop 1059.9ns Vtop 1060ns 0V 1069.9ns 0V 1070ns Vtop 1079.9ns Vtop 1080ns 0V 1089.9ns 0V 1090ns Vtop 1099.9ns Vtop 1100ns 0V 1109.9ns 0V 1110ns Vtop 1119.9ns Vtop 1120ns 0V 1129.9ns 0V 1130ns Vtop 1139.9ns Vtop 1140ns 0V 1149.9ns 0V 1150ns Vtop 1159.9ns Vtop 1160ns 0V 1169.9ns 0V 1170ns Vtop 1179.9ns Vtop 1180ns 0V 1189.9ns 0V 1190ns Vtop 1199.9ns Vtop 1200ns 0V 1209.9ns 0V 1210ns Vtop 1219.9ns Vtop 1220ns 0V 1229.9ns 0V 1230ns Vtop 1239.9ns Vtop 1240ns 0V 1249.9ns 0V 1250ns Vtop 1259.9ns Vtop 1260ns 0V 1269.9ns 0V 1270ns Vtop 1279.9ns Vtop 1280ns 0V 1289.9ns 0V 1290ns Vtop 1299.9ns Vtop 1300ns 0V 1309.9ns 0V 1310ns Vtop 1319.9ns Vtop 1320ns 0V 1329.9ns 0V 1330ns Vtop 1339.9ns Vtop 1340ns 0V 1349.9ns 0V 1350ns Vtop 1359.9ns Vtop 1360ns 0V 1369.9ns 0V 1370ns Vtop 1379.9ns Vtop 1380ns 0V 1389.9ns 0V 1390ns Vtop 1399.9ns Vtop 1400ns 0V 1409.9ns 0V 1410ns Vtop 1419.9ns Vtop 1420ns 0V 1429.9ns 0V 1430ns Vtop 1439.9ns Vtop 1440ns 0V 1449.9ns 0V 1450ns Vtop 1459.9ns Vtop 1460ns 0V 1469.9ns 0V 1470ns Vtop 1479.9ns Vtop 1480ns 0V 1489.9ns 0V 1490ns Vtop 1499.9ns Vtop 1500ns 0V 1509.9ns 0V 1510ns Vtop 1519.9ns Vtop 1520ns 0V 1529.9ns 0V 1530ns Vtop 1539.9ns Vtop 1540ns 0V 1549.9ns 0V 1550ns Vtop 1559.9ns Vtop 1560ns 0V 1569.9ns 0V 1570ns Vtop 1579.9ns Vtop 1580ns 0V 1589.9ns 0V 1590ns Vtop 1599.9ns Vtop 1600ns 0V 1609.9ns 0V 1610ns Vtop 1619.9ns Vtop 1620ns 0V 1629.9ns 0V 1630ns Vtop 1639.9ns Vtop 1640ns 0V 1649.9ns 0V 1650ns Vtop 1659.9ns Vtop 1660ns 0V 1669.9ns 0V 1670ns Vtop 1679.9ns Vtop 1680ns 0V 1689.9ns 0V 1690ns Vtop 1699.9ns Vtop 1700ns 0V 1709.9ns 0V 1710ns Vtop 1719.9ns Vtop 1720ns 0V 1729.9ns 0V 1730ns Vtop 1739.9ns Vtop 1740ns 0V 1749.9ns 0V 1750ns Vtop 1759.9ns Vtop 1760ns 0V 1769.9ns 0V 1770ns Vtop 1779.9ns Vtop 1780ns 0V 1789.9ns 0V 1790ns Vtop 1799.9ns Vtop 1800ns 0V 1809.9ns 0V 1810ns Vtop 1819.9ns Vtop 1820ns 0V 1829.9ns 0V 1830ns Vtop 1839.9ns Vtop 1840ns 0V 1849.9ns 0V 1850ns Vtop 1859.9ns Vtop 1860ns 0V 1869.9ns 0V 1870ns Vtop 1879.9ns Vtop 1880ns 0V 1889.9ns 0V 1890ns Vtop 1899.9ns Vtop 1900ns 0V 1909.9ns 0V 1910ns Vtop 1919.9ns Vtop 1920ns 0V 1929.9ns 0V 1930ns Vtop 1939.9ns Vtop 1940ns 0V 1949.9ns 0V 1950ns Vtop 1959.9ns Vtop 1960ns 0V 1969.9ns 0V 1970ns Vtop 1979.9ns Vtop 1980ns 0V 1989.9ns 0V 1990ns Vtop 1999.9ns Vtop 2000ns 0V 2009.9ns 0V 2010ns Vtop 2019.9ns Vtop 2020ns 0V 2029.9ns 0V 2030ns Vtop 2039.9ns Vtop 2040ns 0V 2049.9ns 0V 2050ns Vtop 2059.9ns Vtop 2060ns 0V 2069.9ns 0V 2070ns Vtop 2079.9ns Vtop 2080ns 0V 2089.9ns 0V 2090ns Vtop 2099.9ns Vtop 2100ns 0V 2109.9ns 0V 2110ns Vtop 2119.9ns Vtop 2120ns 0V 2129.9ns 0V 2130ns Vtop 2139.9ns Vtop 2140ns 0V 2149.9ns 0V 2150ns Vtop 2159.9ns Vtop 2160ns 0V 2169.9ns 0V 2170ns Vtop 2179.9ns Vtop 2180ns 0V 2189.9ns 0V 2190ns Vtop 2199.9ns Vtop 2200ns 0V 2209.9ns 0V 2210ns Vtop 2219.9ns Vtop 2220ns 0V 2229.9ns 0V 2230ns Vtop 2239.9ns Vtop 2240ns 0V 2249.9ns 0V 2250ns Vtop 2259.9ns Vtop 2260ns 0V 2269.9ns 0V 2270ns Vtop 2279.9ns Vtop 2280ns 0V 2289.9ns 0V 2290ns Vtop 2299.9ns Vtop 2300ns 0V 2309.9ns 0V 2310ns Vtop 2319.9ns Vtop 2320ns 0V 2329.9ns 0V 2330ns Vtop 2339.9ns Vtop 2340ns 0V 2349.9ns 0V 2350ns Vtop 2359.9ns Vtop 2360ns 0V 2369.9ns 0V 2370ns Vtop 2379.9ns Vtop 2380ns 0V 2389.9ns 0V 2390ns Vtop 2399.9ns Vtop 2400ns 0V 2409.9ns 0V 2410ns Vtop 2419.9ns Vtop 2420ns 0V 2429.9ns 0V 2430ns Vtop 2439.9ns Vtop 2440ns 0V 2449.9ns 0V 2450ns Vtop 2459.9ns Vtop 2460ns 0V 2469.9ns 0V 2470ns Vtop 2479.9ns Vtop 2480ns 0V 2489.9ns 0V 2490ns Vtop 2499.9ns Vtop 2500ns 0V 2509.9ns 0V 2510ns Vtop 2519.9ns Vtop 2520ns 0V 2529.9ns 0V 2530ns Vtop 2539.9ns Vtop 2540ns 0V 2549.9ns 0V 2550ns Vtop 2559.9ns Vtop 2560ns 0V)

VC0 C0 VSS pwl(0ns 0V 4.9ns 0V 5ns Vtop 9.9ns Vtop 10ns 0V 14.9ns 0V 15ns Vtop 19.9ns Vtop 20ns 0V 24.9ns 0V 25ns Vtop 29.9ns Vtop 30ns 0V 34.9ns 0V 35ns Vtop 39.9ns Vtop 40ns 0V 44.9ns 0V 45ns Vtop 49.9ns Vtop 50ns 0V 54.9ns 0V 55ns Vtop 59.9ns Vtop 60ns 0V 64.9ns 0V 65ns Vtop 69.9ns Vtop 70ns 0V 74.9ns 0V 75ns Vtop 79.9ns Vtop 80ns 0V 84.9ns 0V 85ns Vtop 89.9ns Vtop 90ns 0V 94.9ns 0V 95ns Vtop 99.9ns Vtop 100ns 0V 104.9ns 0V 105ns Vtop 109.9ns Vtop 110ns 0V 114.9ns 0V 115ns Vtop 119.9ns Vtop 120ns 0V 124.9ns 0V 125ns Vtop 129.9ns Vtop 130ns 0V 134.9ns 0V 135ns Vtop 139.9ns Vtop 140ns 0V 144.9ns 0V 145ns Vtop 149.9ns Vtop 150ns 0V 154.9ns 0V 155ns Vtop 159.9ns Vtop 160ns 0V 164.9ns 0V 165ns Vtop 169.9ns Vtop 170ns 0V 174.9ns 0V 175ns Vtop 179.9ns Vtop 180ns 0V 184.9ns 0V 185ns Vtop 189.9ns Vtop 190ns 0V 194.9ns 0V 195ns Vtop 199.9ns Vtop 200ns 0V 204.9ns 0V 205ns Vtop 209.9ns Vtop 210ns 0V 214.9ns 0V 215ns Vtop 219.9ns Vtop 220ns 0V 224.9ns 0V 225ns Vtop 229.9ns Vtop 230ns 0V 234.9ns 0V 235ns Vtop 239.9ns Vtop 240ns 0V 244.9ns 0V 245ns Vtop 249.9ns Vtop 250ns 0V 254.9ns 0V 255ns Vtop 259.9ns Vtop 260ns 0V 264.9ns 0V 265ns Vtop 269.9ns Vtop 270ns 0V 274.9ns 0V 275ns Vtop 279.9ns Vtop 280ns 0V 284.9ns 0V 285ns Vtop 289.9ns Vtop 290ns 0V 294.9ns 0V 295ns Vtop 299.9ns Vtop 300ns 0V 304.9ns 0V 305ns Vtop 309.9ns Vtop 310ns 0V 314.9ns 0V 315ns Vtop 319.9ns Vtop 320ns 0V 324.9ns 0V 325ns Vtop 329.9ns Vtop 330ns 0V 334.9ns 0V 335ns Vtop 339.9ns Vtop 340ns 0V 344.9ns 0V 345ns Vtop 349.9ns Vtop 350ns 0V 354.9ns 0V 355ns Vtop 359.9ns Vtop 360ns 0V 364.9ns 0V 365ns Vtop 369.9ns Vtop 370ns 0V 374.9ns 0V 375ns Vtop 379.9ns Vtop 380ns 0V 384.9ns 0V 385ns Vtop 389.9ns Vtop 390ns 0V 394.9ns 0V 395ns Vtop 399.9ns Vtop 400ns 0V 404.9ns 0V 405ns Vtop 409.9ns Vtop 410ns 0V 414.9ns 0V 415ns Vtop 419.9ns Vtop 420ns 0V 424.9ns 0V 425ns Vtop 429.9ns Vtop 430ns 0V 434.9ns 0V 435ns Vtop 439.9ns Vtop 440ns 0V 444.9ns 0V 445ns Vtop 449.9ns Vtop 450ns 0V 454.9ns 0V 455ns Vtop 459.9ns Vtop 460ns 0V 464.9ns 0V 465ns Vtop 469.9ns Vtop 470ns 0V 474.9ns 0V 475ns Vtop 479.9ns Vtop 480ns 0V 484.9ns 0V 485ns Vtop 489.9ns Vtop 490ns 0V 494.9ns 0V 495ns Vtop 499.9ns Vtop 500ns 0V 504.9ns 0V 505ns Vtop 509.9ns Vtop 510ns 0V 514.9ns 0V 515ns Vtop 519.9ns Vtop 520ns 0V 524.9ns 0V 525ns Vtop 529.9ns Vtop 530ns 0V 534.9ns 0V 535ns Vtop 539.9ns Vtop 540ns 0V 544.9ns 0V 545ns Vtop 549.9ns Vtop 550ns 0V 554.9ns 0V 555ns Vtop 559.9ns Vtop 560ns 0V 564.9ns 0V 565ns Vtop 569.9ns Vtop 570ns 0V 574.9ns 0V 575ns Vtop 579.9ns Vtop 580ns 0V 584.9ns 0V 585ns Vtop 589.9ns Vtop 590ns 0V 594.9ns 0V 595ns Vtop 599.9ns Vtop 600ns 0V 604.9ns 0V 605ns Vtop 609.9ns Vtop 610ns 0V 614.9ns 0V 615ns Vtop 619.9ns Vtop 620ns 0V 624.9ns 0V 625ns Vtop 629.9ns Vtop 630ns 0V 634.9ns 0V 635ns Vtop 639.9ns Vtop 640ns 0V 644.9ns 0V 645ns Vtop 649.9ns Vtop 650ns 0V 654.9ns 0V 655ns Vtop 659.9ns Vtop 660ns 0V 664.9ns 0V 665ns Vtop 669.9ns Vtop 670ns 0V 674.9ns 0V 675ns Vtop 679.9ns Vtop 680ns 0V 684.9ns 0V 685ns Vtop 689.9ns Vtop 690ns 0V 694.9ns 0V 695ns Vtop 699.9ns Vtop 700ns 0V 704.9ns 0V 705ns Vtop 709.9ns Vtop 710ns 0V 714.9ns 0V 715ns Vtop 719.9ns Vtop 720ns 0V 724.9ns 0V 725ns Vtop 729.9ns Vtop 730ns 0V 734.9ns 0V 735ns Vtop 739.9ns Vtop 740ns 0V 744.9ns 0V 745ns Vtop 749.9ns Vtop 750ns 0V 754.9ns 0V 755ns Vtop 759.9ns Vtop 760ns 0V 764.9ns 0V 765ns Vtop 769.9ns Vtop 770ns 0V 774.9ns 0V 775ns Vtop 779.9ns Vtop 780ns 0V 784.9ns 0V 785ns Vtop 789.9ns Vtop 790ns 0V 794.9ns 0V 795ns Vtop 799.9ns Vtop 800ns 0V 804.9ns 0V 805ns Vtop 809.9ns Vtop 810ns 0V 814.9ns 0V 815ns Vtop 819.9ns Vtop 820ns 0V 824.9ns 0V 825ns Vtop 829.9ns Vtop 830ns 0V 834.9ns 0V 835ns Vtop 839.9ns Vtop 840ns 0V 844.9ns 0V 845ns Vtop 849.9ns Vtop 850ns 0V 854.9ns 0V 855ns Vtop 859.9ns Vtop 860ns 0V 864.9ns 0V 865ns Vtop 869.9ns Vtop 870ns 0V 874.9ns 0V 875ns Vtop 879.9ns Vtop 880ns 0V 884.9ns 0V 885ns Vtop 889.9ns Vtop 890ns 0V 894.9ns 0V 895ns Vtop 899.9ns Vtop 900ns 0V 904.9ns 0V 905ns Vtop 909.9ns Vtop 910ns 0V 914.9ns 0V 915ns Vtop 919.9ns Vtop 920ns 0V 924.9ns 0V 925ns Vtop 929.9ns Vtop 930ns 0V 934.9ns 0V 935ns Vtop 939.9ns Vtop 940ns 0V 944.9ns 0V 945ns Vtop 949.9ns Vtop 950ns 0V 954.9ns 0V 955ns Vtop 959.9ns Vtop 960ns 0V 964.9ns 0V 965ns Vtop 969.9ns Vtop 970ns 0V 974.9ns 0V 975ns Vtop 979.9ns Vtop 980ns 0V 984.9ns 0V 985ns Vtop 989.9ns Vtop 990ns 0V 994.9ns 0V 995ns Vtop 999.9ns Vtop 1000ns 0V 1004.9ns 0V 1005ns Vtop 1009.9ns Vtop 1010ns 0V 1014.9ns 0V 1015ns Vtop 1019.9ns Vtop 1020ns 0V 1024.9ns 0V 1025ns Vtop 1029.9ns Vtop 1030ns 0V 1034.9ns 0V 1035ns Vtop 1039.9ns Vtop 1040ns 0V 1044.9ns 0V 1045ns Vtop 1049.9ns Vtop 1050ns 0V 1054.9ns 0V 1055ns Vtop 1059.9ns Vtop 1060ns 0V 1064.9ns 0V 1065ns Vtop 1069.9ns Vtop 1070ns 0V 1074.9ns 0V 1075ns Vtop 1079.9ns Vtop 1080ns 0V 1084.9ns 0V 1085ns Vtop 1089.9ns Vtop 1090ns 0V 1094.9ns 0V 1095ns Vtop 1099.9ns Vtop 1100ns 0V 1104.9ns 0V 1105ns Vtop 1109.9ns Vtop 1110ns 0V 1114.9ns 0V 1115ns Vtop 1119.9ns Vtop 1120ns 0V 1124.9ns 0V 1125ns Vtop 1129.9ns Vtop 1130ns 0V 1134.9ns 0V 1135ns Vtop 1139.9ns Vtop 1140ns 0V 1144.9ns 0V 1145ns Vtop 1149.9ns Vtop 1150ns 0V 1154.9ns 0V 1155ns Vtop 1159.9ns Vtop 1160ns 0V 1164.9ns 0V 1165ns Vtop 1169.9ns Vtop 1170ns 0V 1174.9ns 0V 1175ns Vtop 1179.9ns Vtop 1180ns 0V 1184.9ns 0V 1185ns Vtop 1189.9ns Vtop 1190ns 0V 1194.9ns 0V 1195ns Vtop 1199.9ns Vtop 1200ns 0V 1204.9ns 0V 1205ns Vtop 1209.9ns Vtop 1210ns 0V 1214.9ns 0V 1215ns Vtop 1219.9ns Vtop 1220ns 0V 1224.9ns 0V 1225ns Vtop 1229.9ns Vtop 1230ns 0V 1234.9ns 0V 1235ns Vtop 1239.9ns Vtop 1240ns 0V 1244.9ns 0V 1245ns Vtop 1249.9ns Vtop 1250ns 0V 1254.9ns 0V 1255ns Vtop 1259.9ns Vtop 1260ns 0V 1264.9ns 0V 1265ns Vtop 1269.9ns Vtop 1270ns 0V 1274.9ns 0V 1275ns Vtop 1279.9ns Vtop 1280ns 0V 1284.9ns 0V 1285ns Vtop 1289.9ns Vtop 1290ns 0V 1294.9ns 0V 1295ns Vtop 1299.9ns Vtop 1300ns 0V 1304.9ns 0V 1305ns Vtop 1309.9ns Vtop 1310ns 0V 1314.9ns 0V 1315ns Vtop 1319.9ns Vtop 1320ns 0V 1324.9ns 0V 1325ns Vtop 1329.9ns Vtop 1330ns 0V 1334.9ns 0V 1335ns Vtop 1339.9ns Vtop 1340ns 0V 1344.9ns 0V 1345ns Vtop 1349.9ns Vtop 1350ns 0V 1354.9ns 0V 1355ns Vtop 1359.9ns Vtop 1360ns 0V 1364.9ns 0V 1365ns Vtop 1369.9ns Vtop 1370ns 0V 1374.9ns 0V 1375ns Vtop 1379.9ns Vtop 1380ns 0V 1384.9ns 0V 1385ns Vtop 1389.9ns Vtop 1390ns 0V 1394.9ns 0V 1395ns Vtop 1399.9ns Vtop 1400ns 0V 1404.9ns 0V 1405ns Vtop 1409.9ns Vtop 1410ns 0V 1414.9ns 0V 1415ns Vtop 1419.9ns Vtop 1420ns 0V 1424.9ns 0V 1425ns Vtop 1429.9ns Vtop 1430ns 0V 1434.9ns 0V 1435ns Vtop 1439.9ns Vtop 1440ns 0V 1444.9ns 0V 1445ns Vtop 1449.9ns Vtop 1450ns 0V 1454.9ns 0V 1455ns Vtop 1459.9ns Vtop 1460ns 0V 1464.9ns 0V 1465ns Vtop 1469.9ns Vtop 1470ns 0V 1474.9ns 0V 1475ns Vtop 1479.9ns Vtop 1480ns 0V 1484.9ns 0V 1485ns Vtop 1489.9ns Vtop 1490ns 0V 1494.9ns 0V 1495ns Vtop 1499.9ns Vtop 1500ns 0V 1504.9ns 0V 1505ns Vtop 1509.9ns Vtop 1510ns 0V 1514.9ns 0V 1515ns Vtop 1519.9ns Vtop 1520ns 0V 1524.9ns 0V 1525ns Vtop 1529.9ns Vtop 1530ns 0V 1534.9ns 0V 1535ns Vtop 1539.9ns Vtop 1540ns 0V 1544.9ns 0V 1545ns Vtop 1549.9ns Vtop 1550ns 0V 1554.9ns 0V 1555ns Vtop 1559.9ns Vtop 1560ns 0V 1564.9ns 0V 1565ns Vtop 1569.9ns Vtop 1570ns 0V 1574.9ns 0V 1575ns Vtop 1579.9ns Vtop 1580ns 0V 1584.9ns 0V 1585ns Vtop 1589.9ns Vtop 1590ns 0V 1594.9ns 0V 1595ns Vtop 1599.9ns Vtop 1600ns 0V 1604.9ns 0V 1605ns Vtop 1609.9ns Vtop 1610ns 0V 1614.9ns 0V 1615ns Vtop 1619.9ns Vtop 1620ns 0V 1624.9ns 0V 1625ns Vtop 1629.9ns Vtop 1630ns 0V 1634.9ns 0V 1635ns Vtop 1639.9ns Vtop 1640ns 0V 1644.9ns 0V 1645ns Vtop 1649.9ns Vtop 1650ns 0V 1654.9ns 0V 1655ns Vtop 1659.9ns Vtop 1660ns 0V 1664.9ns 0V 1665ns Vtop 1669.9ns Vtop 1670ns 0V 1674.9ns 0V 1675ns Vtop 1679.9ns Vtop 1680ns 0V 1684.9ns 0V 1685ns Vtop 1689.9ns Vtop 1690ns 0V 1694.9ns 0V 1695ns Vtop 1699.9ns Vtop 1700ns 0V 1704.9ns 0V 1705ns Vtop 1709.9ns Vtop 1710ns 0V 1714.9ns 0V 1715ns Vtop 1719.9ns Vtop 1720ns 0V 1724.9ns 0V 1725ns Vtop 1729.9ns Vtop 1730ns 0V 1734.9ns 0V 1735ns Vtop 1739.9ns Vtop 1740ns 0V 1744.9ns 0V 1745ns Vtop 1749.9ns Vtop 1750ns 0V 1754.9ns 0V 1755ns Vtop 1759.9ns Vtop 1760ns 0V 1764.9ns 0V 1765ns Vtop 1769.9ns Vtop 1770ns 0V 1774.9ns 0V 1775ns Vtop 1779.9ns Vtop 1780ns 0V 1784.9ns 0V 1785ns Vtop 1789.9ns Vtop 1790ns 0V 1794.9ns 0V 1795ns Vtop 1799.9ns Vtop 1800ns 0V 1804.9ns 0V 1805ns Vtop 1809.9ns Vtop 1810ns 0V 1814.9ns 0V 1815ns Vtop 1819.9ns Vtop 1820ns 0V 1824.9ns 0V 1825ns Vtop 1829.9ns Vtop 1830ns 0V 1834.9ns 0V 1835ns Vtop 1839.9ns Vtop 1840ns 0V 1844.9ns 0V 1845ns Vtop 1849.9ns Vtop 1850ns 0V 1854.9ns 0V 1855ns Vtop 1859.9ns Vtop 1860ns 0V 1864.9ns 0V 1865ns Vtop 1869.9ns Vtop 1870ns 0V 1874.9ns 0V 1875ns Vtop 1879.9ns Vtop 1880ns 0V 1884.9ns 0V 1885ns Vtop 1889.9ns Vtop 1890ns 0V 1894.9ns 0V 1895ns Vtop 1899.9ns Vtop 1900ns 0V 1904.9ns 0V 1905ns Vtop 1909.9ns Vtop 1910ns 0V 1914.9ns 0V 1915ns Vtop 1919.9ns Vtop 1920ns 0V 1924.9ns 0V 1925ns Vtop 1929.9ns Vtop 1930ns 0V 1934.9ns 0V 1935ns Vtop 1939.9ns Vtop 1940ns 0V 1944.9ns 0V 1945ns Vtop 1949.9ns Vtop 1950ns 0V 1954.9ns 0V 1955ns Vtop 1959.9ns Vtop 1960ns 0V 1964.9ns 0V 1965ns Vtop 1969.9ns Vtop 1970ns 0V 1974.9ns 0V 1975ns Vtop 1979.9ns Vtop 1980ns 0V 1984.9ns 0V 1985ns Vtop 1989.9ns Vtop 1990ns 0V 1994.9ns 0V 1995ns Vtop 1999.9ns Vtop 2000ns 0V 2004.9ns 0V 2005ns Vtop 2009.9ns Vtop 2010ns 0V 2014.9ns 0V 2015ns Vtop 2019.9ns Vtop 2020ns 0V 2024.9ns 0V 2025ns Vtop 2029.9ns Vtop 2030ns 0V 2034.9ns 0V 2035ns Vtop 2039.9ns Vtop 2040ns 0V 2044.9ns 0V 2045ns Vtop 2049.9ns Vtop 2050ns 0V 2054.9ns 0V 2055ns Vtop 2059.9ns Vtop 2060ns 0V 2064.9ns 0V 2065ns Vtop 2069.9ns Vtop 2070ns 0V 2074.9ns 0V 2075ns Vtop 2079.9ns Vtop 2080ns 0V 2084.9ns 0V 2085ns Vtop 2089.9ns Vtop 2090ns 0V 2094.9ns 0V 2095ns Vtop 2099.9ns Vtop 2100ns 0V 2104.9ns 0V 2105ns Vtop 2109.9ns Vtop 2110ns 0V 2114.9ns 0V 2115ns Vtop 2119.9ns Vtop 2120ns 0V 2124.9ns 0V 2125ns Vtop 2129.9ns Vtop 2130ns 0V 2134.9ns 0V 2135ns Vtop 2139.9ns Vtop 2140ns 0V 2144.9ns 0V 2145ns Vtop 2149.9ns Vtop 2150ns 0V 2154.9ns 0V 2155ns Vtop 2159.9ns Vtop 2160ns 0V 2164.9ns 0V 2165ns Vtop 2169.9ns Vtop 2170ns 0V 2174.9ns 0V 2175ns Vtop 2179.9ns Vtop 2180ns 0V 2184.9ns 0V 2185ns Vtop 2189.9ns Vtop 2190ns 0V 2194.9ns 0V 2195ns Vtop 2199.9ns Vtop 2200ns 0V 2204.9ns 0V 2205ns Vtop 2209.9ns Vtop 2210ns 0V 2214.9ns 0V 2215ns Vtop 2219.9ns Vtop 2220ns 0V 2224.9ns 0V 2225ns Vtop 2229.9ns Vtop 2230ns 0V 2234.9ns 0V 2235ns Vtop 2239.9ns Vtop 2240ns 0V 2244.9ns 0V 2245ns Vtop 2249.9ns Vtop 2250ns 0V 2254.9ns 0V 2255ns Vtop 2259.9ns Vtop 2260ns 0V 2264.9ns 0V 2265ns Vtop 2269.9ns Vtop 2270ns 0V 2274.9ns 0V 2275ns Vtop 2279.9ns Vtop 2280ns 0V 2284.9ns 0V 2285ns Vtop 2289.9ns Vtop 2290ns 0V 2294.9ns 0V 2295ns Vtop 2299.9ns Vtop 2300ns 0V 2304.9ns 0V 2305ns Vtop 2309.9ns Vtop 2310ns 0V 2314.9ns 0V 2315ns Vtop 2319.9ns Vtop 2320ns 0V 2324.9ns 0V 2325ns Vtop 2329.9ns Vtop 2330ns 0V 2334.9ns 0V 2335ns Vtop 2339.9ns Vtop 2340ns 0V 2344.9ns 0V 2345ns Vtop 2349.9ns Vtop 2350ns 0V 2354.9ns 0V 2355ns Vtop 2359.9ns Vtop 2360ns 0V 2364.9ns 0V 2365ns Vtop 2369.9ns Vtop 2370ns 0V 2374.9ns 0V 2375ns Vtop 2379.9ns Vtop 2380ns 0V 2384.9ns 0V 2385ns Vtop 2389.9ns Vtop 2390ns 0V 2394.9ns 0V 2395ns Vtop 2399.9ns Vtop 2400ns 0V 2404.9ns 0V 2405ns Vtop 2409.9ns Vtop 2410ns 0V 2414.9ns 0V 2415ns Vtop 2419.9ns Vtop 2420ns 0V 2424.9ns 0V 2425ns Vtop 2429.9ns Vtop 2430ns 0V 2434.9ns 0V 2435ns Vtop 2439.9ns Vtop 2440ns 0V 2444.9ns 0V 2445ns Vtop 2449.9ns Vtop 2450ns 0V 2454.9ns 0V 2455ns Vtop 2459.9ns Vtop 2460ns 0V 2464.9ns 0V 2465ns Vtop 2469.9ns Vtop 2470ns 0V 2474.9ns 0V 2475ns Vtop 2479.9ns Vtop 2480ns 0V 2484.9ns 0V 2485ns Vtop 2489.9ns Vtop 2490ns 0V 2494.9ns 0V 2495ns Vtop 2499.9ns Vtop 2500ns 0V 2504.9ns 0V 2505ns Vtop 2509.9ns Vtop 2510ns 0V 2514.9ns 0V 2515ns Vtop 2519.9ns Vtop 2520ns 0V 2524.9ns 0V 2525ns Vtop 2529.9ns Vtop 2530ns 0V 2534.9ns 0V 2535ns Vtop 2539.9ns Vtop 2540ns 0V 2544.9ns 0V 2545ns Vtop 2549.9ns Vtop 2550ns 0V 2554.9ns 0V 2555ns Vtop 2559.9ns Vtop 
2560ns 0V)


.meas tran pwr avg power

.end
