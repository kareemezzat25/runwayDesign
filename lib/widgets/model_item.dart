import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_app/core/resources/app_colors.dart';

class ModelItem extends StatelessWidget {
  final String modelImage;
  final String modelName;
  final String modelPrice;
  final Function()? onTap;
  const ModelItem({
    required this.modelImage,
    required this.modelName,
    required this.modelPrice,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200.w,
            height: 255.h,
            padding: EdgeInsets.symmetric(horizontal: 42),
            decoration: BoxDecoration(
              color: AppColors.clothColor,
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child: Image.asset(modelImage),
          ),
          Gap(14),
          Text(
            modelName,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.blackColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Gap(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                modelPrice,

                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor,
                ),
              ),
              Icon(Icons.favorite_outline_rounded, size: 18),
            ],
          ),
        ],
      ),
    );
  }
}
