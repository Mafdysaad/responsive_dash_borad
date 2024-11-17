import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';
import 'package:responsive_dashboard/widget/custom_background.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycard_section/widget/dotes.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycard_section/widget/dots_indicator.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycard_section/widget/pageview.dart';

class MycardSection extends StatefulWidget {
  MycardSection({super.key});

  @override
  State<MycardSection> createState() => _MycardSectionState();
}

class _MycardSectionState extends State<MycardSection> {
  PageController pageviewcontroller = PageController();
  int currentpageIndex = 0;
  @override
  void initState() {
    pageviewcontroller.addListener(() {
      currentpageIndex = pageviewcontroller.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: Fontstyle.Montserrat_SemiBold20(context)),
        const SizedBox(
          height: 20,
        ),
        pageView(
          pageview: pageviewcontroller,
        ),
        const SizedBox(
          height: 19,
        ),
        DotsIndicator(currentpageIndex: currentpageIndex),
        const Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        )
      ],
    );
  }
}
