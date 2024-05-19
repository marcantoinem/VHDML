package udp is
    procedure respond_tcp_request;
    attribute foreign of respond_tcp_request : procedure is "VHPIDIRECT respond_tcp_request";  
end package udp;

package body udp is 
    procedure respond_tcp_request is begin
    end procedure;
end package body;