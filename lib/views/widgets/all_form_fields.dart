import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';
import 'package:responsive_adaptive/views/widgets/custom_text_form_field.dart';

class FormFields extends StatelessWidget {
  const FormFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         Row(
          children: [
            Expanded(child: CustomTextFormField(headerText: "Customer name",labelText: "type customer name..",)),
            SizedBox(width: 16,),
            Expanded(child: CustomTextFormField(headerText: "Customer email",labelText: "type customer email..",textInputType: TextInputType.emailAddress,)),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomTextFormField(headerText: "item name",labelText: "type item name..",)),
            SizedBox(width: 16,),
            Expanded(child: CustomTextFormField(headerText: "item mount",
            prefix:Row(
              children: [
                Text("USD",style: AppStyle.regualr16,),
                RotatedBox(
                  quarterTurns: -1,
                  child: Icon(Icons.arrow_back_ios_new,color: Color(0xff064061),))
              ],
            ) ,),),
          ],
        ),
      ],
    );
  }
}
