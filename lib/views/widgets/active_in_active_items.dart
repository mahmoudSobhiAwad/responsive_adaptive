import 'package:flutter/material.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/utils/constants.dart';
import 'package:responsive_adaptive/views/widgets/custom_drawer_item.dart';

class ActiveAndInActiveDrawerItems extends StatefulWidget {
  const ActiveAndInActiveDrawerItems({
    super.key,
    required this.changeIndex,
  });
  final void Function(int) changeIndex;
  @override
  State<ActiveAndInActiveDrawerItems> createState() =>
      _ActiveAndInActiveDrawerItemsState();
}

class _ActiveAndInActiveDrawerItemsState
    extends State<ActiveAndInActiveDrawerItems> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, // To avoid unbounded height issues inside a Column
      physics:
          const NeverScrollableScrollPhysics(), // Prevents internal scrolling
      itemCount: userInfoModelList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            for (var item in userInfoModelList) {
              item.picked = false;
            }
            userInfoModelList[index].picked = true;
            setState(() {});
            widget.changeIndex(index);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                CustomDrawerItem(model: userInfoModelList[index]),
                if (userInfoModelList[1].picked && index == 1)
                  ...List.generate(belowTransactionList.length, (childIndex) {
                    return InkWell(
                      onTap: () {
                        for (var item in belowTransactionList) {
                          item.picked = false;
                        }

                        belowTransactionList[childIndex].picked = true;
                        setState(() {});
                      },
                      child: CustomDrawerItem(
                        height: 10,
                        model: belowTransactionList[childIndex],
                      ),
                    );
                  })
              ],
            ),
          ),
        );
      },
    );
  }
}

List<UserInfoModel> belowTransactionList = [
  UserInfoModel(
      imagePath: Assets.imagesInsightful,
      name: 'Summary & Insights',
      picked: true),
  UserInfoModel(imagePath: Assets.imagesHistory, name: 'Recent Transactions'),
  UserInfoModel(imagePath: Assets.imagesUpcoming, name: 'Upcoming Payments'),
];
