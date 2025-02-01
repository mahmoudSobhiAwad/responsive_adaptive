import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

class AllExpenseItem extends StatelessWidget {
  const AllExpenseItem({super.key,required this.model});
  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
                Flexible(
                  child: ConstrainedBox(
                    constraints:const BoxConstraints(
                      maxWidth: 60,
                      maxHeight: 60,
                    ),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CircleAvatar(
                        
                        // radius: 30,
                        backgroundColor:model.picked?Colors.white.withValues(alpha: 0.1): const Color(0xffFAFAFA),
                        child: Center(child: SvgPicture.asset(model.imagePath)),
                      ),
                    ),
                  ),
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
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(model.name,style: AppStyle.semiBold16(context).copyWith(color: model.picked?Colors.white:const Color(0xff064061)),textAlign: TextAlign.start,)),
                const SizedBox(height: 8,),
                FittedBox(
                   fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text("April 2024",style: AppStyle.regular14(context).copyWith(color: model.picked?Colors.white:const Color(0xffaaaaaa),),)),
                const SizedBox(height: 16,),
                 FittedBox(
                   fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text("\$20,129",style: AppStyle.semiBold24(context).copyWith(color: model.picked?Colors.white:const Color(0xff4EB7F2)))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}