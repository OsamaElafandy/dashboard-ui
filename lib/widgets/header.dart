import 'package:dashboardui/utils/colors.dart';
import 'package:dashboardui/utils/style.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            children: const [
              PrimaryText(
                text: "Dashboard",
                size: 30,
                fontWeight: FontWeight.w800,
              ),
              PrimaryText(
                text: "Payment updates",
                size: 16,
                fontWeight: FontWeight.w800,
                color: AppColors.secondary,
              )
            ],
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
          flex: 1,
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                contentPadding: const EdgeInsets.only(left: 40, right: 5),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColors.white)),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.black,
                ),
                hintText: 'Search',
                hintStyle:
                    const TextStyle(color: AppColors.secondary, fontSize: 14)),
          ),
        )
      ],
    );
  }
}
