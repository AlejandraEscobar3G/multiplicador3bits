library verilog;
use verilog.vl_types.all;
entity multiplicador is
    port(
        Sc1             : inout  vl_logic;
        Sc2             : inout  vl_logic;
        A               : in     vl_logic_vector(2 downto 0);
        B               : in     vl_logic_vector(2 downto 0);
        R               : inout  vl_logic_vector(8 downto 0);
        C               : inout  vl_logic_vector(5 downto 1);
        S               : inout  vl_logic_vector(5 downto 0);
        DD              : inout  vl_logic_vector(6 downto 0);
        DU              : inout  vl_logic_vector(6 downto 0)
    );
end multiplicador;
