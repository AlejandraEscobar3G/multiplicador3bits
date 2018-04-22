library verilog;
use verilog.vl_types.all;
entity multiplicador_vlg_check_tst is
    port(
        C               : in     vl_logic_vector(5 downto 1);
        DD              : in     vl_logic_vector(6 downto 0);
        DU              : in     vl_logic_vector(6 downto 0);
        R               : in     vl_logic_vector(8 downto 0);
        S               : in     vl_logic_vector(5 downto 0);
        Sc1             : in     vl_logic;
        Sc2             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end multiplicador_vlg_check_tst;
