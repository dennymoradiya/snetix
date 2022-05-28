import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/BuyNow/addressfill.dart/adressfill.dart';

class Buy extends StatelessWidget {
  final image;
  final price;
  final discountprice;
  final name;
  final pcat;
  final brand;
  final productid;
  const Buy(
      {Key? key,
      required this.name,
      required this.productid,
      required this.price,
      required this.image,
      required this.pcat,
      required this.brand,
      this.discountprice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Summery')),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Wrap(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.50,
                        ),
                      ),
                      Text(
                        'Rs. ' + price,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: NetworkImage(image),
                                fit: BoxFit.fitHeight,
                                onError: (e, e1) => Icon(Icons.error),
                              ),
                            ),
                            margin: EdgeInsets.only(right: 10),
                          ),
                          Wrap(
                            direction: Axis.vertical,
                            spacing: 10,
                            children: [
                              SizedBox(
                                width: w - 200,
                                child: Text(
                                  name,
                                  style: TextStyle(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                              Text(
                                "Rs. " + price,
                                style: TextStyle(
                                  color: Color(0xff223263),
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              SizedBox(width: 40),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(),
                        ),
                        padding: EdgeInsets.all(3),
                        child: Text("Qut - 1"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payemnt Details",
                    style: TextStyle(
                      color: Color(0xff223263),
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'MRP Total',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.50,
                        ),
                      ),
                      Text(
                        "Rs. " + price,
                        style: TextStyle(
                          color: Color(0xff223263),
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Divider(endIndent: 12, indent: 12),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Product Discount',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.50,
                        ),
                      ),
                      Text(
                        "- Rs. " + discountprice,
                        style: TextStyle(
                          color: Color(0xff223263),
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Shipping Charge',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.50,
                        ),
                      ),
                      Text(
                        "+ Rs. 100",
                        style: TextStyle(
                          color: Color(0xff223263),
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ],
                  ),
                  Divider(endIndent: 12, indent: 12),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Total Amount',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.50,
                        ),
                      ),
                      Text(
                        "Rs. " + (int.parse(price) + 100).toString(),
                        style: TextStyle(
                          color: Color(0xff223263),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "You Save Rs." + discountprice,
                      style: TextStyle(
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            endIndent: 10,
            indent: 10,
          ),
          Container(
            height: 40,
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payable Amount',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    Text(
                      'Rs. ' + (int.parse(price) + 100).toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(() => AddresFill(
                            brend: brand,
                            pcat: pcat,
                            pname: name,
                            price: (int.parse(price) + 100).toString(),
                            pimage: image,
                            productid: productid,
                          ));
                    },
                    child: Text('Place Order')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
