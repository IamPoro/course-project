.subckt CIM_cell Input Output WL BL BLB q qb
    X01 WL BL BLB q qb SRAM_6T
    X02 qb Input Output NOR_2
.ends

.subckt SRAM_6T WL BL BLB q qb
    MP1 q   qb  VDD VDD pmos_sram m=1
    MP2 qb  q   VDD VDD pmos_sram m=1
    MN1 q   qb  GND GND nmos_sram m=1
    MN2 qb  q   GND GND nmos_sram m=1
    MN3 BL  WL  q   GND nmos_sram m=1
    MN4 qb  WL  BLB GND nmos_sram m=1
.ends

.subckt NOR_2 A B Y
    MP1 N1  A   VDD VDD pmos_lvt m=1
    MP2 Y   B   N1  VDD pmos_lvt m=1
    MN1 Y   A   GND GND nmos_lvt m=1
    MN2 Y   B   GND GND nmos_lvt m=1
.ends

.subckt Buffer in out
    X_INV1 in   in_b INV
    X_INV2 in_b out  INV
.ends

.subckt INV in out
    Mp  out  in  VDD  VDD  pmos_lvt  m=1
    Mn  out  in  GND  GND  nmos_lvt  m=1
.ends

