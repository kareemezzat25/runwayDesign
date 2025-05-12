import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_app/core/resources/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String leadingIcon;
  String title;
  String suffixIcon;

  CustomAppBar({
    required this.leadingIcon,
    required this.title,
    required this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80.h,
      leading: SizedBox.shrink(),
      leadingWidth: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          SvgPicture.asset(leadingIcon, width: 24),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.blackColor,
            ),
          ),
          SvgPicture.asset(suffixIcon, width: 18),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
