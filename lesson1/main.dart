void main() {
  // deklarasi data penjualan barang
  String productName = 'Charger HP';
  int price = 60000;
  int quantity = 5;
  int discount = 3000;

  // menghitung total harga
  int totalDiscount = discount * quantity;
  int totalPrice = (price * quantity) - totalDiscount;

  // menampilkan hasil
  print('===================================');
  print('         DETAIL PENJUALAN         ');
  print('===================================');
  print('Nama Produk     : $productName');
  print('Harga Satuan    : Rp $price');
  print('Diskon per Item : Rp $discount');
  print('Jumlah Barang   : $quantity');
  print('-----------------------------------');
  print('Total Diskon    : Rp $totalDiscount');
  print('Total Harga     : Rp $totalPrice');
  print('===================================');
}
