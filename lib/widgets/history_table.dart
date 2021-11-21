import 'package:dashboardui/data.dart';
import 'package:dashboardui/utils/colors.dart';
import 'package:dashboardui/utils/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HistoryTable extends StatelessWidget {
  HistoryTable({Key? key}) : super(key: key);

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: scrollController,
      child: SizedBox(
        width: double.infinity,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
              transactionHistory.length,
              (index) => TableRow(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 20),
                          child: CircleAvatar(
                            radius: 17,
                            backgroundImage: NetworkImage(
                                transactionHistory[index]['avatar']!),
                          ),
                        ),
                        PrimaryText(
                          text: transactionHistory[index]['label'],
                          size: 16,
                          color: AppColors.secondary,
                        ),
                        PrimaryText(
                          text: transactionHistory[index]['time'],
                          size: 16,
                          color: AppColors.secondary,
                        ),
                        PrimaryText(
                          text: transactionHistory[index]['amount'],
                          size: 16,
                          color: AppColors.secondary,
                        ),
                        PrimaryText(
                          text: transactionHistory[index]['status'],
                          size: 16,
                          color: AppColors.secondary,
                        ),
                      ])),
        ),
      ),
    );
  }
}
