from vunit import VUnit
import subprocess

# Create VUnit instance by parsing command line arguments
vu = VUnit.from_argv(compile_builtins=False)

# Optionally add VUnit's builtin HDL utilities for checking, logging, communication...
# See http://vunit.github.io/hdl_libraries.html.
vu.add_vhdl_builtins()
# or
# vu.add_verilog_builtins()

# Create library 'lib'
lib = vu.add_library("lib")

# Add all files ending in .vhd in current working directory to library
lib.add_source_files("../src/**/*.vhd")

lib.add_source_files("src/**/*.vhd")

subprocess.run(["cargo", "b", "--release"], cwd="rust_ffi_to_vhdl")

lib.set_sim_option("ghdl.elab_flags", ["-Wl,rust_ffi_to_vhdl/target/release/librust_ffi_to_vhdl.so"])
# Run vunit function
vu.main()

