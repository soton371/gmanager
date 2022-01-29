import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/GlobalComponents/button_global.dart';

// import '../../constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Image(
              image: AssetImage('assets/images/playstore.png'),
              height: 100,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Create a Free Account',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: ButtonGlobalWithoutIcon(
                  buttontext: 'Login',
                  buttonTextColor: Colors.white,
                  buttonDecoration: kButtonDecoration.copyWith(
                    color: kMainColor,
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/loginForm');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0),
              child: Center(
                child: ButtonGlobalWithoutIcon(
                  buttontext: 'Register',
                  buttonTextColor: Colors.white,
                  buttonDecoration: kButtonDecoration.copyWith(
                    color: const Color(0xFF10AC84).withOpacity(0.7),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/signup');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
