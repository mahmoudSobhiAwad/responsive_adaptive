import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_style.dart';
class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo({
    super.key,
    required this.model,
  });

  final UserInfoModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
       leading: SvgPicture.asset(model.imagePath),
       title: FittedBox(alignment: Alignment.topLeft,fit: BoxFit.scaleDown,child: Text(model.name,style: AppStyle.semiBold16(context),)),
       subtitle: FittedBox(alignment: Alignment.centerLeft,fit: BoxFit.scaleDown,child: Text(model.email??"",style: AppStyle.regular12(context),)),
      ),
    );
  }
}