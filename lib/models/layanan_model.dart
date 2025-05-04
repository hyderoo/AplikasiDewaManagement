class LayananModel {
  final String id;
  final String title;
  final String image;
  final String category;
  final String priceRange;
  final List<String> features;

  LayananModel({
    required this.id,
    required this.title,
    required this.image,
    required this.category,
    required this.priceRange,
    required this.features,
  });
}

// Mock Data

List<LayananModel> layananData = [
  LayananModel(
    id: '1',
    title: 'Paket Intimate Wedding',
    category: 'Semua',
    image: 'assets/images/intimate_wedding.jpg',
    priceRange: 'Rp 25.000.000 - Rp 35.000.000',
    features: [
      'Venue untuk 100 tamu',
      'Dekorasi pelaminan',
      'Catering untuk 100 orang',
      'MC & Entertainment',
      'Dokumentasi foto & video',
      'Koordinator acara',
      'MUA untuk pengantin',
      'Busana pengantin',
    ],
  ),
  LayananModel(
    id: '2',
    title: 'Paket Medium Wedding',
    category: 'Semua',
    image: 'assets/images/medium_wedding.jpg',
    priceRange: 'Rp 45.000.000 - Rp 60.000.000',
    features: [
      'Venue untuk 300 tamu',
      'Dekorasi pelaminan premium',
      'Catering untuk 300 orang',
      'MC, Entertainment & Band',
      'Dokumentasi foto & video',
      'Makeup & Busana pengantin',
      'Koordinator acara professional',
      'Souvenir untuk 300 tamu',
      'Kartu undangan premium',
      'Mobil pengantin',
    ],
  ),
  LayananModel(
    id: '3',
    title: 'Paket Luxury Wedding',
    category: 'Semua',
    image: 'assets/images/luxury_wedding.jpg',
    priceRange: 'Rp 80.000.000 - Rp 150.000.000',
    features: [
      'Venue mewah untuk 500 tamu',
      'Dekorasi pelaminan eksklusif',
      'Catering premium untuk 500 orang',
      'MC, Entertainment & Live Music',
      'Dokumentasi foto & video cinematic',
      'Makeup & Busana pengantin high-end',
      'Wedding car & Koordinator acara',
      'Souvenir premium untuk 500 tamu',
      'Kartu undangan custom design',
      'Booth photo custom',
      'After party arrangement',
      'Honeymoon package',
    ],
  ),
  LayananModel(
    id: '4',
    title: 'Paket Dokumentasi Premium',
    category: 'Dokumentasi',
    image: 'assets/images/dokumentasi.jpg',
    priceRange: 'Rp 15.000.000 - Rp 25.000.000',
    features: [
      'Pre-wedding photoshoot',
      'Wedding day photography',
      'Wedding day videography',
      'Drone aerial shots',
      'Same day edit video',
      'Full wedding film',
      'Photo album premium',
      'Digital copies of all photos',
      'USB in custom box',
      'Online gallery for sharing',
    ],
  ),
  LayananModel(
    id: '5',
    title: 'Paket Dekorasi Eksklusif',
    category: 'Dekorasi',
    image: 'assets/images/dekorasi.jpg',
    priceRange: 'Rp 20.000.000 - Rp 40.000.000',
    features: [
      'Dekorasi pelaminan mewah',
      'Dekorasi area masuk',
      'Dekorasi area foto',
      'Fresh flowers arrangement',
      'Stage & lighting',
      'Kursi & meja tamu VIP',
      'Table setting',
      'Kotak angpao custom',
      'Karpet premium',
      'Konsultasi desain',
    ],
  ),
];
