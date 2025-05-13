import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_app/core/resources/app_assets.dart';
import 'package:runway_app/core/resources/app_colors.dart';
import 'package:runway_app/models/cloth_model.dart';
import 'package:runway_app/widgets/bottomsheetdata.dart';
import 'package:runway_app/widgets/customappbar.dart';
import 'package:runway_app/widgets/sort_filter.dart';

class ModelDetailsView extends StatefulWidget {
  final ClothModel clothModel;
  const ModelDetailsView({required this.clothModel, super.key});

  @override
  State<ModelDetailsView> createState() => _ModelDetailsViewState();
}

class _ModelDetailsViewState extends State<ModelDetailsView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.2,
          minChildSize: 0.2,
          maxChildSize: 0.8,
          expand: false,
          builder: (context, ScrollController scrollController) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: BottomSheetData(
                  title: widget.clothModel.clothTitle,
                  price: widget.clothModel.clothPrice,
                  scrollController: scrollController,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: AppAssets.arrowLeftIcon,
        title: "Men",
        suffixIcon: AppAssets.cartIcon,
        onTap: () => Navigator.pop(context),
      ),
      body: Column(
        children: [
          SortAndFilter(),
          Container(
            width: double.infinity,
            height: 640.h,
            decoration: BoxDecoration(color: AppColors.clothColor),
            child: Center(child: Image.asset(widget.clothModel.clothImage)),
          ),
        ],
      ),
    );
  }
}
