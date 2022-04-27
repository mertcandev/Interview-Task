// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentative_job/utilities.dart';

enum AccountSelect { allAccounts, pocketMoney, creditCard }

class AccountSelection extends StatefulWidget {
  const AccountSelection({Key? key}) : super(key: key);

  @override
  State<AccountSelection> createState() => _AccountSelectionState();
}

class _AccountSelectionState extends State<AccountSelection> {
  AccountSelect _selectedAccount = AccountSelect.allAccounts;
  bool checkVisibility = false;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context) => SizedBox(
        height: 87.h,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: 15.w),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedAccount = AccountSelect.allAccounts;
                });
              },
              child: Container(
                width: 128.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Utils.kAllAccountsBoxColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                      ),
                      Visibility(
                        visible: _selectedAccount == AccountSelect.allAccounts
                            ? true
                            : false,
                        child: Icon(
                          Icons.check,
                          size: 15.h,
                          color: Utils.kAllAccountsBoxColor,
                        ),
                      )
                    ]),
                    SizedBox(height: 5.h),
                    Text(
                      "All Accounts",
                      style: TextStyle(
                          fontSize: 14.h,
                          fontWeight: FontWeight.w700,
                          color: Utils.kAllAccountsBoxTextColor),
                    ),
                    Text(
                      "\$ 1,200",
                      style: TextStyle(
                          fontSize: 24.h,
                          fontWeight: FontWeight.w700,
                          color: Utils.kAllAccountsBoxBalanceColor),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedAccount = AccountSelect.pocketMoney;
                });
              },
              child: Container(
                width: 128.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Utils.kPocketMoneyBoxColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                      ),
                      Visibility(
                        visible: _selectedAccount == AccountSelect.pocketMoney
                            ? true
                            : false,
                        child: Icon(
                          Icons.check,
                          size: 15.h,
                          color: Utils.kPocketMoneyBoxColor,
                        ),
                      )
                    ]),
                    SizedBox(height: 5.h),
                    Text(
                      "Pocket Money",
                      style: TextStyle(
                          fontSize: 14.h,
                          fontWeight: FontWeight.w700,
                          color: Utils.kAllAccountsBoxTextColor),
                    ),
                    Text(
                      "\$ 248",
                      style: TextStyle(
                          fontSize: 24.h,
                          fontWeight: FontWeight.w700,
                          color: Utils.kAllAccountsBoxBalanceColor),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedAccount = AccountSelect.creditCard;
                });
              },
              child: Container(
                width: 128.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Utils.kCreditCardBoxColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                      ),
                      Visibility(
                        visible: _selectedAccount == AccountSelect.creditCard
                            ? true
                            : false,
                        child: Icon(
                          Icons.check,
                          size: 15.h,
                          color: Utils.kCreditCardBoxColor,
                        ),
                      )
                    ]),
                    SizedBox(height: 5.h),
                    Text(
                      "Credit Card",
                      style: TextStyle(
                          fontSize: 14.h,
                          fontWeight: FontWeight.w700,
                          color: Utils.kAllAccountsBoxTextColor),
                    ),
                    Text(
                      "\$ 1,000",
                      style: TextStyle(
                          fontSize: 24.h,
                          fontWeight: FontWeight.w700,
                          color: Utils.kAllAccountsBoxBalanceColor),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 15.w)
          ],
        ),
      ),
    );
  }
}
