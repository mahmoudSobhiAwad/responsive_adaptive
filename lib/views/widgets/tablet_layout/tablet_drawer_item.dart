
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';

class CustomDrawerTabletItem extends StatelessWidget {
  const CustomDrawerTabletItem({
    super.key,
    required this.model,
  });
  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      model.imagePath,
      fit: BoxFit.fitWidth,
      width: model.picked ? 50 : null,
    );
  }
}
