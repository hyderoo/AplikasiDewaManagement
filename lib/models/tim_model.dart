// Model Data
class TimModel {
  final String id;
  final String name;
  final String position;
  final String photo;
  final String description;
  final String phone;
  final String email;

  TimModel({
    required this.id,
    required this.name,
    required this.position,
    required this.photo,
    required this.description,
    required this.phone,
    required this.email,
  });
}

// Data tim
List<TimModel> timData = [
  TimModel(
    id: '1',
    name: 'Putri Amanda',
    position: 'Wedding Organizer Manager',
    photo: 'assets/images/tim1.jpg',
    description:
        'Berpengalaman selama 8 tahun dalam mengelola event pernikahan dari berbagai skala. Spesialis dalam koordinasi dan manajemen tim untuk memastikan acara berjalan lancar dan sesuai harapan klien.',
    phone: '+62812345678',
    email: 'putri@dewamanagement.com',
  ),
  TimModel(
    id: '2',
    name: 'Bima Pratama',
    position: 'Lead Decorator & Design',
    photo: 'assets/images/tim2.jpg',
    description:
        'Memiliki latar belakang desain interior dengan spesialisasi dekorasi pernikahan. Menggabungkan elemen modern dan tradisional untuk menciptakan dekorasi yang unik dan sesuai karakter pasangan.',
    phone: '+62823456789',
    email: 'bima@dewamanagement.com',
  ),
  TimModel(
    id: '3',
    name: 'Dian Lestari',
    position: 'Client Relations & Marketing',
    photo: 'assets/images/tim3.jpg',
    description:
        'Profesional komunikasi yang berdedikasi untuk memahami kebutuhan klien dan menterjemahkannya dalam paket pernikahan yang sesuai. Memastikan klien mendapatkan pengalaman terbaik dari awal konsultasi hingga hari H.',
    phone: '+62834567890',
    email: 'dian@dewamanagement.com',
  ),
  TimModel(
    id: '4',
    name: 'Raihan Adi',
    position: 'Photography & Videography Director',
    photo: 'assets/images/tim4.jpg',
    description:
        'Fotografer berpengalaman dengan latar belakang seni visual. Memiliki mata yang tajam untuk momen-momen berharga dan kemampuan untuk menceritakan kisah cinta pasangan melalui gambar dan video.',
    phone: '+62845678901',
    email: 'raihan@dewamanagement.com',
  ),
  TimModel(
    id: '5',
    name: 'Maya Sari',
    position: 'Catering & F&B Coordinator',
    photo: 'assets/images/tim5.jpg',
    description:
        'Bekerja sama dengan berbagai vendor catering terbaik untuk menyediakan pilihan kuliner yang lezat dan presentasi yang mengesankan. Berpengalaman dalam mengelola kebutuhan F&B untuk acara skala besar.',
    phone: '+62856789012',
    email: 'maya@dewamanagement.com',
  ),
  TimModel(
    id: '6',
    name: 'Arief Wibowo',
    position: 'Technical & Sound Coordinator',
    photo: 'assets/images/tim6.jpg',
    description:
        'Ahli dalam sistem sound, lighting, dan technical production untuk memastikan aspek teknis pernikahan berjalan sempurna. Mengkoordinasikan kebutuhan teknis venue dan entertainment.',
    phone: '+62867890123',
    email: 'arief@dewamanagement.com',
  ),
];
