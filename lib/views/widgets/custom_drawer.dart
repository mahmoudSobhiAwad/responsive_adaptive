import 'package:flutter/material.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/views/widgets/active_in_active_items.dart';
import 'package:responsive_adaptive/views/widgets/custom_drawer_item.dart';
import 'package:responsive_adaptive/views/widgets/custom_user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key,required this.model});
  final UserInfoModel model;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
            child: CustomUserInfo(model: model),
          ),
        ),
        const SliverToBoxAdapter(child:ActiveAndInActiveDrawerItems()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Spacer(),
              CustomDrawerItem(model: UserInfoModel(imagePath: Assets.imagesSetting, name: "Setting System")),
              CustomDrawerItem(model: UserInfoModel(imagePath: Assets.imagesLogout, name: "Logout Account")),
            ],
          ),
        ),
      ],
    );
  }
}

