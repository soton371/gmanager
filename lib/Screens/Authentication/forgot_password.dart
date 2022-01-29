import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:gmanager/constant.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Forgot password',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Please enter your email address or phone number below to receive your OTP code.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kGreyTextColor,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    controller: TextEditingController(), // Optional
                    textFieldType: TextFieldType.EMAIL,
                    decoration: const InputDecoration(
                        labelText: 'Email/Phone',
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: ''),
                  ),
                ),
                ButtonGlobalWithoutIcon(
                    buttontext: 'Send OTP',
                    buttonDecoration:
                        kButtonDecoration.copyWith(color: kMainColor),
                    onPressed: () {
                      //const CheckEMail().launch(context);
                      Navigator.pushNamed(context, '/otp');
                    },
                    buttonTextColor: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
