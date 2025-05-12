import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:runway_app/core/resources/app_assets.dart';
import 'package:runway_app/core/resources/app_colors.dart';
import 'package:runway_app/core/resources/app_data.dart';
import 'package:runway_app/widgets/customappbar.dart';
import 'package:video_player/video_player.dart';

class HomeView extends StatefulWidget {
  static const String routeName = "Home";
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset(AppAssets.homeVideo)
          ..initialize().then((_) {
            setState(() {
              _controller.play();
            });
          })
          ..setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: AppAssets.chartIcon,
        title: "Runway",
        suffixIcon: AppAssets.notificationIcon,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textBlackColor,
                    ),
                  ),
                  Gap(16),
                  SizedBox(
                    height: 140.h,
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(
                              AppData.categories[index].categoryImage,
                              width: 75,
                              fit: BoxFit.fill,
                            ),
                            Gap(12),
                            Text(
                              AppData.categories[index].categoryName,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textBlackColor,
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Gap(14);
                      },
                      itemCount: AppData.categories.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
