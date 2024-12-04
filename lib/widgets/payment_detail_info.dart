import 'package:flutter/material.dart';
import 'package:responsivewebapp/config/size_config.dart';
import 'package:responsivewebapp/model/model.dart';
import 'package:responsivewebapp/utils/colors.dart';
import 'package:responsivewebapp/widgets/payment_detail.dart';

class PaymentDetailInfo extends StatelessWidget {
  const PaymentDetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400]!,
                blurRadius: 15,
                offset: const Offset(10, 15),
              )
            ],
          ),
          child: Image.asset("assets/dashboard/card.png"),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recent Activities",
              style: TextStyle(
                fontSize: 18,
                height: 1.3,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text(
              "04 Dec 2025",
              style: TextStyle(
                height: 1.3,
                color: MyAppColor.secondary,
              ),
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Column(
          children: List.generate(recentActivities.length, (index) {
            final activity = recentActivities[index];
            return PaymentDetail(
              icon: activity.icon,
              label: activity.label,
              amount: activity.amount,
              status: activity.status,
            );
          }),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Upcoming Payments",
              style: TextStyle(
                fontSize: 18,
                height: 1.3,
                fontWeight: FontWeight.w500,
                color: MyAppColor.primary,
              ),
            ),
            Text(
              "02 Jan 2025",
              style: TextStyle(
                height: 1.3,
                color: MyAppColor.secondary,
              ),
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Column(
          children: List.generate(upcomingPayments.length, (index) {
            final payments = upcomingPayments[index];
            return PaymentDetail(
              icon: payments.icon,
              label: payments.label,
              amount: payments.amount,
              status: payments.status,
            );
          }),
        ),
      ],
    );
  }
}
