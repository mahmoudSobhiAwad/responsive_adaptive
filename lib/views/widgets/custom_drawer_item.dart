import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.model});
  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.imagePath),
      title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            model.name,
            style: model.picked
                ? AppStyle.bold16(context)
                : AppStyle.regualr16(context),
          )),
      trailing: model.picked
          ? const VerticalDivider(
              thickness: 3,
              color: Color(0xff4EB7F2),
            )
          : null,
    );
  }
}
