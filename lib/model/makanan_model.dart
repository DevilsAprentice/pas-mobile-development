class MakananModel {
  final int id;
  final String namaMakanan;
  final int harga;
  final String deskripsi;
  final String gambar;

  MakananModel({
    required this.id,
    required this.namaMakanan,
    required this.harga,
    required this.deskripsi,
    required this.gambar,
  });

  static List<MakananModel> getDummyData() {
    return [
      MakananModel(
        id: 1,
        namaMakanan: 'Nasi Goreng Spesial',
        harga: 25000,
        deskripsi:
            'Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.',
        gambar:
            'https://images.unsplash.com/photo-1603133872878-684f208fb84b?auto=format&fit=crop&w=600&q=80',
      ),
      MakananModel(
        id: 2,
        namaMakanan: 'Ayam Bakar Madu',
        harga: 30000,
        deskripsi:
            'Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.',
        gambar:
            'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?auto=format&fit=crop&w=600&q=80',
      ),
      MakananModel(
        id: 3,
        namaMakanan: 'Sate Ayam Madura',
        harga: 28000,
        deskripsi:
            '10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.',
        gambar:
            'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=600&q=80',
      ),
      MakananModel(
        id: 4,
        namaMakanan: 'Mie Ayam Bakso',
        harga: 20000,
        deskripsi:
            'Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.',
        gambar:
            'https://images.unsplash.com/photo-1612927601601-6638404737ce?auto=format&fit=crop&w=600&q=80',
      ),
      MakananModel(
        id: 5,
        namaMakanan: 'Es Teh Manis Jumbo',
        harga: 8000,
        deskripsi:
            'Minuman teh melati segar dengan gula asli dan es batu kristal.',
        gambar:
            'https://images.unsplash.com/photo-1556679343-c7306c1976bc?auto=format&fit=crop&w=600&q=80',
      ),
    ];
  }
}
