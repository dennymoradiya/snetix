import 'package:flutter/material.dart';

class CanclePolicyCard extends StatelessWidget {
  const CanclePolicyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cancle & Refund Policy",
              style: TextStyle(
                color: Color(0xff223263),
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w800,
                letterSpacing: 0.50,
              ),
            ),
            SizedBox(height: 6),
            Divider(),
            SizedBox(height: 6),
            SizedBox(
              child: Text(
                "you cancle order for some resone, so you get refund in 5 working day's ",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
