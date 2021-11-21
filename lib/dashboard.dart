import 'package:dashboardui/response/responsive.dart';
import 'package:dashboardui/response/size_config.dart';
import 'package:dashboardui/utils/colors.dart';
import 'package:dashboardui/utils/style.dart';
import 'package:dashboardui/widgets/appbar_action_item.dart';
import 'package:dashboardui/widgets/barchart_component.dart';
import 'package:dashboardui/widgets/header.dart';
import 'package:dashboardui/widgets/history_table.dart';
import 'package:dashboardui/widgets/info_card.dart';
import 'package:dashboardui/widgets/paymentdetails.dart';
import 'package:dashboardui/widgets/sidemenu.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  ScrollController scrollController1 = ScrollController();

  ScrollController scrollControlle2 = ScrollController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      key: drawerKey,
      drawer: SizedBox(
        width: 100,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              actions: const [AppbarActionItem()],
              leading: IconButton(
                  onPressed: () {
                    drawerKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
            )
          : const PreferredSize(child: SizedBox(), preferredSize: Size.zero),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            Expanded(flex: 1, child: SideMenu()),
          Expanded(
              flex: 10,
              child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  color: AppColors.secondaryBg,
                  child: SingleChildScrollView(
                    controller: scrollController1,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Header(),
                        SizedBox(height: SizeConfig.blockSizeVertical! * 4),
                        SizedBox(
                          width: SizeConfig.screenWidth,
                          child: Wrap(
                            runSpacing: 20,
                            spacing: 20,
                            alignment: WrapAlignment.spaceBetween,
                            children: const [
                              InfoCard(
                                assetName: 'assets/credit-card.svg',
                                title: 'Trans via \nCard number',
                                amount: '\$1200',
                              ),
                              InfoCard(
                                assetName: 'assets/transfer.svg',
                                title: 'Trans via \nOnline Banks',
                                amount: "\$150",
                              ),
                              InfoCard(
                                assetName: 'assets/bank.svg',
                                title: 'Trans via \nSame Bank',
                                amount: '\$3000',
                              ),
                              InfoCard(
                                assetName: 'assets/invoice.svg',
                                title: 'Trans via \nOther Bank',
                                amount: '\$1500',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical! * 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: const [
                                PrimaryText(
                                  text: 'Balance',
                                  size: 16,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.secondary,
                                ),
                                PrimaryText(
                                  text: '\$1500',
                                  size: 30,
                                  fontWeight: FontWeight.w800,
                                  //color: AppColors.secondary,
                                ),
                              ],
                            ),
                            const PrimaryText(
                              text: 'Past 30 DAYS',
                              size: 16,
                              //fontWeight: FontWeight.w800,
                              color: AppColors.secondary,
                            ),
                          ],
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical! * 3),
                        const SizedBox(
                          height: 180,
                          child: BarChartComponent(),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical! * 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            PrimaryText(
                              text: 'History',
                              size: 30,
                              color: AppColors.secondary,
                            ),
                            PrimaryText(
                              text: 'Transaction of last 6 months',
                              size: 16,
                              //color: AppColors.secondary,
                              fontWeight: FontWeight.w800,
                            ),
                          ],
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical! * 3),
                        HistoryTable(),
                        if (!Responsive.isDesktop(context))
                          const PaymentDetailList(),
                      ],
                    ),
                  ))),
          if (Responsive.isDesktop(context))
            Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  color: AppColors.secondaryBg,
                  child: SingleChildScrollView(
                    controller: scrollControlle2,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: Column(
                      children: const [
                        AppbarActionItem(),
                        PaymentDetailList(),
                      ],
                    ),
                  ),
                ))
        ],
      )),
    );
  }
}
