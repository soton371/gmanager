import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class SalesAddCustomerScreen extends StatefulWidget {
  const SalesAddCustomerScreen({Key? key}) : super(key: key);

  @override
  _SalesAddCustomerScreenState createState() => _SalesAddCustomerScreenState();
}

class _SalesAddCustomerScreenState extends State<SalesAddCustomerScreen> {

  bool whatsappIs = false;
  bool imoIs = false;

  String nidFrontDark = "assets/images/smartcard.png";
  String nidBackDark = "assets/images/smartbackremovebdark.png";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text(
          'Add customer',
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
            const SizedBox(height: 30,),
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
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NID photo: ",style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.6)
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(child: GestureDetector(
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
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(nidFrontDark)),
                            ),
                            child: Icon(Icons.camera_alt_outlined,color: Colors.white,)
                        ),
                      )),
                      SizedBox(width: 10,),
                      Expanded(child: GestureDetector(
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
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(nidBackDark)),
                            ),
                            child: Icon(Icons.camera_alt_outlined,color: Colors.white,)
                        ),
                      )),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
