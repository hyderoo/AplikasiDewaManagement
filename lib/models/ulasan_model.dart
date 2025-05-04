class UlasanModel {
  final String id;
  final String userName;
  final String userAvatar;
  final double rating;
  final String review;
  final String date;

  UlasanModel({
    required this.id,
    required this.userName,
    required this.userAvatar,
    required this.rating,
    required this.review,
    required this.date,
  });
}

List<UlasanModel> ulasanData = [
  UlasanModel(
    id: '1',
    userName: 'Maya Putri',
    userAvatar: 'assets/images/avatar1.jpg',
    rating: 4.8,
    review:
        'Pelayanan sangat memuaskan! Tim Dewa Management sangat profesional dan detail dalam menangani pernikahan kami. Semua berjalan sesuai keinginan kami.Pelayanan sangat memuaskan! Tim Dewa Management sangat profesional dan detail dalam menangani pernikahan kami. Semua berjalan sesuai keinginan kami.',
    date: '15 April 2025',
  ),
  UlasanModel(
    id: '2',
    userName: 'Budi Santoso',
    userAvatar: 'assets/images/avatar2.jpg',
    rating: 5.0,
    review:
        'Perfect! Dari awal persiapan sampai hari-H semua lancar. Dekorasi sangat indah, makanan enak, dan MC sangat menghibur. Value for money!',
    date: '02 Maret 2025',
  ),
  UlasanModel(
    id: '3',
    userName: 'Dina Arviana',
    userAvatar: 'assets/images/avatar3.jpg',
    rating: 4.5,
    review:
        'Terima kasih Dewa Management sudah membantu mewujudkan wedding impian kami. Semua tamu memuji dekorasi dan pelayanannya.',
    date: '21 Januari 2025',
  ),
];
