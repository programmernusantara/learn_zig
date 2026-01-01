const std = @import("std");

pub fn main() !void {
    const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
    std.debug.print("Array: {any}\n", .{a});
    std.debug.print("Array length: {}\n", .{a.len});
    std.debug.print("Array string: {s}\n", .{a});
}
