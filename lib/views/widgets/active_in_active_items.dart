import 'package:flutter/material.dart';

import 'package:responsive_adaptive/utils/constants.dart';
import 'package:responsive_adaptive/views/widgets/custom_drawer_item.dart';

class ActiveAndInActiveDrawerItems extends StatefulWidget {
  const ActiveAndInActiveDrawerItems({
    super.key,
  });

  @override
  State<ActiveAndInActiveDrawerItems> createState() =>
      _ActiveAndInActiveDrawerItemsState();
}

class _ActiveAndInActiveDrawerItemsState
    extends State<ActiveAndInActiveDrawerItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
            userInfoModelList.length,
            (index) => GestureDetector(
                onTap: () {
                  for (var item in userInfoModelList) {
                    item.picked = false;
                  }
                  userInfoModelList[index].picked = true;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CustomDrawerItem(
                    model: userInfoModelList[index],
                  ),
                )))
      ],
    );
  }
}
