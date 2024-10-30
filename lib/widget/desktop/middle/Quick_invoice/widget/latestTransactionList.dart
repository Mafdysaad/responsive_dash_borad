import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/user_info.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/desktop/custom_drawar/widget/user_info.dart';

class Latesttransactionlist extends StatelessWidget {
  const Latesttransactionlist({super.key});
  static List<UserInfo_model> items = [
    const UserInfo_model(
        Image: Assets.imagesFrame,
        subtitle: 'Josh Nunito@gmail.com',
        tilte: 'Josua Nunito'),
    const UserInfo_model(
        Image: Assets.imagesFrame2,
        subtitle: 'Madraniadi20@gmail',
        tilte: 'Madrani Andi'),
    const UserInfo_model(
        Image: Assets.imagesFrame3,
        subtitle: 'Madraniadi20@gmail',
        tilte: 'Madrani Andi'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(child: UserInfo(userinfo: e)))
            .toList(),
      ),
    );
  }
}

    
    
    
    
  //   SizedBox(
  //     height: 80,
  //     child: ListView.builder(
  //         scrollDirection: Axis.horizontal,
  //         itemCount: items.length,
  //         itemBuilder: (context, index) {
  //           return IntrinsicWidth(child: UserInfo(userinfo: items[index]));
  //         }),
  //   );
  // }

