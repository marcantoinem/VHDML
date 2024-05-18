# VHDML - VHDL HTML Static Server
Have you ever dreamed of doing VHDL in the web space? ~~No, because you're sane~~ If you responded yes to this question this is the project for you. This is a static web server to serve a purely hardware based static website server at the theoretical max speed of your ethernet cable. This is still a big work in progress, I need to implement a lot of things to even make what would take 10 lines with an operating system in software works.

## Motivation
If done right this static server could outperform any software solution to serve static website at a fraction of the energy cost and compute cost.

## Roadmap
- [ ] Implement Ethernet
- [ ] Implement IP over Ethernet
- [ ] Implement UDP
- [ ] Implement Quic over UDP to be able to have a better synchronization
- [ ] Implement TLS 1.3 (This will be painful)
- [ ] Implement HTTP over TLS over Quic over UDP over Ethernet to get with an HTTP3 request
- [ ] Implement a software to transmit the website to the FPGA (In Rust OFC)
- [ ] Optionnaly implement IPV6
- [ ] ~~Create a javascript framework using VHDL Component~~ *Pls don't do  that*

## FAQ
### What FPGA will be supported?
Anything that can have an ethernet connector connected over some pin. I want to avoid the usage of IP core to make the design as portable as possible.

### Is it overkill?
Yes.

### But why?
Yes.