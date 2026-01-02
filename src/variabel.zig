const std = @import("std");

pub fn main() !void {
    // Nilai tidak bisa di rubah
    const immutable: i32 = 10;

    // Nilai bisa berubah
    var mutable: u32 = 20;

    // Merubah nilai
    mutable += 10;

    // Tampilkan hasil
    std.debug.print("immutable: {}, mutable: {}", .{ immutable, mutable });
}
