
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/constant.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  String radioItem = '';
  bool expanded = false;
  bool isGuarantor = false;
  bool isanotherGuarantor = false;

  bool whatsappIs = false;
  bool imoIs = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text(
          'Add new customer',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400
          ),
        ),
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Save",
              style: TextStyle(
                  color: kMainColor, fontWeight: FontWeight.w500, fontSize: 18),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Name"),
                        alignLabelWithHint: true,
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          label: Text("Phone"),
                        alignLabelWithHint: true,
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  //check box
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          activeColor: kMainColor,
                          value: whatsappIs,
                          onChanged: (v) {
                            setState(() {
                              whatsappIs = v!;
                            });
                          }),
                      Text(
                        "WhatsApp",
                        style: TextStyle(),
                      ),
                      Checkbox(
                          activeColor: kMainColor,
                          value: imoIs,
                          onChanged: (v) {
                            setState(() {
                              imoIs = v!;
                            });
                          }),
                      Text("IMO", style: TextStyle()),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Address"),
                        alignLabelWithHint: true,
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Group"),
                        alignLabelWithHint: true,
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  //customer
                  ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {},
                    animationDuration: const Duration(seconds: 1),
                    elevation: 0,
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                child: Text(
                                  '    Add More Info',
                                  style: TextStyle(
                                    //fontSize: 20.0,
                                    color: kMainColor,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    expanded == false
                                        ? expanded = true
                                        : expanded = false;
                                  });
                                },
                              ),
                            ],
                          );
                        },
                        body: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: GestureDetector(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: const [
                                    Center(
                                      child: Image(
                                        image: AssetImage('assets/images/smartcard.png'),
                                        height: 80,
                                      ),
                                    ),
                                    Center(child: Icon(Icons.camera_alt_outlined, color: Colors.white,size: 30,))
                                  ],
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
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  label: Text("E-mail"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  label: Text("WhatsApp"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  label: Text("IMO"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  label: Text("NID No"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        isExpanded: expanded,
                      ),
                    ],
                  ),
                  //Guarantor
                  ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {},
                    animationDuration: const Duration(seconds: 1),
                    elevation: 0,
                    dividerColor: Colors.white,
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                child: Text(
                                  '    Add Guarantor',
                                  style: TextStyle(
                                    //fontSize: 20.0,
                                    color: kMainColor,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {isGuarantor == false
                                        ? isGuarantor = true
                                        : isGuarantor = false;
                                  });
                                },
                              ),
                            ],
                          );
                        },
                        body: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: GestureDetector(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: const [
                                    Center(
                                      child: Image(
                                        image: AssetImage('assets/images/smartcard.png'),
                                        height: 80,
                                      ),
                                    ),
                                    Center(child: Icon(Icons.camera_alt_outlined, color: Colors.white,size: 30,))
                                  ],
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
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("Guarantor"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  label: Text("Mobile"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("Address"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("Relation"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  label: Text("E-Mail"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  label: Text("WhatsApp"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  label: Text("IMO"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  label: Text("NID No"),
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                            ///////////////////////////
                            //  Another guarantor
                            ExpansionPanelList(
                              expansionCallback: (int index, bool isExpanded) {},
                              animationDuration: const Duration(seconds: 1),
                              elevation: 0,
                              dividerColor: Colors.white,
                              children: [
                                ExpansionPanel(
                                  headerBuilder: (BuildContext context, bool isExpanded) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextButton(
                                          child: Text(
                                            '    Add Another Guarantor',
                                            style: TextStyle(
                                              //fontSize: 20.0,
                                              color: kMainColor,
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {isanotherGuarantor == false
                                                ? isanotherGuarantor = true
                                                : isanotherGuarantor = false;
                                            });
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                  body: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: GestureDetector(
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: const [
                                              Center(
                                                child: Image(
                                                  image: AssetImage('assets/images/smartcard.png'),
                                                  height: 80,
                                                ),
                                              ),
                                              Center(child: Icon(Icons.camera_alt_outlined, color: Colors.white,size: 30,))
                                            ],
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
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.center,
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
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.center,
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
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            label: Text("Guarantor"),
                                            alignLabelWithHint: true,
                                            contentPadding: const EdgeInsets.all(0),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30,),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          keyboardType: TextInputType.phone,
                                          decoration: const InputDecoration(
                                            label: Text("Mobile"),
                                            alignLabelWithHint: true,
                                            contentPadding: const EdgeInsets.all(0),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30,),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            label: Text("Address"),
                                            alignLabelWithHint: true,
                                            contentPadding: const EdgeInsets.all(0),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30,),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            label: Text("Relation"),
                                            alignLabelWithHint: true,
                                            contentPadding: const EdgeInsets.all(0),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30,),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          keyboardType: TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            label: Text("E-Mail"),
                                            alignLabelWithHint: true,
                                            contentPadding: const EdgeInsets.all(0),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30,),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          keyboardType: TextInputType.phone,
                                          decoration: const InputDecoration(
                                            label: Text("WhatsApp"),
                                            alignLabelWithHint: true,
                                            contentPadding: const EdgeInsets.all(0),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30,),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          keyboardType: TextInputType.phone,
                                          decoration: const InputDecoration(
                                            label: Text("IMO"),
                                            alignLabelWithHint: true,
                                            contentPadding: const EdgeInsets.all(0),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30,),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                            label: Text("NID No"),
                                            alignLabelWithHint: true,
                                            contentPadding: const EdgeInsets.all(0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  isExpanded: isanotherGuarantor,
                                ),
                              ],
                            ),
                          ],
                        ),
                        isExpanded: isGuarantor,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Row(
            //   children: [
            //     Expanded(
            //       child: RadioListTile(
            //         contentPadding: EdgeInsets.zero,
            //         groupValue: radioItem,
            //         title: const AutoSizeText('Customer',maxLines: 1,),
            //         value: 'Customer',
            //         onChanged: (value) {
            //           setState(() {
            //             radioItem = value.toString();
            //           });
            //         },
            //       ),
            //     ),
            //     Expanded(
            //       child: RadioListTile(
            //         contentPadding: EdgeInsets.zero,
            //         groupValue: radioItem,
            //         title: const AutoSizeText('Supplier',maxLines: 1,),
            //         value: 'Supplier',
            //         onChanged: (value) {
            //           setState(() {
            //             radioItem = value.toString();
            //           });
            //         },
            //       ),
            //     ),
            //     Expanded(
            //       child: RadioListTile(
            //         contentPadding: EdgeInsets.zero,
            //         activeColor: kMainColor,
            //         groupValue: radioItem,
            //         title: const AutoSizeText('Vendor',maxLines: 1,),
            //         value: 'Vendor',
            //         onChanged: (value) {
            //           setState(() {
            //             radioItem = value.toString();
            //           });
            //         },
            //       ),
            //     ),
            //   ],
            // ),

            // ButtonGlobalWithoutIcon(
            //     buttontext: 'Save',
            //     buttonDecoration:
            //         kButtonDecoration.copyWith(color: kMainColor),
            //     onPressed: null,
            //     buttonTextColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
