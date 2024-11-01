import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';
import 'package:responsive_adaptive/views/widgets/card_details_item.dart';
import 'package:responsive_adaptive/views/widgets/custom_dot_indicator.dart';

class MyCardBody extends StatefulWidget {
  const MyCardBody({super.key});

  @override
  State<MyCardBody> createState() => _MyCardBodyState();
}

class _MyCardBodyState extends State<MyCardBody> {
  int currIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("My Card",style: AppStyle.semiBold20,),
        const SizedBox(height: 20,),
        AspectRatio(
          aspectRatio: 420/215,
          child: PageView.builder(
            onPageChanged: (index){
              currIndex=index;
              setState(() {
                
              });
            },
            itemCount: 3,
            itemBuilder: (context,index) {
              return const CardDetailsItem();
            }
          ),
        ),
        const SizedBox(height: 24,),
        DotsIndicator(currIndex: currIndex,),
      ],
    );
  }
}

