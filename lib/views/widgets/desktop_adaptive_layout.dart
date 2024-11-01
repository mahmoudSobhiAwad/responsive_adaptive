import 'package:flutter/material.dart';
import 'package:responsive_adaptive/models/user_info_model.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/views/widgets/all_expense_view.dart';
import 'package:responsive_adaptive/views/widgets/card_widget.dart';
import 'package:responsive_adaptive/views/widgets/custom_drawer.dart';

class DesktopAdaptiveLayout extends StatelessWidget {
  const DesktopAdaptiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
      const FirstWidget(),
      const SecondWidget(),
      const SizedBox(width: 20,),
      Expanded(
        flex: 2,
        child: Container(
          margin: const EdgeInsets.only(right: 24,top: 24,bottom: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: const Padding(
            padding: EdgeInsets.all(24.0),
            child: MyCardBody(),
          ),
          ),
        ),
      ],
    );
  }
}
class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
          flex: 1,
          child: Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child:CustomDrawer(model: UserInfoModel(email:"demo@gmail.com" ,name:"Lekan Okeowo" ,imagePath:Assets.imagesAvatar2),),
          ),
        );
  }
}
class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
          flex: 3,
          child:Padding(
            padding: EdgeInsets.all(20.0),
            child: AllExpenseView(),
          ),
        );
  }
}