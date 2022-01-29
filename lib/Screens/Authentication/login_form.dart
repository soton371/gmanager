import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

// import '../../constant.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/playstore.png'),
                  height: 100,
                  width: 100,
                ),
                // const SizedBox(
                //   height: 30.0,
                // ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 60.0,
                    child: AppTextField(
                      textFieldType: TextFieldType.PHONE,
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        labelText: 'Email/Phone Number',
                        hintText: '1767 432556',
                        border: const OutlineInputBorder(),
                        prefix: CountryCodePicker(
                          padding: EdgeInsets.zero,
                          onChanged: print,
                          initialSelection: 'BD',
                          showFlag: false,
                          showDropDownButton: true,
                          alignLeft: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    controller: TextEditingController(), // Optional
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/forgotPassword');
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: kGreyTextColor,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
                ButtonGlobalWithoutIcon(
                    buttontext: 'Log In',
                    buttonDecoration:
                        kButtonDecoration.copyWith(color: kMainColor),
                    onPressed: (){
                      Navigator.pushNamed(context, '/otp');
                    },
                    buttonTextColor: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Haven\'t any account?',
                      style: TextStyle(
                          color: kGreyTextColor, fontSize: 15.0),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
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
