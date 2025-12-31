const std = @import("std");

pub fn main() void {
    var rumah: i32 = 10;

    // Cetak nilai awal
    std.debug.print("Nomor rumah awal: {d}\n", .{rumah});

    // Ambil alamatnya (pointer)
    const alamat = &rumah;

    // Ubah nilainya lewat pointer
    alamat.* = 100;

    // Cetak hasil setelah diubah
    std.debug.print("Nomor rumah baru: {d}\n", .{rumah});

    // Cetak alamat memori
    std.debug.print("Lokasi alamat memori: {*}\n", .{alamat});
}
