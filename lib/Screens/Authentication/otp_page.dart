import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/GlobalComponents/otp_form.dart';
import 'package:gmanager/constant.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'OTP',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Put the OTP number below sent to your email or phone number",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kGreyTextColor,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                OtpForm(pressed:  (){
                  Navigator.pushNamed(context, '/success');
                },),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn\'t get any code?',
                      style: TextStyle(
                        color: kGreyTextColor,
                        fontSize: 15.0,
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Resend Code',
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
