// Model Data
class PortofolioModel {
  final String id;
  final String title;
  final String category;
  final List<String> images;
  final String description;
  final String date;
  final String location;

  PortofolioModel({
    required this.id,
    required this.title,
    required this.category,
    required this.images,
    required this.description,
    required this.date,
    required this.location,
  });
}

// Data portofolio
List<PortofolioModel> portofolioData = [
  PortofolioModel(
    id: '1',
    title: 'Pernikahan Andi & Maya',
    category: 'Indoor',
    images: [
      'assets/images/wedding1_1.jpg',
      'assets/images/wedding1_2.jpg',
      'assets/images/wedding1_3.jpg',
    ],
    description:
        'Intimate wedding dengan tema rustic di Ballroom Hotel Mulia, Surabaya. Perpaduan dekorasi rustic dengan sentuhan modern menghadirkan nuansa hangat dan romantis.',
    date: '15 April 2025',
    location: 'Hotel Mulia Surabaya',
  ),
  PortofolioModel(
    id: '2',
    title: 'Pernikahan Budi & Sinta',
    category: 'Garden Party',
    images: [
      'assets/images/wedding2_1.jpg',
      'assets/images/wedding2_2.jpg',
    ],
    description:
        'Garden wedding dengan ornamen floral di Villa Bukit Pakar, Bandung. Konsep outdoor dengan tema garden party yang didominasi bunga-bunga segar dan hiasan natural.',
    date: '28 Februari 2025',
    location: 'Villa Bukit Pakar, Bandung',
  ),
  PortofolioModel(
    id: '3',
    title: 'Pernikahan Reza & Dina',
    category: 'Indoor',
    images: [
      'assets/images/wedding3_1.jpg',
      'assets/images/wedding3_2.jpg',
      'assets/images/wedding3_3.jpg',
    ],
    description:
        'Grand ballroom wedding dengan tema modern classic di Grand Hyatt Jakarta. Perpaduan warna gold dan putih dengan aksen crystals menciptakan suasana mewah dan elegan.',
    date: '10 Januari 2025',
    location: 'Grand Hyatt Jakarta',
  ),
  PortofolioModel(
    id: '4',
    title: 'Pernikahan Denny & Lina',
    category: 'Outdoor',
    images: [
      'assets/images/wedding4_1.jpg',
      'assets/images/wedding4_2.jpg',
    ],
    description:
        'Beach wedding dengan suasana romantis di tepi pantai Lombok. Dekorasi bertema coastal dengan sentuhan bohemian menciptakan suasana santai namun tetap elegan.',
    date: '5 Maret 2025',
    location: 'Tanjung Aan Beach, Lombok',
  ),
  PortofolioModel(
    id: '5',
    title: 'Prewedding Johan & Nisa',
    category: 'Prewedding',
    images: [
      'assets/images/prewed1_1.jpg',
      'assets/images/prewed1_2.jpg',
      'assets/images/prewed1_3.jpg',
    ],
    description:
        'Sesi foto prewedding dengan konsep urban di pusat kota Jakarta. Mengambil latar belakang gedung pencakar langit dan sudut-sudut artistik kota.',
    date: '20 Desember 2024',
    location: 'Jakarta',
  ),
];
