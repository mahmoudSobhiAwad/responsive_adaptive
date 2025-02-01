import 'package:flutter/material.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/views/widgets/all_expense_item.dart';

class AllExpensiveList extends StatelessWidget {
  const AllExpensiveList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        AllExpenseItem(model: allExpenseItemList[0]),
        const SizedBox(width: 8,),
        AllExpenseItem(model: allExpenseItemList[1]),
        const SizedBox(width: 8,),
        AllExpenseItem(model: allExpenseItemList[2]),
      ],
    );
  }
}
List<UserInfoModel>allExpenseItemList=[
  UserInfoModel(imagePath: Assets.imagesBalance, name: "Balance",picked: true),
  UserInfoModel(imagePath: Assets.imagesIncome, name: "Income"),
  UserInfoModel(imagePath: Assets.imagesOutCome, name: "Expenses"),
];
