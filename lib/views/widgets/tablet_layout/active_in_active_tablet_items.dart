import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/constants.dart';
import 'package:responsive_adaptive/views/widgets/tablet_layout/tablet_drawer_item.dart';


class ActiveAndInActiveDrawerTablet extends StatefulWidget {
  const ActiveAndInActiveDrawerTablet({
    super.key,
  });

  @override
  State<ActiveAndInActiveDrawerTablet> createState() =>
      _ActiveAndInActiveDrawerTabletState();
}

class _ActiveAndInActiveDrawerTabletState
    extends State<ActiveAndInActiveDrawerTablet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
            userInfoModelList.length,
            (index) => InkWell(
                onTap: () {
                  for (var item in userInfoModelList) {
                    item.picked = false;
                  }
                  userInfoModelList[index].picked = true;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CustomDrawerTabletItem(
                    model: userInfoModelList[index],
                  ),
                )))
      ],
    );
  }
}
