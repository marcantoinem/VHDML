package udp is
    procedure printhelloworld;
    attribute foreign of printhelloworld : procedure is "VHPIDIRECT printhelloworld";  
end package udp;

package body udp is 
    procedure printhelloworld is begin
    end procedure;
end package body;