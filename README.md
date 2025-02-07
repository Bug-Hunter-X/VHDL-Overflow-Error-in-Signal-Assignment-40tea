# VHDL Overflow Bug

This repository demonstrates a common error in VHDL code involving arithmetic operations and potential integer overflows.  The `bad_process.vhdl` file contains a process where adding 1 to a signal can lead to an overflow if the signal already holds a maximum value.

The solution in `bad_process_fixed.vhdl` addresses this by explicitly handling the potential overflow using saturation arithmetic or other appropriate techniques.