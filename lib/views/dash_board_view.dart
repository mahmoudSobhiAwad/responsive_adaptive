import "package:flutter/material.dart";
import "package:responsive_adaptive/views/widgets/custom_adaptive_layout.dart";
import "package:responsive_adaptive/views/widgets/desktop_adaptive_layout.dart";
import "package:responsive_adaptive/views/widgets/first_widget.dart";
import "package:responsive_adaptive/views/widgets/mobile_layout/mobile_layout.dart";
import "package:responsive_adaptive/views/widgets/tablet_layout/tablet_layout.dart";

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
        appBar: MediaQuery.sizeOf(context).width < 500
            ? AppBar(
                leading: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
                backgroundColor: const Color(0xff4EB7F2),
              )
            : null,
        drawer:
            MediaQuery.sizeOf(context).width < 700 ? SizedBox(
              width: MediaQuery.sizeOf(context).width*0.75,
              child: const FirstWidget()) : null,
        backgroundColor: const Color(0xffF7F9FA),
        body: CustomAdaptiveLayout(
          desktopLayout: (context) => const DesktopAdaptiveLayout(),
          mobileLayout: (context) => const MobileLayoutBuilder(),
          tabletLayout: (context) => const TabletLayout(),
        ));
  }
}
