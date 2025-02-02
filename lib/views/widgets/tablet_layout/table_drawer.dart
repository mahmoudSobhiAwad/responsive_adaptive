import 'package:flutter/material.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/views/widgets/tablet_layout/tablet_custom_drawer.dart';

class TabletDrawer extends StatelessWidget {
  const TabletDrawer({super.key, required this.changeIndex});
  final void Function(int) changeIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: CustomDrawerTablet(
        changeIndex: changeIndex,
        model: UserInfoModel(
            email: "demo@gmail.com",
            name: "Lekan Okeowo",
            imagePath: Assets.imagesAvatar2),
      ),
    );
  }
}
