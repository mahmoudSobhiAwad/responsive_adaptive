import 'package:flutter/material.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/utils/app_style.dart';
import 'package:responsive_adaptive/views/widgets/all_form_fields.dart';
import 'package:responsive_adaptive/views/widgets/custom_user_info.dart';
import 'package:responsive_adaptive/views/widgets/form_action_buttons.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Quick Invoice",style: AppStyle.semiBold20(context),),
            const CircleAvatar(
              backgroundColor: Color(0xffFAFAFA),
              child: IconButton(onPressed: null, icon: Icon(Icons.add,color: Color(0xff4EB7F2),)),
            ),
          ],
        ),
        const SizedBox(height: 24,),
        Text("Latest Transaction",style: AppStyle.medium16(context),),
        const SizedBox(height: 12,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(3, (index){
                return IntrinsicWidth(
                child: Padding(
                  padding: index ==1?const EdgeInsets.symmetric(horizontal: 12.0):EdgeInsets.zero,
                  child: CustomUserInfo(model:UserInfoModel(imagePath: Assets.imagesAvatar1, name: "Madrani Andi ",email: "Madraniadi20@gma20@gma20@gmail")),
                ));
              })
            ],
          ),
        ),
        
        const SizedBox(height: 24,),
        const Divider(
          height: 1,
          color: Color(0xffF1F1F1),
        ),
        const SizedBox(height: 24,),
        const FormFields(),
        const SizedBox(height: 24,),
        const FormActionButton(),

      ],
    );
  }
}


