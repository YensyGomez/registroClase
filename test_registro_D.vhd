--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:42:57 09/05/2016
-- Design Name:   
-- Module Name:   /home/yengomez/registro1/test_registro_D.vhd
-- Project Name:  registro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registro_D
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_registro_D IS
END test_registro_D;
 
ARCHITECTURE behavior OF test_registro_D IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro_D
    PORT(
         reset : IN  std_logic;
         senal : IN  std_logic;
         clk : IN  std_logic;
         salida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal senal : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal salida : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro_D PORT MAP (
          reset => reset,
          senal => senal,
          clk => clk,
          salida => salida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset <= '1';
		wait for 100 ns;
		reset <= '0';
      senal <= '1';
      wait for 100 ns;	
		senal <= '0';
      wait for 100 ns;
		senal<= '1';
      wait;
   end process;

END;
