use std::net::TcpListener;
use once_cell::sync::Lazy;

static mut tcp_port: Lazy<TcpListener> = Lazy::new(|| TcpListener::bind("127.0.0.1:3000").unwrap());

#[no_mangle]
pub unsafe extern "C" fn printhelloworld() {
    println!("What have I done!");
}

#[no_mangle]
pub unsafe extern "C" fn respond_tcp_request() {

}