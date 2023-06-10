library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity shift_right_arithmetic is
	
   port (
		i_RS1   : in std_logic_vector(31 downto 0);
      i_RS2_lower5   : in std_logic_vector(4 downto 0);
      o_SRA  : out std_logic_vector(31 downto 0)
   );
end entity shift_right_arithmetic;

architecture arch_SRA of shift_right_arithmetic is
	
begin
	--shift_right(signed, integer);
	o_SRA <= std_logic_vector( shift_right( signed(i_RS1), conv_integer(i_RS2_lower5) ) );
	 
	 
end arch_SRA ; -- arch_SRA