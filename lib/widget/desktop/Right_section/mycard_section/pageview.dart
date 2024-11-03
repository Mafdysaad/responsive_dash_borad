import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycard_section/mycard.dart';

class pageView extends StatelessWidget {
  const pageView({super.key, required this.pageview});
  final PageController? pageview;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageview,
      scrollDirection: Axis.horizontal,
      children: List.generate(
          3,
          (index) => const Padding(
              padding: EdgeInsets.only(right: 10), child: Mycard())),
    );
  }
}
