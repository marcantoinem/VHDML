# VHDML - VHDL HTML Static Server
Have you ever dreamed of doing VHDL in the web space? ~~No, because you're sane~~ If you responded yes to this question this is the project for you. This is a static web server to serve a purely hardware based static website server at the theoretical max speed of your ethernet cable. This is still a big work in progress, I need to implement a lot of things to even make what would take 10 lines with an operating system in software works.

## Motivation
If done right this static server could outperform any software solution to serve static website at a fraction of the energy cost and compute cost.

## Roadmap
- [ ] Implement QUIC over UDP
- [ ] Implement TLS 1.3 (This will be painful)
- [ ] Implement HTTP over TLS over QUIC to get with an HTTP3 request
- [ ] Implement UDP
- [ ] Implement a software to transmit the website to the FPGA (In Rust OFC)
- [ ] ~~Create a javascript framework using VHDL Component~~ *Pls don't do  that*

## Things that could be done with IP core
- [ ] Implement Ethernet (ieee 802.3)
- [ ] Implement IP over Ethernet 
- [ ] Optionnaly implement IPV6

## FAQ
### What FPGA will be supported?
For the moment I want to take a top-down approach by starting with implementing QUIC in hardware, but my goal is to support anything that can have an ethernet connector connected over some pin. I want to avoid the usage of IP core to make the design as portable as possible.

### Is it overkill?
Yes.

### But why?
Yes.