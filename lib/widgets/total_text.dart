import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentative_job/utilities.dart';

class TotalText extends StatefulWidget {
  const TotalText({Key? key}) : super(key: key);

  @override
  State<TotalText> createState() => _TotalTextState();
}

class _TotalTextState extends State<TotalText> {
  var totalBalance = -1500;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: ScreenUtilInit(
          builder: (context) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "TOTAL     $totalBalance \$",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 18.h,
                      fontWeight: FontWeight.w700,
                      color: Utils.kTotalTextColor),
                ),
              )),
    );
  }
}
