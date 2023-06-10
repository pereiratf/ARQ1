library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity shift_left_arithmetic is 
	
   port (
		i_RS1   : in std_logic_vector(31 downto 0);
      i_RS2_lower5   : in std_logic_vector(4 downto 0);
      o_SLA  : out std_logic_vector(31 downto 0)
   );
end entity shift_left_arithmetic;

architecture arch_SLA of shift_left_arithmetic is
	
begin
	--shift_left(signed, integer);
	o_SLA <= std_logic_vector( shift_left( signed(i_RS1), conv_integer(i_RS2_lower5) ) );
	 
	 
end arch_SLA ; -- arch_SLA