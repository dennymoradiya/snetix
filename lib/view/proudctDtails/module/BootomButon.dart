import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/BuyNow/buy.dart';

class BottomBtn extends StatelessWidget {
  final snapshot;
  const BottomBtn({Key? key, this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              if (box.values.contains(snapshot.pid)) {
                Get.snackbar('Alrady Added', "Product Alreday Added");
              } else {
                box.add(snapshot.pid);
                Get.snackbar("Product Add to cart ", "For buy Checkout cart");
              }
            },
            child: Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.blueGrey),
              ),
              padding: const EdgeInsets.all(16),
              child: Text(
                "Add To Cart",
                textAlign: TextAlign.center,
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.50,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Get.to(
                () => Buy(
                  discountprice: snapshot.pdiscount,
                  image: snapshot.pimage,
                  name: snapshot.pname,
                  price: snapshot.pprice,
                  productid: snapshot.pid,
                  brand: snapshot.brand,
                  pcat: snapshot.pcat,
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3d40bfff),
                    blurRadius: 30,
                    offset: Offset(0, 10),
                  ),
                ],
                color: Color(0xff40bfff),
              ),
              padding: const EdgeInsets.all(16),
              child: Text(
                "Buy Now",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.50,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
