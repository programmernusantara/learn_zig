const std = @import("std");

pub fn main() !void {
    // 1. Inisialisasi Manajemen Memori (GPA)
    // Digunakan untuk melacak alokasi dan mendeteksi kebocoran memori (memory leak).
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};

    // 2. Pastikan semua sisa memori dibersihkan saat program berhenti
    // Simbol '_' digunakan karena kita mengabaikan status kembalian dari deinit.
    defer _ = gpa.deinit();

    // 3. Ambil interface 'allocator' sebagai alat kerja utama
    const allocator = gpa.allocator();

    // 4. Alokasi Memori Dinamis
    // Memesan 5 slot (u8). 'try' akan menangkap error jika RAM penuh.
    const list = try allocator.alloc(u8, 5);

    // 5. Bebaskan kembali memori tepat sebelum fungsi main berakhir
    // Ini hukumnya wajib di Zig agar RAM tidak "tersandera".
    defer allocator.free(list);

    // 6. Manipulasi Data
    // Mengisi slot memori (index dimulai dari 0).
    list[0] = 'H';
    list[1] = 'A';
    list[2] = 'L';
    list[3] = 'O';

    // 7. Output ke Terminal
    // {s} memformat array karakter (slice) menjadi teks yang bisa dibaca.
    std.debug.print("Hasil: {s}\n", .{list});
}
