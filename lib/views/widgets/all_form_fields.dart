import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';
import 'package:responsive_adaptive/views/widgets/custom_text_form_field.dart';

class FormFields extends StatelessWidget {
  const FormFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const Row(
          children: [
            Expanded(child: CustomTextFormField(headerText: "Customer name",labelText: "type customer name..",)),
            SizedBox(width: 16,),
            Expanded(child: CustomTextFormField(headerText: "Customer email",labelText: "type customer email..",textInputType: TextInputType.emailAddress,)),
          ],
        ),
        const SizedBox(height: 24,),
        Row(
          children: [
            const Expanded(child: CustomTextFormField(headerText: "item name",labelText: "type item name..",)),
            const SizedBox(width: 16,),
            Expanded(child: CustomTextFormField(headerText: "item mount",
            prefix:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("USD",style: AppStyle.regualr16(context),),
                  const RotatedBox(
                    quarterTurns: -1,
                    child: Icon(Icons.arrow_back_ios_new,color: Color(0xff064061),))
                ],
              ),
            ) ,),),
          ],
        ),
      ],
    );
  }
}
