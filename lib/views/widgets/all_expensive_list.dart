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
        ...List.generate(allExpenseItemList.length,(index)=>Expanded(child: Padding(
          padding: index==1?const EdgeInsets.symmetric(horizontal: 12.0):EdgeInsets.zero,
          child: GestureDetector(
            onTap: (){
              for(var item in allExpenseItemList){
                item.picked=false;
              }
              allExpenseItemList[index].picked=true;
              
            },
            child: AllExpenseItem(model: allExpenseItemList[index])),
        ))),
      ],
    );
  }
}
List<UserInfoModel>allExpenseItemList=[
  UserInfoModel(imagePath: Assets.imagesBalance, name: "Balance",picked: true),
  UserInfoModel(imagePath: Assets.imagesIncome, name: "Income"),
  UserInfoModel(imagePath: Assets.imagesOutCome, name: "Expenses"),
];
