import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/dash_board_view.dart';


void main (){
  runApp(const FirstAPP());

}
class FirstAPP extends StatelessWidget {
  const FirstAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: DashBoardView()
    );
  }
}


