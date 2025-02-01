import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

class FormActionButton extends StatelessWidget {
  const FormActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Add more details",style: AppStyle.semiBold18(context).copyWith(color: const Color(0xff4EB7F2),)),
          ),
        ),
        const SizedBox(width: 24,),
        Expanded(
          child: Container(
            padding:const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xff4EB7F2),
              borderRadius: BorderRadius.circular(12),
            ),
            child:Center(child:  Text("Send Money",style: AppStyle.semiBold18(context),)),
          ),
        ),
      ]
    );
  }
}