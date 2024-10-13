const std = @import("std");

extern fn aarch_main(argc: usize, argv: [*][*:0]const u8) void;

pub fn main() void {
    aarch_main(std.os.argv.len, std.os.argv.ptr);
}
