// Model Data
class PesananModel {
  final String id;
  final String userName;
  final String paketName;
  final String status;
  final String tanggal;
  final double totalHarga;
  final String lokasi;
  final String estimasiTamu;
  final String buktiPembayaran;
  final String tanggalPembayaran;
  final List<String> layananTermasuk;

  PesananModel({
    required this.id,
    required this.userName,
    required this.paketName,
    required this.status,
    required this.tanggal,
    required this.totalHarga,
    required this.lokasi,
    required this.estimasiTamu,
    required this.layananTermasuk,
    required this.buktiPembayaran,
    required this.tanggalPembayaran,
  });
}

List<PesananModel> pesananData = [
  PesananModel(
    id: '1',
    userName: 'Andi & Maya',
    paketName: 'Paket Intimate Wedding',
    status: 'Lunas',
    tanggal: '15 April 2025',
    totalHarga: 32000000,
    layananTermasuk: [
      'Venue untuk 100 tamu',
      'Dekorasi pelaminan',
      'Catering untuk 100 orang',
      'MC & Entertainment',
      'Dokumentasi foto & video',
    ],
    lokasi: 'Grand Ballroom Hotel Mulia',
    estimasiTamu: 'Estimasi Tamu 500 Orang',
    buktiPembayaran: 'assets/images/bukti_pembayaran1.jpg',
    tanggalPembayaran: '10 Januari 2025',
  ),
  PesananModel(
    id: '2',
    userName: 'Budi & Sinta',
    paketName: 'Paket Medium Wedding',
    status: 'Menunggu Pembayaran',
    tanggal: '28 Februari 2025',
    totalHarga: 55000000,
    layananTermasuk: [
      'Venue untuk 300 tamu',
      'Dekorasi pelaminan premium',
      'Catering untuk 300 orang',
      'MC, Entertainment & Band',
      'Dokumentasi foto & video',
      'Makeup & Busana pengantin',
    ],
    lokasi: 'Grand Ballroom Hotel Mulia',
    estimasiTamu: 'Estimasi Tamu 500 Orang',
    buktiPembayaran: '',
    tanggalPembayaran: '',
  ),
  PesananModel(
    id: '3',
    userName: 'Reza & Dina',
    paketName: 'Paket Luxury Wedding',
    status: 'Lunas',
    tanggal: '10 Januari 2025',
    totalHarga: 120000000,
    lokasi: 'Grand Ballroom Hotel Mulia',
    layananTermasuk: [
      'Venue mewah untuk 500 tamu',
      'Dekorasi pelaminan eksklusif',
      'Catering premium untuk 500 orang',
      'MC, Entertainment & Live Music',
      'Dokumentasi foto & video cinematic',
      'Makeup & Busana pengantin high-end',
      'Wedding car & Koordinator acara',
    ],
    estimasiTamu: 'Estimasi Tamu 500 Orang',
    buktiPembayaran: 'assets/images/bukti_pembayaran3.jpg',
    tanggalPembayaran: '5 November 2024',
  ),
  PesananModel(
    id: '4',
    userName: 'Denny & Lina',
    paketName: 'Paket Dokumentasi Premium',
    status: 'Menunggu Pembayaran',
    tanggal: '5 Maret 2025',
    totalHarga: 18000000,
    layananTermasuk: [
      'Pre-wedding photoshoot',
      'Wedding day photography',
      'Wedding day videography',
      'Drone aerial shots',
      'Same day edit video',
    ],
    lokasi: 'Grand Ballroom Hotel Mulia',
    estimasiTamu: 'Estimasi Tamu 500 Orang',
    buktiPembayaran: '',
    tanggalPembayaran: '',
  ),
  PesananModel(
    id: '5',
    userName: 'Johan & Nisa',
    paketName: 'Paket Dekorasi Eksklusif',
    status: 'Lunas',
    tanggal: '20 Desember 2024',
    totalHarga: 25000000,
    layananTermasuk: [
      'Dekorasi pelaminan mewah',
      'Dekorasi area masuk',
      'Dekorasi area foto',
      'Fresh flowers arrangement',
      'Stage & lighting',
    ],
    lokasi: 'Grand Ballroom Hotel Mulia',
    estimasiTamu: 'Estimasi Tamu 500 Orang',
    buktiPembayaran: 'assets/images/bukti_pembayaran5.jpg',
    tanggalPembayaran: '15 Oktober 2024',
  ),
];

// Contoh Data Pesanan
final pesananLunas = PesananModel(
  id: '1',
  userName: 'Budi & Sarah',
  paketName: 'Paket Pernikahan Lengkap',
  status: 'Lunas',
  tanggal: '14 Februari 2025',
  totalHarga: 75000000,
  lokasi: 'Grand Ballroom Hotel Mulia',
  estimasiTamu: 'Estimasi Tamu 500 Orang',
  layananTermasuk: [
    'Dekorasi Lengkap',
    'Katering 500 pax',
    'Dokumentasi Full',
    'Entertainment',
  ],
  buktiPembayaran: 'assets/images/bukti_pembayaran5.jpg',
  tanggalPembayaran: '15 Oktober 2024',
);

final pesananMenunggu = PesananModel(
  id: '2',
  userName: 'Budi & Sarah',
  paketName: 'Paket Pernikahan Lengkap',
  status: 'Menunggu Pembayaran',
  tanggal: '14 Februari 2025',
  totalHarga: 75000000,
  lokasi: 'Grand Ballroom Hotel Mulia',
  estimasiTamu: 'Estimasi Tamu 500 Orang',
  layananTermasuk: [
    'Dekorasi Lengkap',
    'Katering 500 pax',
    'Dokumentasi Full',
    'Entertainment',
  ],
  buktiPembayaran: 'assets/images/bukti_pembayaran5.jpg',
  tanggalPembayaran: '15 Oktober 2024',
);
