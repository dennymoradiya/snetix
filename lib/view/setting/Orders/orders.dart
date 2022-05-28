import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shope/api/api.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/module/OrderModule.dart';
import 'package:url_launcher/url_launcher.dart';

class OrdersDetails extends StatefulWidget {
  const OrdersDetails({Key? key}) : super(key: key);

  @override
  _OrdersDetailsState createState() => _OrdersDetailsState();
}

class _OrdersDetailsState extends State<OrdersDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Detail's", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          FutureBuilder<OrderModule>(
            future: getOrders(uid: box.get('cuurentuid').toString()),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (!snapshot.hasData) {
                return Center(
                  child: Text(
                    "No Have any Order found",
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }
              return snapshot.data!.orderdeails.isEmpty
                  ? Center(
                      child: Text(
                        "No Have any Order found",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  : ListView.builder(
                      itemCount: snapshot.data!.orderdeails.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            Card(
                              margin: EdgeInsets.all(10),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Order at",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "poppins",
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          snapshot.data!.orderdeails[index]
                                              .orderdata
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Divider(
                                      endIndent: 10,
                                      indent: 10,
                                    ),
                                    SizedBox(height: 4),
                                    Table(
                                      children: [
                                        TableRow(children: [
                                          Text(
                                            "Product Name",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(snapshot.data!
                                                .orderdeails[index].pname),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Text(
                                            "Name",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(snapshot.data!
                                                .orderdeails[index].firstname),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Text(
                                            "order Number",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(snapshot.data!
                                                .orderdeails[index].orderid),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Text(
                                            "Order Date",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(snapshot.data!
                                                .orderdeails[index].orderdata),
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
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Rs. " +
                                                snapshot.data!
                                                    .orderdeails[index].pprice),
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Card(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    title: Text('Delivery Address'),
                                    subtitle: Text(snapshot
                                        .data!.orderdeails[index].streetadrees),
                                  ),
                                  ListTile(
                                    title: ElevatedButton(
                                      onPressed: () async {
                                        await canLaunch(
                                                "http://wa.me/919664922646?text=(cancle_order_Id:${snapshot.data!.orderdeails[index].orderid}) ")
                                            ? await launch(
                                                "http://wa.me/919664922646?text=(cancle_order_Id:${snapshot.data!.orderdeails[index].orderid})")
                                            : Get.snackbar(
                                                "contect on whatsapp",
                                                "smoe thing error");
                                      },
                                      child: Text("Cancle Order"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
            },
          ),
        ],
      ),
    );
  }
}
