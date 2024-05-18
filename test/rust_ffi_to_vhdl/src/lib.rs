use std::{io::Write, net::TcpListener, os::fd::AsRawFd};
use once_cell::sync::Lazy;

static TCP: Lazy<TcpListener> = Lazy::new(|| TcpListener::bind("127.0.0.1:3000").unwrap());

#[no_mangle]
pub unsafe extern "C" fn what_have_i_done() {
    println!("What have I done!");
}

#[no_mangle]
pub unsafe extern "C" fn respond_tcp_request() {
    let Ok((mut stream, _addr)) = TCP.accept() else {return};
    let _ = stream.write_all(b"HTTP/1.1 200 OK\r\nContent-Length: 60\r\n\r\n<!DOCTYPE html>
<html>
<body>

<h1>uwu</h1>

</body>
</html>");
}