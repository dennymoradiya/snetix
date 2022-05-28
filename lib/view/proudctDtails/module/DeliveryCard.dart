import 'package:flutter/material.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({
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
              "Delivery",
              style: TextStyle(
                color: Color(0xff223263),
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w800,
                letterSpacing: 0.50,
              ),
            ),
            SizedBox(height: 6),
            Divider(),
            SizedBox(height: 6),
            Text(
              "Deivery Get in 10 working day's",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 12,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                letterSpacing: 0.50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
