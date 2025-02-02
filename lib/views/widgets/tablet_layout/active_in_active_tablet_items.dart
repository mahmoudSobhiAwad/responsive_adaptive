import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/constants.dart';
import 'package:responsive_adaptive/views/widgets/active_in_active_items.dart';
import 'package:responsive_adaptive/views/widgets/custom_drawer_item.dart';
import 'package:responsive_adaptive/views/widgets/tablet_layout/tablet_drawer_item.dart';

class ActiveAndInActiveDrawerTablet extends StatefulWidget {
  const ActiveAndInActiveDrawerTablet({super.key, required this.changeIndex});
  final void Function(int) changeIndex;
  @override
  State<ActiveAndInActiveDrawerTablet> createState() =>
      _ActiveAndInActiveDrawerTabletState();
}

class _ActiveAndInActiveDrawerTabletState
    extends State<ActiveAndInActiveDrawerTablet> {
  final List<GlobalKey> _keys = [];

  @override
  void initState() {
    super.initState();
    _keys.addAll(List.generate(userInfoModelList.length, (_) => GlobalKey()));
  }

  void _showMenu(
    BuildContext context,
    GlobalKey key,
  ) {
    final RenderBox? renderBox =
        key.currentContext?.findRenderObject() as RenderBox?;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    if (renderBox != null) {
      final Offset position =
          renderBox.localToGlobal(Offset.zero, ancestor: overlay);

      showMenu(
        context: context,
        position: RelativeRect.fromLTRB(
          position.dx,
          position.dy + renderBox.size.height,
          position.dx + renderBox.size.width,
          position.dy + renderBox.size.height + 100,
        ),
        items: belowTransactionList.map((item) {
          return PopupMenuItem(
            onTap: () {},
            child: CustomDrawerItem(
              model: item,
            ),
          );
        }).toList(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(userInfoModelList.length, (index) {
        return InkWell(
          key: _keys[index],
          onTap: () {
            for (var item in userInfoModelList) {
              item.picked = false;
            }
            userInfoModelList[index].picked = true;
            widget.changeIndex(index);
            setState(() {});
            if (index == 1) _showMenu(context, _keys[index]);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: CustomDrawerTabletItem(model: userInfoModelList[index]),
          ),
        );
      }),
    );
  }
}
