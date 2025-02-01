import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_images.dart';

List<UserInfoModel> userInfoModelList = [
  UserInfoModel(
      imagePath: Assets.imagesDashboard, name: "Dashboard", picked: true),
  UserInfoModel(imagePath: Assets.imagesTransaction, name: "My Transaction"),
  UserInfoModel(imagePath: Assets.imagesStatistic, name: "Statistics"),
  UserInfoModel(imagePath: Assets.imagesWallet, name: "Wallet Account"),
  UserInfoModel(imagePath: Assets.imagesInvestments, name: "My Investment"),
];
