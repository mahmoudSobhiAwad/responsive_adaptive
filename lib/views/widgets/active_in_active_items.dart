import 'package:flutter/material.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/views/widgets/custom_drawer_item.dart';

class ActiveAndInActiveDrawerItems extends StatelessWidget {
  const ActiveAndInActiveDrawerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(userInfoModelList.length, (index)=>GestureDetector(
          onTap: (){
            for (var item in userInfoModelList){
              item.picked=false;
            }
            userInfoModelList[index].picked=true;
            
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CustomDrawerItem(model:userInfoModelList[index] ),
          )))
      ],
    );
  }
}
List<UserInfoModel>userInfoModelList=[
  UserInfoModel(imagePath: Assets.imagesDashboard, name: "Dashboard",picked: true),
  UserInfoModel(imagePath: Assets.imagesTransaction, name: "My Transaction"),
  UserInfoModel(imagePath: Assets.imagesStatistic, name: "Statistics"),
  UserInfoModel(imagePath: Assets.imagesWallet, name: "Wallet Account"),
  UserInfoModel(imagePath: Assets.imagesInvestments, name: "My Investment"),
];

