import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

enum ViewEnum { Dashboard, Platform, Gallery, Insight, Settings }

extension ViewMapper on ViewEnum {
  static const icons = {
    ViewEnum.Dashboard: Iconsax.layer5,
    ViewEnum.Platform: Iconsax.layer5,
    ViewEnum.Gallery: Iconsax.gallery5,
    ViewEnum.Insight: Iconsax.hierarchy_25,
    ViewEnum.Settings: Iconsax.candle5,
  };
  static const names = {
    ViewEnum.Dashboard: "Dashboard",
    ViewEnum.Platform: "Platform",
    ViewEnum.Gallery: "Gallery",
    ViewEnum.Insight: "Insight",
    ViewEnum.Settings: "Settings"
  };

  IconData get icon => icons[this] ?? Iconsax.box1;
  String get name => names[this] ?? 'Unknown';
}
