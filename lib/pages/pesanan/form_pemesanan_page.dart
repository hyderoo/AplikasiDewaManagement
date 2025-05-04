import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class FormPemesananPage extends StatefulWidget {
  final String? paketId;
  final String? paketName;

  const FormPemesananPage({
    Key? key,
    this.paketId,
    this.paketName,
  }) : super(key: key);

  @override
  _FormPemesananPageState createState() => _FormPemesananPageState();
}

class _FormPemesananPageState extends State<FormPemesananPage> {
  // Controller untuk form input
  final _namaPriaController = TextEditingController();
  final _namaWanitaController = TextEditingController();
  final _jumlahTamuController = TextEditingController();
  final _lokasiController = TextEditingController();
  final _alamatController = TextEditingController();
  final _emailController = TextEditingController();
  final _whatsappController = TextEditingController();
  final _teleponController = TextEditingController();

  DateTime? _selectedDate;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // Mengatur status bar transparan dan warna ikon status bar putih
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
  }

  @override
  void dispose() {
    _namaPriaController.dispose();
    _namaWanitaController.dispose();
    _jumlahTamuController.dispose();
    _lokasiController.dispose();
    _alamatController.dispose();
    _emailController.dispose();
    _whatsappController.dispose();
    _teleponController.dispose();
    super.dispose();
  }

  // Membuka date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now().add(Duration(days: 60)),
      firstDate: DateTime.now().add(Duration(days: 30)),
      lastDate: DateTime.now().add(Duration(days: 365 * 2)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.pink,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.pink,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  // Format tanggal untuk ditampilkan
  String get _formattedDate {
    if (_selectedDate == null) {
      return 'Tanggal Pernikahan';
    }
    return DateFormat('dd MMMM yyyy', 'id_ID').format(_selectedDate!);
  }

  // Submit form
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Kirim data form ke API atau halaman berikutnya
      print('Form valid, lanjut ke proses berikutnya');

      // Contoh data yang dikirim
      final formData = {
        'nama_pria': _namaPriaController.text,
        'nama_wanita': _namaWanitaController.text,
        'tanggal': _selectedDate.toString(),
        'jumlah_tamu': _jumlahTamuController.text,
        'lokasi': _lokasiController.text,
        'alamat': _alamatController.text,
        'email': _emailController.text,
        'whatsapp': _whatsappController.text,
        'telepon': _teleponController.text,
        'paket_id': widget.paketId,
        'paket_name': widget.paketName,
      };

      // Navigate to next page (konfirmasi pesanan)
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('Konfirmasi Pesanan'),
              backgroundColor: Colors.pink,
            ),
            body: Center(
              child: Text('Halaman konfirmasi pesanan'),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 0,
        title: Text(
          'Form Pemesanan',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('Informasi Pasangan'),
              SizedBox(height: 12),
              _buildTextField(
                controller: _namaPriaController,
                hintText: 'Nama Pengantin Pria',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama pengantin pria wajib diisi';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              _buildTextField(
                controller: _namaWanitaController,
                hintText: 'Nama Pengantin Wanita',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama pengantin wanita wajib diisi';
                  }
                  return null;
                },
              ),
              _buildDivider(),
              _buildSectionTitle('Informasi Acara'),
              SizedBox(height: 12),
              _buildDateField(
                hintText: _formattedDate,
                onTap: () => _selectDate(context),
                validator: (value) {
                  if (_selectedDate == null) {
                    return 'Tanggal pernikahan wajib diisi';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              _buildTextField(
                controller: _jumlahTamuController,
                hintText: 'Estimasi Jumlah Tamu',
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Estimasi jumlah tamu wajib diisi';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              _buildTextField(
                controller: _lokasiController,
                hintText: 'Lokasi Acara (Nama Gedung/Tempat Acara)',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lokasi acara wajib diisi';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              _buildTextField(
                controller: _alamatController,
                hintText: 'Alamat Lengkap Lokasi',
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Alamat lengkap lokasi wajib diisi';
                  }
                  return null;
                },
              ),
              _buildDivider(),
              _buildSectionTitle('Informasi Kontak'),
              SizedBox(height: 12),
              _buildTextField(
                controller: _emailController,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email wajib diisi';
                  }
                  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return 'Masukkan email yang valid';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              _buildTextField(
                controller: _whatsappController,
                hintText: 'Nomor WhatsApp',
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nomor WhatsApp wajib diisi';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              _buildTextField(
                controller: _teleponController,
                hintText: 'Nomor Telepon Alternatif',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 32),
              _buildActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk judul setiap section
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  // Widget untuk text field umum
  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    int maxLines = 1,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey[400],
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey[300]!,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey[300]!,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.pink,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      maxLines: maxLines,
      keyboardType: keyboardType,
      validator: validator,
    );
  }

  // Widget untuk date field
  Widget _buildDateField({
    required String hintText,
    required Function() onTap,
    String? Function(String?)? validator,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AbsorbPointer(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: _selectedDate != null ? Colors.black : Colors.grey[400],
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey[300]!,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey[300]!,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.pink,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            suffixIcon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey,
            ),
          ),
          validator: validator,
        ),
      ),
    );
  }

  // Widget untuk divider
  Widget _buildDivider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      height: 1,
      color: Colors.grey[200],
    );
  }

  // Widget untuk tombol aksi
  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () => Navigator.pop(context),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.grey[300]!),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
            ),
            child: Text(
              'Batal',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: ElevatedButton(
            onPressed: _submitForm,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
            ),
            child: Text(
              'Pesan Paket',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
