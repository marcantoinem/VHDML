package udp is
    procedure what_have_i_done;
    attribute foreign of what_have_i_done : procedure is "VHPIDIRECT what_have_i_done";  

    procedure respond_tcp_request;
    attribute foreign of respond_tcp_request : procedure is "VHPIDIRECT respond_tcp_request";  
end package udp;

package body udp is 
    procedure what_have_i_done is begin
    end procedure;
    procedure respond_tcp_request is begin
    end procedure;
end package body;