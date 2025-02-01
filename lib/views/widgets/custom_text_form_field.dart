import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.headerText,
      this.labelText,
      this.prefix,
      this.textInputType});
  final String headerText;
  final String? labelText;
  final TextInputType? textInputType;
  final Widget? prefix;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerText,
          style: AppStyle.medium16(context),
        ),
        TextField(
          cursorColor: Colors.black,
          keyboardType: textInputType,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20),
            labelStyle: AppStyle.regualr16(context)
                .copyWith(color: const Color(0xffAAAAAA)),
            filled: true,
            fillColor: const Color(0xffFAFAFA),
            labelText: labelText,
            prefixIcon: prefix,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ],
    );
  }
}
