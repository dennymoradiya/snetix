import 'package:flutter/material.dart';
import 'package:shope/view/BottomBar/Bottomnavbar.dart';

class P1 extends StatefulWidget {
  const P1({Key? key}) : super(key: key);

  @override
  _P1State createState() => _P1State();
}

class _P1State extends State<P1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          // mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xff40bfff),
              ),
            ),
            SizedBox(height: 22.17),
            Text(
              "Welcome to E-com",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff223263),
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                letterSpacing: 0.50,
              ),
            ),
            SizedBox(height: 22.17),
            Text(
              "Sign in to continue",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff9098b1),
                fontSize: 12,
                letterSpacing: 0.50,
              ),
            ),
            SizedBox(height: 22.17),
            Container(
              width: 343,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xff40bfff),
                  width: 1,
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 2,
                      vertical: 4,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 20,
                          height: 15.50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlutterLogo(size: 15.500018119812012),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "rex4dom@gmail.com",
                    style: TextStyle(
                      color: Color(0xff9098b1),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.17),
            Container(
              width: 343,
              height: 74,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffeaefff),
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 343,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xfffb7181),
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          padding: const EdgeInsets.all(2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: FlutterLogo(size: 20),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          child: Text(
                            "•••••••••••••••••",
                            style: TextStyle(
                              color: Color(0xff9098b1),
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    " Oops! Your Password Is Not Correct ",
                    style: TextStyle(
                      color: Color(0xfffb7181),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.17),
            Container(
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (a) =>BottomNavbar()));
                    },
                    child: SizedBox(
                      width: 311,
                      child: Text(
                        "Sign In",
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.17),
            Container(
              width: 343,
              height: 21,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 134,
                    height: 1,
                  ),
                  SizedBox(width: 25.50),
                  Text(
                    "OR",
                    style: TextStyle(
                      color: Color(0xff9098b1),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.07,
                    ),
                  ),
                  SizedBox(width: 25.50),
                  Container(
                    width: 137,
                    height: 1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.17),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffeaefff),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3d40bfff),
                    blurRadius: 30,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlutterLogo(size: 16.00006866455078),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Login with Google",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff9098b1),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.17),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffeaefff),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3d40bfff),
                    blurRadius: 30,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: FlutterLogo(size: 24),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Login with facebook",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff9098b1),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.17),
            Text(
              "Forgot Password?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff40bfff),
                fontSize: 12,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                letterSpacing: 0.50,
              ),
            ),
            SizedBox(height: 22.17),
            Text(
              "Don’t have a account? Register",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                letterSpacing: 0.50,
              ),
            ),
            SizedBox(height: 22.17),
            Container(
              width: 375,
              height: 34,
              padding: const EdgeInsets.only(
                left: 121,
                right: 120,
                top: 21,
                bottom: 8,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Opacity(
                    opacity: 0.50,
                    child: Container(
                      width: 134,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xffd1d6e7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
