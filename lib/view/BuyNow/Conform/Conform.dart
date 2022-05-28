import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shope/api/api.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/BottomBar/Bottomnavbar.dart';

class Conform extends StatefulWidget {
  final firstname;
  final lastname;
  final pname;
  final pimage;
  final pcat;
  final brand;
  final streetaddres;
  final street2addres;
  final state;
  final zipcode;
  final phone;
  final email;
  final name;
  final productnumber;
  final totalamount;
  final orderdate;
  final orderid;
  const Conform({
    Key? key,
    required this.name,
    required this.productnumber,
    required this.totalamount,
    required this.orderdate,
    required this.orderid,
    this.firstname,
    this.lastname,
    this.streetaddres,
    this.street2addres,
    this.state,
    this.zipcode,
    this.phone,
    this.email,
    this.pname,
    this.pimage,
    this.pcat,
    this.brand,
  }) : super(key: key);

  @override
  _ConformState createState() => _ConformState();
}

class _ConformState extends State<Conform> {
  void adddata() {
    var getkey;
    var s = box.toMap();
    s.forEach((key, value) {
      value == widget.productnumber ? getkey = key : 'a';
      print(key);
    });
    box.delete(getkey);
    print("delete at .......... ................................" +
        getkey.toString());
    addOrderDetails(
      pid: widget.productnumber,
      pname: widget.pname,
      pimage: widget.pimage,
      pcat: widget.pcat,
      brand: widget.brand,
      uid: box.get('cuurentuid').toString(),
      pprice: widget.totalamount,
      firstname: widget.name,
      lastname: widget.lastname,
      streetadrees: widget.streetaddres,
      street2addres: widget.street2addres,
      state: widget.state,
      zipcode: widget.zipcode,
      phoneno: widget.phone,
      email: widget.email,
      orderid: widget.orderid,
      orderdate: widget.orderdate,
    );
  }

  @override
  void initState() {
    adddata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Details',
                      style: TextStyle(
                        color: Color(0xff223263),
                        fontSize: 17,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.50,
                      ),
                    ),
                    Divider(),
                    Table(
                      children: [
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
                          Text(widget.name.toString()),
                        ]),
                        TableRow(children: [
                          Text(
                            "product Number",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.50,
                            ),
                          ),
                          Text(widget.productnumber.toString()),
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
                          Text(widget.orderid),
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
                          Text(widget.orderdate.toString()),
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
                          Text("Rs. " + widget.totalamount.toString()),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 50,
              child: Icon(
                Icons.done,
                size: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 14),
            Text(
              'Confirmated',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Thnak's for order",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () {
                Get.offAll(() => BottomNavbar());
              },
              child: Container(
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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: w - 120,
                      child: Text(
                        "Home Page",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
