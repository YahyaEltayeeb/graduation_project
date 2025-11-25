import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/assets.dart';

class CustomBannerWidget extends StatelessWidget {
  const CustomBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.banner);
  }
}
