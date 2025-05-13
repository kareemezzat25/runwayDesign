import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_app/core/resources/app_assets.dart';
import 'package:runway_app/core/resources/app_colors.dart';

class BottomSheetData extends StatelessWidget {
  final String title;
  final String price;
  final ScrollController scrollController;
  const BottomSheetData({
    super.key,
    required this.title,
    required this.price,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            width: 42.w,
            height: 6.h,
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        Gap(18),
        Text(
          title,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.blackColor,
          ),
        ),
        Gap(18),
        Row(
          children: [
            Text(
              "\$ $price",
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.blackColor,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Icon(Icons.favorite_border_outlined, size: 20),
                Gap(10),
                Text(
                  "450",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        Gap(18),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyColor, width: 1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              Text(
                "Select color",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor,
                ),
              ),
              Gap(10),
              SvgPicture.asset(AppAssets.sortIcon),
              Gap(12),
              SizedBox(
                height: 55,
                child: VerticalDivider(
                  thickness: 1,
                  indent: 12,
                  endIndent: 12,
                  color: AppColors.greyColor,
                ),
              ),
              Gap(12),
              Text(
                "Select Size",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor,
                ),
              ),
              Gap(10),
              SvgPicture.asset(AppAssets.sortIcon),
            ],
          ),
        ),
        Gap(10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blackColor,
            minimumSize: Size(390.w, 55.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: Text(
            "Add To Bag",
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
