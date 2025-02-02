import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/views/widgets/tablet_layout/active_in_active_tablet_items.dart';
import 'package:responsive_adaptive/views/widgets/tablet_layout/tablet_drawer_item.dart';

class CustomDrawerTablet extends StatelessWidget {
  const CustomDrawerTablet(
      {super.key, required this.model, required this.changeIndex});
  final UserInfoModel model;
  final void Function(int) changeIndex;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(model.imagePath)),
        ),
        SliverToBoxAdapter(
            child: ActiveAndInActiveDrawerTablet(
          changeIndex: changeIndex,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Spacer(),
              CustomDrawerTabletItem(
                  model: UserInfoModel(
                      imagePath: Assets.imagesSetting, name: "Setting System")),
              const SizedBox(
                height: 12,
              ),
              CustomDrawerTabletItem(
                  model: UserInfoModel(
                      imagePath: Assets.imagesLogout, name: "Logout Account")),
            ],
          ),
        ),
      ],
    );
  }
}
