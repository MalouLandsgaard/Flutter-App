import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

enum ViewEnum { Dashboard, Services, Gallery, Insight, Settings }

extension ViewMapper on ViewEnum {
  static const icons = {
    ViewEnum.Dashboard: Iconsax.radar_25,
    ViewEnum.Services: Iconsax.layer5,
    ViewEnum.Gallery: Iconsax.gallery5,
    ViewEnum.Insight: Iconsax.hierarchy_25,
    ViewEnum.Settings: Iconsax.candle5,
  };
  static const names = {
    ViewEnum.Dashboard: "Dashboard",
    ViewEnum.Services: "Service",
    ViewEnum.Gallery: "Gallery",
    ViewEnum.Insight: "Insight",
    ViewEnum.Settings: "Settings"
  };

  IconData get icon => icons[this] ?? Iconsax.box1;
  String get name => names[this] ?? 'Unknown';
}
