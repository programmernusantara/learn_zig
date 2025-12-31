//Perkakas
const std = @import("std");

// Simple
const print = std.debug.print;

// Public main func
pub fn main() void {

    // Hello, World
    print("Hello, world!\n", .{});

    // Integers
    const one_plus_one: i32 = 1 + 1;

    // Display result
    print("1 + 1 = {}\n", .{one_plus_one});

}
