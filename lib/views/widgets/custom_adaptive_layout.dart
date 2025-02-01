import 'package:flutter/material.dart';

class CustomAdaptiveLayout extends StatelessWidget {
  const CustomAdaptiveLayout({super.key,required this.desktopLayout,required this.mobileLayout,required this.tabletLayout});
  final WidgetBuilder mobileLayout,desktopLayout,tabletLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
          builder:(context,constraint){
            if(constraint.maxWidth<500)
            {
              return mobileLayout(context);
            }
            else if(constraint.maxWidth<1200)
            {
              return  tabletLayout(context);
        
            }
            else {
              return  desktopLayout(context);
            }
          } 
          );
  }
}