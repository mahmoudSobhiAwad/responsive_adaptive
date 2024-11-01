import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/responsive_font_size.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

class AllExpenseItem extends StatelessWidget {
  const AllExpenseItem({super.key,required this.model});
  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: model.picked? const Color(0xff4EB7F2):null,
        borderRadius: BorderRadius.circular(12),
        border: model.picked?null:Border.all(color: const Color(0xffF1F1F1))
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor:model.picked?Colors.white.withOpacity(0.1): const Color(0xffFAFAFA),
                child: Center(child: SvgPicture.asset(model.imagePath)),
              ),
              const Spacer(),
              Icon(Icons.arrow_forward_ios,color: model.picked?Colors.white: const Color(0xff064061),)
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.name,style: AppStyle.semiBold16.copyWith(color: model.picked?Colors.white:const Color(0xff064061),fontSize: getResponiveFontSize(context, baseFontSize: 16)),textAlign: TextAlign.start,),
              const SizedBox(height: 8,),
              Text("April 2024",style: AppStyle.regular14.copyWith(color: model.picked?Colors.white:const Color(0xffaaaaaa),fontSize: getResponiveFontSize(context, baseFontSize: 14)),),
              const SizedBox(height: 16,),
               Text("\$20,129",style: AppStyle.semiBold24.copyWith(color: model.picked?Colors.white:const Color(0xff4EB7F2),fontSize: getResponiveFontSize(context, baseFontSize: 24))),
            ],
          ),
        ],
      ),
    );
  }
}