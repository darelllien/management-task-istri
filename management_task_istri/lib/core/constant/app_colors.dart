import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  //Core Palettes
  static const Color primary = Color(0xFF007BFF);
  static const Color primaryLight = Color(0xFFE6F2FF);

  //Secondary & Status
  static const Color secondary = Color(
    0xFF00C853,
  ); // Mint Green (Tugas Selesai)
  static const Color danger = Color(0xFFFF3D00);

  //Gamification Aksen
  static const Color accentGold = Color(
    0xFFFFD600,
  ); // Kuning Emas (Poin & Reward Store)
  static const Color accentOrange = Color(
    0xFFFF9100,
  ); // Orange (Level Up & Streak)

  //Neutral Colors (Background & Text)
  static const Color background = Color(0xFFF8FAFC);
  static const Color surface = Colors.white;
  static const Color textPrimary = Color(0xFF1E293B);
  static const Color textSecondary = Color(0xFF64748B);
}
