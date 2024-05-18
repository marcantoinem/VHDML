library lib;
    use lib.udp.all;

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library std;
    use std.textio.all;

library vunit_lib;
    context vunit_lib.vunit_context;

entity vhdml_socket_reader is
    generic (runner_cfg : string);
end;

architecture behavorial of vhdml_socket_reader is

begin
    main: process
        variable result : integer := 0;
    begin
        test_runner_setup(runner, runner_cfg);
        respond_tcp_request;
        wait for 100 ns;
        test_runner_cleanup(runner);
    end process;
end behavorial;