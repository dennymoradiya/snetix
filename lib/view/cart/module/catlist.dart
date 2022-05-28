import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/BuyNow/buy.dart';

class CartList extends StatefulWidget {
  final name;
  final discountprice;
  final img;
  final price;
  final pcat;
  final brand;
  final productid;
  const CartList({
    Key? key,
    this.name,
    required this.productid,
    this.img,
    required this.price,
    required this.pcat,
    this.brand,
    this.discountprice,
  }) : super(key: key);

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  var getkey;
  var s = box.toMap();

  @override
  Widget build(BuildContext context) {
    s.forEach((key, value) {
      value == widget.productid ? getkey = key : null;

      print(key);
    });
    return Container(
      height: 110,
      width: w,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xffeaefff),
          width: 1,
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage(widget.img),
                fit: BoxFit.fitHeight,
                onError: (e, e1) => Icon(Icons.error),
              ),
            ),
            margin: EdgeInsets.only(right: 10),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: w - 235,
                child: Text(
                  widget.name,
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
                "Rs. " + widget.price,
                style: TextStyle(
                  color: Color(0xff40bfff),
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.50,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlineButton(
                  onPressed: () {
                    Get.to(() => Buy(
                          discountprice: widget.discountprice,
                          image: widget.img,
                          name: widget.name,
                          price: widget.price,
                          productid: widget.productid,
                          brand: widget.brand,
                          pcat: widget.pcat,
                        ));
                  },
                  child: Text('Buy')),
              TextButton(
                onPressed: () {
                  box.delete(getkey);
                  setstate = true;
                  setState(() {});
                },
                child: Text('Remove'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}