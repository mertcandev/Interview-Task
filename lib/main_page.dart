// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tentative_job/utilities.dart';
import 'package:tentative_job/widgets/account_selection.dart';
import 'package:tentative_job/widgets/balance_type_picker.dart';
import 'package:tentative_job/widgets/bottom_bar.dart';
import 'package:tentative_job/widgets/date_bar.dart';
import 'package:tentative_job/widgets/expense_income_bar.dart';
import 'package:tentative_job/widgets/expenses_grid.dart';
import 'package:tentative_job/widgets/header_search.dart';
import 'package:tentative_job/widgets/time_picking_bar.dart';
import 'package:tentative_job/widgets/total_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context) => Scaffold(
        extendBody: true,
        backgroundColor: Utils.kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: Container(
            child: Column(
              children: [
                HeaderSearch(),
                SizedBox(
                  height: 20.h,
                ),
                DateBar(),
                SizedBox(height: 20.h),
                AccountSelection(),
                Divider(
                  color: Utils.kDividerColor,
                ),
                TimePickingBar(),
                SizedBox(height: 15.h),
                ExpenseIncomeBar(),
                SizedBox(height: 15.h),
                BalanceTypePicker(),
                SizedBox(height: 15.h),
                TotalText(),
                SizedBox(height: 10.h),
                ExpensesGrid(),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                )
                //SizedBox(height: 80.h)
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
