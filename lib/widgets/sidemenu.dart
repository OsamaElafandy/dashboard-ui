import 'package:dashboardui/response/size_config.dart';
import 'package:dashboardui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Container(
                  height: 100,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: SvgPicture.asset('assets/mac-action.svg'),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/home.svg",
                    color: AppColors.iconGray,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/pie-chart.svg",
                    color: AppColors.iconGray,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/clipboard.svg",
                    color: AppColors.iconGray,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/credit-card.svg",
                    color: AppColors.iconGray,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/trophy.svg",
                    color: AppColors.iconGray,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/invoice.svg",
                    color: AppColors.iconGray,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 20,
                )
              ],
            )),
      ),
    );
  }
}
