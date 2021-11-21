import 'package:dashboardui/response/size_config.dart';
import 'package:dashboardui/utils/colors.dart';
import 'package:dashboardui/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatelessWidget {
  final String? assetName, title, amount;
  const InfoCard({Key? key, this.assetName, this.title, this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 200),
      padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20, right: 40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            // "assets/credit-card.svg",
            assetName!,
            width: 35,
          ),
          SizedBox(height: SizeConfig.blockSizeVertical! * 2),
          PrimaryText(
            text: title,
            color: AppColors.secondary,
            size: 16,
          ),
          SizedBox(height: SizeConfig.blockSizeVertical! * 2),
          PrimaryText(
            text: amount,
            // color: AppColors.secondary,
            size: 18,
            fontWeight: FontWeight.w700,
          )
        ],
      ),
    );
  }
}
