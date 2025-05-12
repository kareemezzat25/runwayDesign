import 'package:flutter/material.dart';

import 'package:runway_app/core/resources/app_assets.dart';
import 'package:runway_app/widgets/customappbar.dart';

class HomeView extends StatelessWidget {
  static const String routeName = "Home";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: AppAssets.chartIcon,
        title: "Runway",
        suffixIcon: AppAssets.notificationIcon,
      ),
    );
  }
}
