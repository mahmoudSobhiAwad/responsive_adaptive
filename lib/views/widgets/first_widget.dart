import 'package:flutter/material.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/views/widgets/custom_drawer.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child:CustomDrawer(model: UserInfoModel(email:"demo@gmail.com" ,name:"Lekan Okeowo" ,imagePath:Assets.imagesAvatar2),),
    );
  }
}