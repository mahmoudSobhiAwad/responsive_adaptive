import "package:flutter/material.dart";
import "package:responsive_adaptive/main.dart";
import "package:responsive_adaptive/views/widgets/custom_adaptive_layout.dart";
import "package:responsive_adaptive/views/widgets/desktop_adaptive_layout.dart";
import "package:responsive_adaptive/views/widgets/first_widget.dart";
import "package:responsive_adaptive/views/widgets/mobile_layout/mobile_layout.dart";
import "package:responsive_adaptive/views/widgets/tablet_layout/tablet_layout.dart";

class BasicView extends StatefulWidget {
  const BasicView({super.key, required this.index});
  final int index;
  @override
  State<BasicView> createState() => _BasicViewState();
}

class _BasicViewState extends State<BasicView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int activeIndex = 0;
  @override
  void initState() {
    activeIndex = widget.index;
    super.initState();
  }

  void changeActiveIndex(int currIndex) {
    if (activeIndex != currIndex) {
      activeIndex = currIndex;
      setState(() {});
      switch (activeIndex) {
        case 0:
          Navigator.pushReplacementNamed(context, '/${RoutesNames.dashboard}');
          break;
        case 1:
          Navigator.pushReplacementNamed(context, '/${RoutesNames.transaction}');
          break;
        case 2:
          Navigator.pushReplacementNamed(context, '/${RoutesNames.statistics}');
          break;
        case 3:
          Navigator.pushReplacementNamed(context, '/${RoutesNames.wallet}');
          break;
        case 4:
          Navigator.pushReplacementNamed(context, '/${RoutesNames.investment}');
          break;
      }
    }
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
        drawer: MediaQuery.sizeOf(context).width < 700
            ? SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.75,
                child: FirstWidget(
                  changeIndex: (index) {
                    changeActiveIndex(index);
                    Navigator.pop(context);
                  },
                ))
            : null,
        backgroundColor: const Color(0xffF7F9FA),
        body: CustomAdaptiveLayout(
          desktopLayout: (context) => DesktopAdaptiveLayout(
            activeIndex: activeIndex,
            changeIndex: (index) {
              changeActiveIndex(index);
            },
          ),
          mobileLayout: (context) => MobileLayout(
            activeIndex: activeIndex,
          ),
          tabletLayout: (context) => TabletLayout(
            activeIndex: activeIndex,
            changeIndex: (index) {
              changeActiveIndex(index);
            },
          ),
        ));
  }
}
