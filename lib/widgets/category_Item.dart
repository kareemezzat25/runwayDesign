import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_app/core/resources/app_colors.dart';
import 'package:runway_app/views/modelview.dart';

class CategoryItem extends StatelessWidget {
  String categoryImage;
  String categoryName;
  CategoryItem({
    required this.categoryImage,
    required this.categoryName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ModelView.routeName);
      },
      child: Column(
        children: [
          Image.asset(categoryImage, width: 75, fit: BoxFit.fill),
          Gap(12),
          Text(
            categoryName,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.textBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}
