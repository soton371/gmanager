import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Image(
                          image: AssetImage('assets/images/profileimage.png'),
                          height: 100.0,
                          width: 100.0,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: GestureDetector(
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
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: kMainColor,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.white, width: 4.0),
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'Alex Smith',
                  ),
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Owner Name',
                      border: const OutlineInputBorder().copyWith(
                          borderSide: const BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'alexsmith@gmail.com',
                  ),
                  decoration: InputDecoration(
                      border: const OutlineInputBorder().copyWith(
                          borderSide: const BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Email Address',
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: '+880 1767 112233',
                  ),
                  decoration: InputDecoration(
                      border: const OutlineInputBorder().copyWith(
                          borderSide: const BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Phone Number',
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'Alex Store',
                  ),
                  decoration: InputDecoration(
                      border: const OutlineInputBorder().copyWith(
                          borderSide: const BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Company & Business Name',
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 60,
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
                  height: 60,
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
              ButtonGlobalWithoutIcon(
                buttontext: 'Save',
                buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
                onPressed: () {
                  Navigator.pop(context);
                },
                buttonTextColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
