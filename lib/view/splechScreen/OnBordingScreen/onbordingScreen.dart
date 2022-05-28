import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/BottomBar/Bottomnavbar.dart';

class OnbordingScreen extends StatefulWidget {
  @override
  _OnbordingScreenState createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  late User user;
  final int _numPages = 3;
  PageController _pageController = PageController(initialPage: 0);
  int _currentpage = 0;

  List<Widget> _buildPageIndecator() {
    List<Widget> list = [];
    for (var i = 0; i < _numPages; i++) {
      list.add(i == _currentpage ? _indicat(true) : _indicat(false));
    }
    return list;
  }

  Widget _indicat(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Color(0xff7b51d3),
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xff3594dd),
                Color(0xff4563db),
                Color(0xff3036d5),
                Color(0xff5b16db),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SafeArea(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: _currentpage != _numPages - 1
                          ? Text(
                              'Skip',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )
                          : Text(''),
                      onPressed: () {
                        _pageController.jumpToPage(3);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        _currentpage = page;
                      });
                    },
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage('assets/images/o1.jpg'),
                                height: 300,
                                width: 300,
                              ),
                            ),
                            SizedBox(height: 30),
                            SizedBox(
                              child: Text(
                                "Choose Best Quielity Product's",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: "font2",
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Shope with Best Quilty assurence",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage('assets/images/o2.jpg'),
                                height: 300,
                                width: 300,
                              ),
                            ),
                            SizedBox(height: 30),
                            SizedBox(
                              child: Text(
                                "Live your life with great brand's",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: "font2",
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Select in wild rang product's",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage('assets/images/o3.jpg'),
                                height: 300,
                                width: 300,
                              ),
                            ),
                            // SizedBox(height: 30),
                            Text(
                              "Let start Collecting item's",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "font2",
                                  color: Colors.white),
                            ),
                            // SizedBox(height: 15),
                            Text(
                              "let's, shop with snetix",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndecator(),
                ),
                _currentpage != _numPages - 1
                    ? Expanded(
                        child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: ElevatedButton(
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                                SizedBox(width: 10.0),
                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.white, size: 30.0),
                              ],
                            )),
                      ))
                    : Expanded(
                        child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: ElevatedButton(
                            onPressed: () => signInWithGoogle(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  ' Login ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                                SizedBox(width: 10.0),
                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.white, size: 30.0),
                              ],
                            )),
                      ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signInWithGoogle() async {
    print("Sign in now");
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential).whenComplete(
          () async => {
            user = FirebaseAuth.instance.currentUser!,
            u = user.displayName,
            box.put('cuurentuid', user.uid.toString()),
            box.put('email', user.email.toString()),
            box.put('photo', user.photoURL.toString()),
            box.put('name', user.displayName.toString()),
            myUid = box.get('cuurentuid'),
            myNAME = box.get('name'),
            myEMAIL = box.get('email'),
            myPic = box.get('photo'),
            sendData(
                name: user.displayName == null
                    ? 'Set Name'
                    : user.displayName.toString(),
                email: user.email,
                photoUrl: user.photoURL,
                uid: user.uid),
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (s) => BottomNavbar())),
          },
        );
  }
}
