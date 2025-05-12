import 'package:runway_app/core/resources/app_assets.dart';
import 'package:runway_app/models/category_model.dart';
import 'package:runway_app/models/cloth_model.dart';

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

  static List<ClothModel> clothModels = [
    ClothModel(
      clothImage: AppAssets.model1,
      clothTitle: "Top man black",
      clothPrice: "20",
    ),
    ClothModel(
      clothImage: AppAssets.model2,
      clothTitle: "Deep gray essential regular",
      clothPrice: "25",
    ),
    ClothModel(
      clothImage: AppAssets.model3,
      clothTitle: "Top man black with Trousiers",
      clothPrice: "46",
    ),
    ClothModel(
      clothImage: AppAssets.model4,
      clothTitle: "Gray coat and white T-shirt",
      clothPrice: "30",
    ),
    ClothModel(
      clothImage: AppAssets.model4,
      clothTitle: "Top man black",
      clothPrice: "32",
    ),
    ClothModel(
      clothImage: AppAssets.model6,
      clothTitle: "Top man black",
      clothPrice: "43",
    ),
  ];
}
