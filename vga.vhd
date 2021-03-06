library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY VGA IS
PORT(
CLOCK_50: IN STD_LOGIC;
VGA_HS,VGA_VS : OUT STD_LOGIC;
VGA_R,VGA_G,VGA_B : OUT STD_LOGIC
);
END VGA;



ARCHITECTURE MAIN OF VGA IS
SIGNAL VGACLK,RESET : STD_LOGIC :='0';
---------------------------------------
  
-----------------------------------------
COMPONENT SYNC IS
PORT(
CLK: IN STD_LOGIC;
HSYNC, VSYNC: OUT STD_LOGIC;
R,G,B : OUT STD_LOGIC
);
END COMPONENT SYNC;
BEGIN
C1: SYNC PORT MAP(CLOCK_50,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B);

END MAIN;