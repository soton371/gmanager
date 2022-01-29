import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

// import '../../constant.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({Key? key}) : super(key: key);

  @override
  _ProfileSetupState createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  String dropdownLangValue = 'English';
  String initialCountry = 'Bangladesh';
  String dropdownValue = 'Fashion Store';

  DropdownButton<String> getCategory() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String category in businessCategory) {
      var item = DropdownMenuItem(
        child: Text(category),
        value: category,
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: dropdownValue,
      onChanged: (value) {
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }

  DropdownButton<String> getLanguage() {
    List<DropdownMenuItem<String>> dropDownLangItems = [];
    for (String lang in language) {
      var item = DropdownMenuItem(
        child: Text(lang),
        value: lang,
      );
      dropDownLangItems.add(item);
    }
    return DropdownButton(
      items: dropDownLangItems,
      value: dropdownLangValue,
      onChanged: (value) {
        setState(() {
          dropdownLangValue = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Setup Your Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white10,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Update your profile to connect your doctor with better impression",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  child: const Image(
                    image: AssetImage('assets/images/propic.png'),
                  ),
                  onTap: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: SizedBox(
                        height: 200.0,
                        width: MediaQuery.of(context).size.width - 80,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.photo_library_rounded,
                                    size: 60.0,
                                    color: kMainColor,
                                  ),
                                  Text(
                                    'Gallery',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: kMainColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 40.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.camera,
                                    size: 60.0,
                                    color: kGreyTextColor,
                                  ),
                                  Text(
                                    'Camera',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: kGreyTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 60.0,
                  child: FormField(
                    builder: (FormFieldState<dynamic> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Business Category',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child:
                            DropdownButtonHideUnderline(child: getCategory()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 60.0,
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    readOnly: true,
                    controller: TextEditingController(text: initialCountry),
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: kGreyTextColor),
                      ),
                      labelText: 'Country',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                      hintText: 'Bangladesh',
                      border: const OutlineInputBorder(),
                      prefix: CountryCodePicker(
                        padding: EdgeInsets.zero,
                        onChanged: (CountryCode countrycode) {
                          setState(() {
                            initialCountry = countrycode.name!;
                          });
                        },
                        initialSelection: 'BD',
                        showOnlyCountryWhenClosed: false,
                        showFlagMain: true,
                        showCountryOnly: false,
                        showDropDownButton: true,
                        alignLeft: false,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 60.0,
                  child: FormField(
                    builder: (FormFieldState<dynamic> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Language',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child:
                            DropdownButtonHideUnderline(child: getLanguage()),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ButtonGlobal(
                iconWidget: Icons.arrow_forward,
                buttontext: 'Continue',
                iconColor: Colors.white,
                buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
                onPressed: () {
                  Navigator.pushNamed(context, '/otp');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
