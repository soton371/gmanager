import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/GlobalComponents/button_global.dart';
// import '../../constant.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(
              //   height: 150.0,
              // ),
              const Image(
                image: AssetImage('assets/images/success.png'),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                'Congratulations',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris cras",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kGreyTextColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 50,),
              ButtonGlobalWithoutIcon(
                  buttontext: 'Continue',
                  buttonDecoration:
                      kButtonDecoration.copyWith(color: kMainColor),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  buttonTextColor: Colors.white),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
