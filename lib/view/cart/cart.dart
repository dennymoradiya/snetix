import 'package:flutter/material.dart';
import 'package:shope/api/api.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/cart/module/catlist.dart';
import 'package:shope/view/proudctDtails/productDetails.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          box.isEmpty
              ? Center(child: Text("Empty Cart"))
              : ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allProduct.data.length,
                  itemBuilder: (context, index) {
                    List d = box.values.toList();
                    return d.contains(allProduct.data[index].pid)
                        ? InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (a) => ProductDetails(
                                            snapshot: allProduct.data[index],
                                          )));
                            },
                            child: CartList(
                              discountprice: allProduct.data[index].pdiscount,
                              pcat: allProduct.data[index].pcat,
                              brand: allProduct.data[index].brand,
                              img: allProduct.data[index].pimage,
                              productid: allProduct.data[index].pid,
                              name: allProduct.data[index].pname,
                              price: allProduct.data[index].pprice,
                            ),
                          )
                        : Offstage();
                  },
                ),
        ],
      ),
    );
  }
}
