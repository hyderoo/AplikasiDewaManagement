// form_pemesanan_page.dart
import 'package:dewa_wo_app/pages/pesanan/form/cubit/order_form_cubit.dart';
import 'package:dewa_wo_app/core/models/catalog_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class FormPemesananPage extends StatefulWidget {
  final CatalogModel layanan;

  const FormPemesananPage({
    super.key,
    required this.layanan,
  });

  @override
  State<FormPemesananPage> createState() => _FormPemesananPageState();
}

class _FormPemesananPageState extends State<FormPemesananPage> {
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
  late final OrderFormCubit _orderFormCubit;

  @override
  void initState() {
    super.initState();
    _orderFormCubit = context.read<OrderFormCubit>();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          _selectedDate ?? DateTime.now().add(const Duration(days: 60)),
      firstDate: DateTime.now().add(const Duration(days: 30)),
      lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
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

  String get _formattedDate {
    if (_selectedDate == null) {
      return 'Tanggal Pernikahan';
    }
    return DateFormat('dd MMMM yyyy', 'id_ID').format(_selectedDate!);
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      if (kDebugMode) {
        print('Form valid, lanjut ke proses berikutnya');
      }

      // Get price from catalog - use the lowest price if it's a range
      double price =
          (widget.layanan.price.isNotEmpty ? widget.layanan.price.first : 0)
              .toDouble();

      // Create order using OrderFormCubit
      _orderFormCubit.createOrder(
        catalog: widget.layanan,
        namaPria: _namaPriaController.text,
        namaWanita: _namaWanitaController.text,
        tanggal: _selectedDate!,
        jumlahTamu: int.parse(_jumlahTamuController.text),
        lokasi: _lokasiController.text,
        alamat: _alamatController.text,
        price: price,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderFormCubit, OrderFormState>(
      bloc: _orderFormCubit,
      listener: (context, state) {
        if (state is OrderFormLoading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is OrderFormSuccess) {
          // Close loading dialog
          Navigator.of(context).pop();

          // Show success dialog
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Berhasil'),
              content: const Text('Pesanan berhasil dibuat'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Navigate to order detail
                    context
                        .pushReplacement('/pesanan/detail/${state.order.id}');
                  },
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        } else if (state is OrderFormError) {
          // Close loading dialog if it's showing
          if (Navigator.canPop(context)) {
            Navigator.of(context).pop();
          }

          // Show error dialog
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Error'),
              content: Text(state.message),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Form Pemesanan'),
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSelectedPackageInfo(),
                _buildDivider(),
                _buildSectionTitle('Informasi Pasangan'),
                const SizedBox(height: 12),
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
                const SizedBox(height: 12),
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
                const SizedBox(height: 12),
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
                const SizedBox(height: 12),
                _buildTextField(
                  controller: _jumlahTamuController,
                  hintText: 'Estimasi Jumlah Tamu',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Estimasi jumlah tamu wajib diisi';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Masukkan angka yang valid';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
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
                const SizedBox(height: 12),
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
                const SizedBox(height: 12),
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
                const SizedBox(height: 12),
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
                const SizedBox(height: 12),
                _buildTextField(
                  controller: _teleponController,
                  hintText: 'Nomor Telepon Alternatif',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 32),
                _buildActionButtons(),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedPackageInfo() {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Paket yang dipilih:',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.layanan.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.layanan.formattedPrice,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

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
        contentPadding: const EdgeInsets.symmetric(
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
          borderSide: const BorderSide(
            color: Colors.pink,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      maxLines: maxLines,
      keyboardType: keyboardType,
      validator: validator,
    );
  }

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
            contentPadding: const EdgeInsets.symmetric(
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
              borderSide: const BorderSide(
                color: Colors.pink,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            suffixIcon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey,
            ),
          ),
          validator: validator,
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      height: 1,
      color: Colors.grey[200],
    );
  }

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
              padding: const EdgeInsets.symmetric(vertical: 16),
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
        const SizedBox(width: 16),
        Expanded(
          child: ElevatedButton(
            onPressed: _submitForm,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text(
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
