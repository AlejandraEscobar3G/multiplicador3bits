library  ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity  multiplicador is
port (Sc1, Sc2 : inout std_logic;
			A : in std_logic_vector(2 downto 0);
			B : in std_logic_vector(2 downto 0);
			R : inout std_logic_vector(8 downto 0);
			C : inout std_logic_vector(5 downto 1);
			S : inout std_logic_vector(5 downto 0);
			DD,DU : inout std_logic_vector(6 downto 0)
		);
end multiplicador;

architecture ale of multiplicador is 
begin

MULTIPLICADOR:process(A,B)
begin
R(0) <= B(0) and A(0);b 
R(1) <= B(0) and A(1);
R(2) <= B(0) and A(2);
R(3) <= B(1) and A(0);
R(4) <= B(1) and A(1);
R(5) <= B(1) and A(2);
R(6) <= B(2) and A(0);
R(7) <= B(2) and A(1);
R(8) <= B(2) and A(2);
end process MULTIPLICADOR;

SUMADOR:process(R)
begin
S(0) <= R(0);

S(1) <= R(1) xor R(3);
C(1) <= R(1) and R(3);

Sc1 <= (R(2) xor R(4)) xor C(1);
C(2) <= (R(2) and R(4)) or (R(2) and C(1)) or (R(4) and C(1));

S(2) <= Sc1 xor R(6);
C(3) <= Sc1 and R(6);

Sc2 <= (R(5) xor R(7)) xor C(2);
C(4) <= (R(5) and R(7)) or (R(5) and C(2)) or (R(7) and C(2));

S(3) <= Sc2 xor C(3);
C(5) <= Sc2 and C(3);

S(4) <= (R(8) xor C(4)) xor C(5);
S(5) <= (R(8) and C(4)) or (R(8) and C(4)) or (C(4) and C(5));
end process SUMADOR;

DISPLAYDEC:process(S)
begin
case S is
when "000000" => DD <= "0000001";
when "000001" => DD <= "0000001";
when "000010" => DD <= "0000001";
when "000011" => DD <= "0000001";
when "000100" => DD <= "0000001";
when "000101" => DD <= "0000001";
when "000110" => DD <= "0000001";
when "000111" => DD <= "0000001";
when "001000" => DD <= "0000001";
when "001001" => DD <= "0000001";
when "001010" => DD <= "1001111";
when "001011" => DD <= "1001111";
when "001100" => DD <= "1001111";
when "001101" => DD <= "1001111";
when "001110" => DD <= "1001111";
when "001111" => DD <= "1001111";
when "010000" => DD <= "1001111";
when "010001" => DD <= "1001111";
when "010010" => DD <= "1001111";
when "010011" => DD <= "1001111";
when "010100" => DD <= "0010010";
when "010101" => DD <= "0010010";
when "010110" => DD <= "0010010";
when "010111" => DD <= "0010010";
when "011000" => DD <= "0010010";
when "011001" => DD <= "0010010";
when "011010" => DD <= "0010010";
when "011011" => DD <= "0010010";
when "011100" => DD <= "0010010";
when "011101" => DD <= "0010010";
when "011110" => DD <= "0000110";
when "011111" => DD <= "0000110";
when "100000" => DD <= "0000110";
when "100001" => DD <= "0000110";
when "100010" => DD <= "0000110";
when "100011" => DD <= "0000110";
when "100100" => DD <= "0000110";
when "100101" => DD <= "0000110";
when "100110" => DD <= "0000110";
when "100111" => DD <= "0000110";
when "101000" => DD <= "1001100";
when "101001" => DD <= "1001100";
when "101010" => DD <= "1001100";
when "101011" => DD <= "1001100";
when "101100" => DD <= "1001100";
when "101101" => DD <= "1001100";
when "101110" => DD <= "1001100";
when "101111" => DD <= "1001100";
when "110000" => DD <= "1001100";
when "110001" => DD <= "1001100";
when others => DD <= "0000000";
end case;
end process DISPLAYDEC;

DISPLAYUNI:process(S)
begin
case(S) is
when "000000" => DU <= "0000001";
when "000001" => DU <= "1001111";
when "000010" => DU <= "0010010";
when "000011" => DU <= "0000110";
when "000100" => DU <= "1001100";
when "000101" => DU <= "0100100";
when "000110" => DU <= "0100000";
when "000111" => DU <= "0001111";
when "001000" => DU <= "0000000";
when "001001" => DU <= "0001100";
when "001010" => DU <= "0000001";
when "001011" => DU <= "1001111";
when "001100" => DU <= "0010010";
when "001101" => DU <= "0000110";
when "001110" => DU <= "1001100";
when "001111" => DU <= "0100100";
when "010000" => DU <= "0100000";
when "010001" => DU <= "0001111";
when "010010" => DU <= "0000000";
when "010011" => DU <= "0001100";
when "010100" => DU <= "0000001";
when "010101" => DU <= "1001111";
when "010110" => DU <= "0010010";
when "010111" => DU <= "0000110";
when "011000" => DU <= "1001100";
when "011001" => DU <= "0100100";
when "011010" => DU <= "0100000";
when "011011" => DU <= "0001111";
when "011100" => DU <= "0000000";
when "011101" => DU <= "0001100";
when "011110" => DU <= "0000001";
when "011111" => DU <= "1001111";
when "100000" => DU <= "0010010";
when "100001" => DU <= "0000110";
when "100010" => DU <= "1001100";
when "100011" => DU <= "0100100";
when "100100" => DU <= "0100000";
when "100101" => DU <= "0001111";
when "100110" => DU <= "0000000";
when "100111" => DU <= "0001100";
when "101000" => DU <= "0000001";
when "101001" => DU <= "1001111";
when "101010" => DU <= "0010010";
when "101011" => DU <= "0000110";
when "101100" => DU <= "1001100";
when "101101" => DU <= "0100100";
when "101110" => DU <= "0100000";
when "101111" => DU <= "0001111";
when "110000" => DU <= "0000000";
when "110001" => DU <= "0001100";
when others => DU <= "0000000";
end case;
end process DISPLAYUNI;
end ale;