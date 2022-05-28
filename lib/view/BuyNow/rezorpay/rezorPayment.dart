// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';
// import 'package:shope/view/BuyNow/Conform/Conform.dart';
// import 'package:shope/view/BuyNow/FaildOrder/failedpayment.dart';

// class RazorPayment extends StatefulWidget {
//   final amount;
//   final email;
//   final number;
//   RazorPayment(
//       {Key? key,
//       required this.amount,
//       required this.email,
//       required this.number})
//       : super(key: key);

//   @override
//   _RazorPaymentState createState() => _RazorPaymentState();
// }

// class _RazorPaymentState extends State<RazorPayment> {
//   late Razorpay _razorpay = Razorpay();

//   @override
//   void initState() {
//     super.initState();
//     _razorpay = Razorpay();
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _razorpay.clear();
//   }

//   void openCheckout() async {
//     var options = {
//       'key': 'rzp_test_akWZe2ueB0sDFo',
//       'amount': widget.amount + 00,
//       'name': 'Acme Corp.',
//       'description': 'Fine T-Shirt',
//       'prefill': {'contact': widget.number, 'email': widget.email},
//       'external': {
//         'wallets': ['paytm']
//       }
//     };

//     try {
//       _razorpay.open(options);
//     } catch (e) {
//       debugPrint('Error: e');
//     }
//   }

//   void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     print("--------------------------${response.paymentId}");
//     Get.offAll(() => Conform());
//     Get.snackbar("Success", "${response.paymentId}");
//   }

//   void _handlePaymentError(PaymentFailureResponse response) {
//     Get.offAll(() => FailedPAyment());
//     print("--------------------------${response.message}");
//     Get.snackbar(
//         "ERROR:  + ${response.code.toString()} + ", " + ${response.message}!,");
//   }

//   void _handleExternalWallet(ExternalWalletResponse response) {
//     print("--------------------------${response.walletName}");
//     Get.offAll(() => Conform());
//     Get.snackbar("EXTERNAL_WALLET: + ${response.walletName}!", '');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(onPressed: openCheckout, child: Text("pay")),
//       ),
//     );
//   }
// }
