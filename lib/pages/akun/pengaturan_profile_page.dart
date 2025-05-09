// ignore_for_file: use_build_context_synchronously

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dewa_wo_app/core/di/dependency_injection.dart';
import 'package:dewa_wo_app/cubits/auth/auth_cubit.dart';
import 'package:dewa_wo_app/cubits/profile/profile_cubit.dart';
import 'package:dewa_wo_app/helpers/image_compressor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:toastify_flutter/toastify_flutter.dart';

class PengaturanProfilePage extends StatefulWidget {
  const PengaturanProfilePage({super.key});

  @override
  State<PengaturanProfilePage> createState() => _PengaturanProfilePageState();
}

class _PengaturanProfilePageState extends State<PengaturanProfilePage> {
  late final ProfileCubit _profileCubit;

  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final _deletePasswordController = TextEditingController();

  bool _currentPasswordVisible = false;
  bool _newPasswordVisible = false;
  bool _confirmPasswordVisible = false;
  bool _deletePasswordVisible = false;

  File? _profileImage;
  bool _isCompressingImage = false;

  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();

    _profileCubit = context.read<ProfileCubit>();

    _loadUserData();
  }

  void _loadUserData() {
    final user = _profileCubit.getCurrentUser();
    if (user != null) {
      setState(() {
        _namaController.text = user.fullName;
        _emailController.text = user.email;
        _phoneController.text = user.phone;
      });
    }
  }

  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    _deletePasswordController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Galeri'),
                onTap: () async {
                  Navigator.pop(context);
                  try {
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      await _processSelectedImage(File(image.path));
                    }
                  } catch (e) {
                    if (kDebugMode) {
                      print('Error picking image: $e');
                    }
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Kamera'),
                onTap: () async {
                  Navigator.pop(context);
                  try {
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.camera);
                    if (image != null) {
                      await _processSelectedImage(File(image.path));
                    }
                  } catch (e) {
                    if (kDebugMode) {
                      print('Error picking image: $e');
                    }
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _processSelectedImage(File imageFile) async {
    setState(() {
      _isCompressingImage = true;
    });

    try {
      // Check file size
      final fileSize = await imageFile.length();
      final fileSizeInMB = fileSize / (1024 * 1024);

      if (kDebugMode) {
        print('Original file size: ${fileSizeInMB.toStringAsFixed(2)} MB');
      }

      File processedImage;

      // If image is larger than 2MB, compress it
      if (fileSizeInMB > 2.0) {
        ToastifyFlutter.info(
          context,
          message: 'Mengompres gambar...',
        );

        processedImage = await ImageCompressor.compressImageFile(imageFile);

        // Double check final size
        final compressedSize = await processedImage.length();
        final compressedSizeInMB = compressedSize / (1024 * 1024);

        if (kDebugMode) {
          print(
              'Compressed file size: ${compressedSizeInMB.toStringAsFixed(2)} MB');
        }

        if (compressedSizeInMB > 2.0) {
          // Still too large after compression
          ToastifyFlutter.warning(
            context,
            message: 'Gambar terlalu besar, maksimal 2MB',
          );
          setState(() {
            _isCompressingImage = false;
          });
          return;
        }
      } else {
        // Image is already within size limit
        processedImage = imageFile;
      }

      setState(() {
        _profileImage = processedImage;
        _isCompressingImage = false;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error processing image: $e');
      }

      ToastifyFlutter.error(
        context,
        message: 'Gagal memproses gambar',
      );

      setState(() {
        _isCompressingImage = false;
      });
    }
  }

  void _updateProfile() {
    if (_namaController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _phoneController.text.isEmpty) {
      ToastifyFlutter.warning(context, message: 'Semua field harus diisi');
      return;
    }

    _profileCubit.updateProfile(
      name: _namaController.text,
      email: _emailController.text,
      phone: _phoneController.text,
      avatar: _profileImage?.path,
    );
  }

  void _changePassword() {
    if (_currentPasswordController.text.isEmpty ||
        _newPasswordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty) {
      ToastifyFlutter.warning(context,
          message: 'Semua field password harus diisi');
      return;
    }

    if (_newPasswordController.text != _confirmPasswordController.text) {
      ToastifyFlutter.warning(context,
          message: 'Password baru dan konfirmasi harus sama');
      return;
    }

    _profileCubit.changePassword(
      currentPassword: _currentPasswordController.text,
      newPassword: _newPasswordController.text,
      confirmPassword: _confirmPasswordController.text,
    );
  }

  void _confirmDeleteAccount() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Hapus Akun'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Apakah Anda yakin ingin menghapus akun? Tindakan ini tidak dapat dibatalkan.',
              style: TextStyle(color: Colors.red),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _deletePasswordController,
              obscureText: !_deletePasswordVisible,
              decoration: InputDecoration(
                hintText: 'Masukkan password Anda untuk konfirmasi',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _deletePasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _deletePasswordVisible = !_deletePasswordVisible;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              if (_deletePasswordController.text.isEmpty) {
                ToastifyFlutter.error(context, message: 'Password harus diisi');
                return;
              }

              Navigator.pop(context);
              _profileCubit.deleteAccount(
                password: _deletePasswordController.text,
              );
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            child: const Text('Hapus Akun'),
          ),
        ],
      ),
    );
  }

  void _resetPasswordFields() {
    setState(() {
      _currentPasswordController.clear();
      _newPasswordController.clear();
      _confirmPasswordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is ProfileSuccess) {
          context.read<AuthCubit>().refreshUserData();
          ToastifyFlutter.success(context, message: state.message);
        } else if (state is ProfileError) {
          ToastifyFlutter.error(context, message: state.message);
        } else if (state is PasswordChangeSuccess) {
          ToastifyFlutter.success(context, message: state.message);
          _resetPasswordFields();
        } else if (state is PasswordChangeError) {
          ToastifyFlutter.error(context, message: state.message);
        } else if (state is DeleteAccountSuccess) {
          ToastifyFlutter.success(context, message: state.message);
          context.read<AuthCubit>().logout();
          context.goNamed('home');
        } else if (state is DeleteAccountError) {
          ToastifyFlutter.error(context, message: state.message);
        }
      },
      builder: (context, state) {
        final bool isProfileLoading = state is ProfileLoading;
        final bool isPasswordLoading = state is PasswordChangeLoading;
        final bool isDeleteLoading = state is DeleteAccountLoading;

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              'Pengaturan Profile',
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              _buildTabSelector(),
              Expanded(
                child: IndexedStack(
                  index: _selectedTabIndex,
                  children: [
                    _buildProfileTab(isProfileLoading),
                    _buildPasswordTab(isPasswordLoading),
                    _buildDeleteAccountTab(isDeleteLoading),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTabSelector() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          _buildTabButton(
            index: 0,
            label: 'Profile',
            icon: Icons.person,
          ),
          _buildTabButton(
            index: 1,
            label: 'Password',
            icon: Icons.lock,
          ),
          _buildTabButton(
            index: 2,
            label: 'Hapus Akun',
            icon: Icons.delete,
            isDelete: true,
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton({
    required int index,
    required String label,
    required IconData icon,
    bool isDelete = false,
  }) {
    final bool isSelected = _selectedTabIndex == index;

    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedTabIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isSelected
                    ? isDelete
                        ? Colors.red
                        : Colors.pink
                    : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Column(
            children: [
              Icon(
                icon,
                color: isSelected
                    ? isDelete
                        ? Colors.red
                        : Colors.pink
                    : Colors.grey,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: isSelected
                      ? isDelete
                          ? Colors.red
                          : Colors.pink
                      : Colors.grey,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileTab(bool isLoading) {
    final user = _profileCubit.getCurrentUser();
    final hasAvatar = user?.avatar != null && user!.avatar!.isNotEmpty;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink[100],
                    // Only add image decoration if using a local file
                    image: _profileImage != null
                        ? DecorationImage(
                            image: FileImage(_profileImage!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  // Show different content based on state
                  child: _isCompressingImage
                      ? Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.pink[700]!,
                            ),
                          ),
                        )
                      : _profileImage == null
                          ? hasAvatar
                              // Show cached network image for existing avatar
                              ? ClipOval(
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        '${AppConsts.baseUrl}${user!.avatar}',
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => Center(
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Colors.pink[700]!,
                                        ),
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Center(
                                      child: Text(
                                        _namaController.text.isNotEmpty
                                            ? _namaController.text[0]
                                                .toUpperCase()
                                            : 'U',
                                        style: TextStyle(
                                          fontSize: 42,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink[700],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              // Show initial if no avatar and no local file
                              : Center(
                                  child: Text(
                                    _namaController.text.isNotEmpty
                                        ? _namaController.text[0].toUpperCase()
                                        : 'U',
                                    style: TextStyle(
                                      fontSize: 42,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink[700],
                                    ),
                                  ),
                                )
                          : null,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: _isCompressingImage ? null : _pickImage,
                    child: Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isCompressingImage ? Colors.grey : Colors.pink,
                      ),
                      child: _isCompressingImage
                          ? const SizedBox(
                              width: 12,
                              height: 12,
                              child: CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.white),
                                strokeWidth: 2,
                              ),
                            )
                          : const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 20,
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // The rest of the method remains unchanged
          const SizedBox(height: 32),
          const Text(
            'Nama Lengkap',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 8),
          TextField(
            controller: _namaController,
            decoration: InputDecoration(
              hintText: 'Masukkan nama lengkap',
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Email',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            enabled: false,
            decoration: InputDecoration(
              hintText: 'Masukkan Email',
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Nomor Telepon',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: 'Masukkan Nomor Telepon',
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed:
                  isLoading || _isCompressingImage ? null : _updateProfile,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 2,
                      ),
                    )
                  : const Text(
                      'Simpan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordTab(bool isLoading) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Icon(
              Icons.lock,
              size: 64,
              color: Colors.pink,
            ),
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              'Ubah Password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Password Saat Ini',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _currentPasswordController,
            obscureText: !_currentPasswordVisible,
            decoration: InputDecoration(
              hintText: 'Masukkan password saat ini',
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              suffixIcon: IconButton(
                icon: Icon(
                  _currentPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Colors.pink,
                ),
                onPressed: () {
                  setState(() {
                    _currentPasswordVisible = !_currentPasswordVisible;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Password Baru',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _newPasswordController,
            obscureText: !_newPasswordVisible,
            decoration: InputDecoration(
              hintText: 'Masukkan password baru',
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              suffixIcon: IconButton(
                icon: Icon(
                  _newPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.pink,
                ),
                onPressed: () {
                  setState(() {
                    _newPasswordVisible = !_newPasswordVisible;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Konfirmasi Password Baru',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _confirmPasswordController,
            obscureText: !_confirmPasswordVisible,
            decoration: InputDecoration(
              hintText: 'Masukkan konfirmasi password baru',
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              suffixIcon: IconButton(
                icon: Icon(
                  _confirmPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Colors.pink,
                ),
                onPressed: () {
                  setState(() {
                    _confirmPasswordVisible = !_confirmPasswordVisible;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isLoading ? null : _changePassword,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 2,
                      ),
                    )
                  : const Text(
                      'Ubah Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDeleteAccountTab(bool isLoading) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.delete_forever,
            size: 80,
            color: Colors.red,
          ),
          const SizedBox(height: 24),
          const Text(
            'Hapus Akun',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Perhatian: Menghapus akun Anda akan menghapus semua data dan tidak dapat dipulihkan.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isLoading ? null : _confirmDeleteAccount,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 2,
                      ),
                    )
                  : const Text(
                      'Hapus Akun Saya',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
