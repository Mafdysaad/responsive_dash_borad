import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycard_section/dotes.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentpageIndex});
  final int currentpageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Dotes(isActive: index == currentpageIndex));
      }),
    );
  }
}
