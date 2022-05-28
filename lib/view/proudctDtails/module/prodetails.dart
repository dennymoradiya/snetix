import 'package:flutter/material.dart';
import 'package:shope/globle/Globle.dart';

class ProDetails extends StatelessWidget {
  final shortdesc;
  final name;
  final discountprice;
  final price;
  final rating;
  final description;
  const ProDetails({
    Key? key,
    this.shortdesc,
    this.description,
    this.name,
    this.price,
    this.rating,
    required this.discountprice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: w - 20,
              child: Text(
                name,
                style: TextStyle(
                  color: Color(0xff223263),
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.50,
                ),
              ),
            ),
            SizedBox(height: 6.40),
            Row(
              children: [
                for (var i = 0; i < int.parse(rating); i++)
                  Icon(Icons.star, color: Colors.amber, size: 22),
              ],
            ),
            SizedBox(height: 6.40),
            Text(
              "Rs. " + price,
              style: TextStyle(
                color: Color(0xff40bfff),
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                letterSpacing: 0.50,
              ),
            ),
            Text(
              "Rs. " + discountprice,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                decoration: TextDecoration.lineThrough,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                letterSpacing: 0.50,
              ),
            ),
            SizedBox(height: 10),
            Divider(endIndent: 10, indent: 10),
            Text(
              "Specification",
              style: TextStyle(
                color: Color(0xff223263),
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w800,
                letterSpacing: 0.50,
              ),
            ),
            SizedBox(height: 14.67),
            Table(
              children: [
                TableRow(children: [
                  Text(
                    "Product",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(fontFamily: "poppins"),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    "Shown:",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                  Text(
                    shortdesc,
                    style: TextStyle(fontFamily: "poppins"),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(fontFamily: "poppins"),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                  Text(
                    "Rs. " + price,
                    style: TextStyle(
                        fontFamily: "poppins", fontWeight: FontWeight.w400),
                  ),
                ]),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
