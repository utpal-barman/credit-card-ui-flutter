import 'package:flutter/material.dart';

/// Asset path for images
class CustomAssets {

  ///
  const CustomAssets({
    this.visaLogo,
    this.masterCardLogo,
    this.amexLogo,
    this.discoverLogo,
    this.chip,
    this.nfc,
  });

  // Visa types logo
  /// Logo for Visa
  final Widget? visaLogo;

  /// Logo for Master card
  final Widget? masterCardLogo;

  /// Logo for American Express card
  final Widget? amexLogo;

  /// Logo for Discover card
  final Widget? discoverLogo;

  // Chips, NFC
  /// Chip image
  final Widget? chip;

  /// NFC Icon
  final Widget? nfc;
}
