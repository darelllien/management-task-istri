import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:firebase_core/firebase_core.dart';

import 'core/theme/app_theme.dart';
import 'core/constant/app_colors.dart';

void main() async {
  // 1. Pastikan binding Flutter sudah siap sebelum inisialisasi async
  WidgetsFlutterBinding.ensureInitialized();

  // 2. Inisialisasi Storage untuk HydratedBloc (Sintaks Baru & Valid)
  final directory = await getApplicationDocumentsDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: directory,
  );

  // 3. Inisialisasi Firebase Core
  await Firebase.initializeApp();

  // 4. Inisialisasi Supabase (Menggunakan publishableKey terbaru)
  await Supabase.initialize(
    url: 'https://hxbpzzmqpyragnwrdksc.supabase.co/rest/v1/',
    publishableKey:
        'sb_publishable_391FTft7YNV1MDe-FHAHqA_o03DJw-C', // <-- Perubahan dari anonKey ke publishableKey
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Management Task Istri',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // Sementara kita arahkan ke Splash / Halaman Awal placeholder sebelum modul Auth dibuat
      home: const InitializationSplashPage(),
    );
  }
}

// Sementara: Widget placeholder untuk memastikan konfigurasi berjalan lancar saat di-run
class InitializationSplashPage extends StatelessWidget {
  const InitializationSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline,
              size: 80,
              color: AppColors.secondary,
            ),
            const SizedBox(height: 16),
            Text(
              'Sistem Siap Di-develop!',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Firebase & Supabase Terhubung.',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ],
        ),
      ),
    );
  }
}
