import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/model/item.dart';
import 'package:responsive_dashboard/widget/desktop/custom_drawar/widget/Active_item.dart';

class BuildItem extends StatefulWidget {
  final List<Item> item;
  const BuildItem({
    super.key,
    required this.item,
  });

  @override
  State<BuildItem> createState() => _BuildItemState();
}

class _BuildItemState extends State<BuildItem> {
  int ActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: widget.item.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (index != ActiveIndex) {
              setState(() {});
              ActiveIndex = index;
            }
          },
          child: ActiveItem(
            item: widget.item[index],
            isActive: ActiveIndex == index,
          ),
        );
      },
    );
  }
}
