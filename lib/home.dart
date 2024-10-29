import"package:flutter/material.dart";
import "package:responsive_adaptive/responsive_font_size.dart";
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    
      return  Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xffEEEEEE),       
        appBar:MediaQuery.sizeOf(context).width>932?null: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          scaffoldKey.currentState?.openDrawer();
        }, icon: const Icon(Icons.menu,color: Colors.white,)),
      ),
      body: Column(
        children: [
          Text("BIG TEXT",style: TextStyle(fontSize: getResponiveFontSize(context, baseFontSize: 42)),),
          const SizedBox(height: 12,),
          Text("Middle TEXT",style: TextStyle(fontSize: getResponiveFontSize(context, baseFontSize: 24)),),
          const SizedBox(height: 12,),
          Text("small TEXT",style: TextStyle(fontSize: getResponiveFontSize(context, baseFontSize: 16)),),
        ],
      ),     

    );
  }
}
