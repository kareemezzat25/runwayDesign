import 'package:runway_app/core/resources/app_assets.dart';
import 'package:runway_app/models/category_model.dart';

class AppData {
  static List<CategoryModel> categories = [
    CategoryModel(
      categoryImage: AppAssets.womenCategory,
      categoryName: "Women",
    ),
    CategoryModel(categoryImage: AppAssets.menCategory, categoryName: "Men"),
    CategoryModel(categoryImage: AppAssets.kidsCategory, categoryName: "Kids"),
    CategoryModel(
      categoryImage: AppAssets.dealsCategory,
      categoryName: "Deals",
    ),
  ];
}
