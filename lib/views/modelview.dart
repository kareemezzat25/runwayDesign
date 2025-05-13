import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_app/core/resources/app_assets.dart';
import 'package:runway_app/core/resources/app_colors.dart';
import 'package:runway_app/core/resources/app_data.dart';
import 'package:runway_app/views/modeldetailsview.dart';
import 'package:runway_app/widgets/customappbar.dart';
import 'package:runway_app/widgets/model_item.dart';
import 'package:runway_app/widgets/sort_filter.dart';

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
        onTap: () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SortAndFilter(),
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
                  return ModelItem(
                    modelImage: AppData.clothModels[index].clothImage,
                    modelName: AppData.clothModels[index].clothTitle,
                    modelPrice: AppData.clothModels[index].clothPrice,
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => ModelDetailsView(
                                  clothModel: AppData.clothModels[index],
                                ),
                          ),
                        ),
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
