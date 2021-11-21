import 'package:dashboardui/utils/colors.dart';
import 'package:dashboardui/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PymentListTile extends StatelessWidget {
  final String? assetname, title, amount, status;

  const PymentListTile(
      {Key? key, this.assetname, this.title, this.amount, required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(20)),
        child: SvgPicture.asset(
          assetname!,
          width: 20,
        ),
      ),
      title: PrimaryText(
        text: title,
        size: 14,
        fontWeight: FontWeight.w500,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          PrimaryText(
            text: status,
            size: 12,
            color: AppColors.black,
          ),
          PrimaryText(
            text: amount,
            size: 16,
            color: AppColors.secondary,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
