library verilog;
use verilog.vl_types.all;
entity Block1_vlg_sample_tst is
    port(
        IN1             : in     vl_logic;
        IN2             : in     vl_logic;
        SEL             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Block1_vlg_sample_tst;
