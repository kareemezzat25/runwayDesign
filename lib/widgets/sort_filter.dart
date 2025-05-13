import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_app/core/resources/app_assets.dart';
import 'package:runway_app/core/resources/app_colors.dart';

class SortAndFilter extends StatelessWidget {
  const SortAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.fromBorderSide(BorderSide(color: AppColors.clothColor)),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Row(
        children: [
          Text(
            "Sort by",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
          Gap(20),
          SvgPicture.asset(AppAssets.sortIcon),
          Spacer(),
          SvgPicture.asset(AppAssets.filter),
          Gap(4),
          Text(
            "Filter",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
          Gap(20),
          SvgPicture.asset(AppAssets.ionGrid),
          Gap(20),
          SvgPicture.asset(AppAssets.usersIcon),
        ],
      ),
    );
  }
}
