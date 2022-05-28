import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:shope/view/BuyNow/Conform/Conform.dart';
import 'package:shope/view/BuyNow/FaildOrder/failedpayment.dart';

class AddresFill extends StatefulWidget {
  final pcat;
  final pname;
  final brend;
  final pimage;
  final price;
  final productid;
  AddresFill({
    Key? key,
    required this.price,
    required this.pimage,
    required this.productid,
    required this.pcat,
    required this.brend,
    required this.pname,
  }) : super(key: key);

  @override
  _AddresFillState createState() => _AddresFillState();
}

class _AddresFillState extends State<AddresFill> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();

  TextEditingController lastcontroller = TextEditingController();
  TextEditingController firsrNamecontroller = TextEditingController();

  TextEditingController streetcontroller = TextEditingController();

  TextEditingController street2controller = TextEditingController();

  TextEditingController statecontroller = TextEditingController();

  TextEditingController zipcontroller = TextEditingController();

  TextEditingController phonecontroller = TextEditingController();

  TextEditingController emilcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shope"),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: ListView(
              children: <Widget>[
                filled(name: "First Name ", hint: "Name"),
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  validator: (text) {
                    if (namecontroller.text == '') {
                      return 'Fill Name';
                    }
                  },
                  key: UniqueKey(),
                  controller: namecontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintText: "Name",
                  ),
                ),
                SizedBox(height: 13),
                filled(name: "Last Name ", hint: "Oveck"),
                TextFormField(
                  key: UniqueKey(),
                  validator: (text) {
                    if (text == '') {
                      return 'Fill Last Name';
                    }
                  },
                  controller: lastcontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintText: "last Name",
                  ),
                ),
                SizedBox(height: 13),
                filled(name: "Street Address", hint: "floor/build no."),
                TextFormField(
                  validator: (text) {
                    if (text == '') {
                      return 'Fill street';
                    }
                  },
                  controller: streetcontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintText: "91, nandanvan soc,",
                  ),
                ),
                SizedBox(height: 13),
                filled(name: "Street Address 2 ", hint: "Area /landmark"),
                TextFormField(
                  controller: street2controller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintText: "sub address/ladmark",
                  ),
                ),
                SizedBox(height: 13),
                filled(name: "State/Province/Region", hint: "state"),
                TextFormField(
                  validator: (text) {
                    if (text == '') {
                      return 'Fill State';
                    }
                  },
                  controller: statecontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintText: "State",
                  ),
                ),
                SizedBox(height: 13),
                filled(name: "Zip Code", hint: "395010"),
                TextFormField(
                  validator: (text) {
                    if (text == '') {
                      return 'Fill zip code';
                    }
                  },
                  controller: zipcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintText: "304020",
                  ),
                ),
                SizedBox(height: 13),
                filled(
                  name: "Phone Number",
                  hint: "966492...",
                ),
                TextFormField(
                  validator: (text) {
                    if (text == '') {
                      return 'Fill Number';
                    }
                  },
                  controller: phonecontroller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintText: "+91 959952939",
                  ),
                ),
                SizedBox(height: 13),
                filled(name: "Email", hint: "xyz@gmail.com"),
                TextFormField(
                  validator: (text) {
                    if (text == '') {
                      return 'Fill Email';
                    }
                  },
                  controller: emilcontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintText: "xyz@gmail.com",
                  ),
                ),
                SizedBox(height: 13),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          )),
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
                      'Rs. ' + widget.price,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      print(namecontroller);

                      if (!_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        print(namecontroller);
                      } else {
                        try {
                          openCheckout();
                        } catch (e) {
                          Get.snackbar(
                              "error", "Payment Syatem still not working");
                        }
                      }
                    },
                    child: Text('Payment')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column filled({name, hint, contoller, type}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            color: Color(0xff223263),
            fontSize: 15,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
            letterSpacing: 0.50,
          ),
        ),
        SizedBox(height: 6),
      ],
    );
  }

  late Razorpay _razorpay = Razorpay();

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_live_AXcqo4A06jUEZO',
      'amount': widget.price.toString() + "00",
      'name': widget.pname.toString(),
      'description': widget.pname.toString(),
      'prefill': {
        'contact': phonecontroller.value.toString(),
        'email': emilcontroller.text.toString(),
      },
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("--------------------------${response.paymentId}");
    Get.offAll(() => Conform(
          pname: widget.pname,
          pimage: widget.pimage,
          pcat: widget.pcat,
          brand: widget.brend,
          firstname: namecontroller.text.toString(),
          lastname: lastcontroller.text.toString(),
          streetaddres: streetcontroller.text,
          street2addres: street2controller.text,
          state: statecontroller.text,
          zipcode: zipcontroller.text,
          phone: phonecontroller.text,
          email: emilcontroller.text,
          name: namecontroller.text.toString() + lastcontroller.text.toString(),
          orderid: response.paymentId,
          orderdate:
              "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
          productnumber: widget.productid ?? '',
          totalamount: widget.price,
        ));
    Get.snackbar("Success", "${response.paymentId}");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Get.offAll(() => FailedPAyment());
    print("--------------------------${response.message}");
    Get.snackbar(
        "ERROR: Payment Failed ", " Order Canele");
  }
}
