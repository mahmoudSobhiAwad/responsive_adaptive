import"package:flutter/material.dart";
import "package:responsive_adaptive/views/widgets/custom_adaptive_layout.dart";
import "package:responsive_adaptive/views/widgets/desktop_adaptive_layout.dart";
class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    
      return  Scaffold(
        backgroundColor: const Color(0xffEEEEEE),       
        body: CustomAdaptiveLayout(
        desktopLayout:(context)=> const DesktopAdaptiveLayout(),
        mobileLayout:(context)=>const SizedBox(),
         tabletLayout: (context)=>const SizedBox(),)

    );
  }
}
