import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_app/core/resources/app_assets.dart';
import 'package:runway_app/core/resources/app_colors.dart';
import 'package:runway_app/core/resources/app_data.dart';
import 'package:runway_app/widgets/customappbar.dart';

class ModelView extends StatelessWidget {
  static const String routeName = "Modelview";
  const ModelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: AppAssets.arrowLeftIcon,
        title: "Men",
        suffixIcon: AppAssets.cartIcon,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.fromBorderSide(
                  BorderSide(color: AppColors.clothColor),
                ),
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
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.6,
                ),
                itemCount: AppData.clothModels.length,
                itemBuilder: (context, index) {
                  return Column(
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
                        child: Image.asset(
                          AppData.clothModels[index].clothImage,
                        ),
                      ),
                      Gap(14),
                      Text(
                        AppData.clothModels[index].clothTitle,
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
                            AppData.clothModels[index].clothPrice,

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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
