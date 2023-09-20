const std = @import("std");
const ArrayList = std.ArrayList;
fn calculateCheckDigit(number: []u8, digits: usize) !ArrayList(u8) {
    const allocator = std.heap.page_allocator;
    var list = ArrayList(u8).init(allocator);

    // try list.appendSlice(number);
    var digitList = ArrayList(i64).init(allocator);
    defer digitList.deinit();
    for (number) |digit| {
        var sucka = [1]u8{digit};
        var bimbimbanban2 = try std.fmt.parseInt(i64, &sucka, 10);

        try digitList.append(bimbimbanban2);
    }
    var counter: i32 = @intCast(digits);
    while (counter > 0) {
        var total: i64 = 0;
        var weight: i64 = 2;

        var index = digitList.items.len;
        while (index > 0) {
            var bimbimbanban = digitList.items[index - 1];
            total += bimbimbanban * weight;
            weight += 1;
            index -= 1;
        }

        const checkDigit: i64 = @intCast(11 - (@mod(total, 11)));
        const x = try std.fmt.allocPrint(allocator, "{d}", .{checkDigit});
        try list.appendSlice(x);

        try digitList.append(checkDigit);

        counter -= 1;
    }

    return list;
}
pub fn main() !void {
    var cpf = "426240878".*;
    const digits = 2;

    const cpfCheckDigits = try calculateCheckDigit(&cpf, digits);
    const allocator = std.heap.page_allocator;
    const firstDigit = cpfCheckDigits.items[0];
    const lastDigit = cpfCheckDigits.items[1];
    const formattedCpf = try std.fmt.allocPrint(allocator, "{s}-{c}{c}", .{ cpf, firstDigit, lastDigit });
    defer allocator.free(formattedCpf);

    std.debug.print("{s}\n", .{formattedCpf});
}
