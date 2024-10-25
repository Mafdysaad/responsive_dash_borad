import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/item.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/desktop/custom_drawor/Active_item.dart';
import 'package:responsive_dashboard/widget/desktop/custom_drawor/build_itme.dart';
import 'package:responsive_dashboard/widget/desktop/custom_drawor/gallery.dart';

import 'package:responsive_dashboard/widget/desktop/custom_drawor/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> item = [
      Item('Dashboard', Assets.imagesDashbord),
      Item('My Transaction', Assets.imagesConvert),
      Item('Statistics', Assets.imagesStatistic),
      Item('Wallet Account', Assets.imagesWallet),
      Item('My Investments', Assets.imagesMyiNvestments),
    ];
    List<Item> lastOpation = [
      Item('Setting system', Assets.imagesSetting),
      Item('Logout account', Assets.imagesLogout),
    ];
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Gallery(),
          ),
          const SliverToBoxAdapter(child: UserInfo()),
          BuildItem(
            item: item,
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 20,
                    )),
                ActiveItem(item: lastOpation[0], isActive: false),
                Padding(
                  padding: const EdgeInsets.only(bottom: 45),
                  child: ActiveItem(item: lastOpation[1], isActive: false),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
