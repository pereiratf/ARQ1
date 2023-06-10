library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity shift_right_logic is
	
   port (
		i_RS1   : in std_logic_vector(31 downto 0);
      i_RS2_lower5   : in std_logic_vector(4 downto 0);
      o_SRL  : out std_logic_vector(31 downto 0)
   );
end entity shift_right_logic;

architecture arch_SRL of shift_right_logic is
	
begin
	--shift_right(unsigned, integer);
	o_SRL <= std_logic_vector( shift_right( unsigned(i_RS1), conv_integer(i_RS2_lower5) ) );
	 
	 
end arch_SRL ; -- arch_SRL