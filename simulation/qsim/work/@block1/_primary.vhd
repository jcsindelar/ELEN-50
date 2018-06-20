library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        pin_name4       : out    vl_logic;
        SEL             : in     vl_logic;
        IN2             : in     vl_logic;
        IN1             : in     vl_logic
    );
end Block1;
