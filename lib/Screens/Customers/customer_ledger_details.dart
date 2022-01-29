import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerLedgerDetails extends StatefulWidget {
  const CustomerLedgerDetails({Key? key}) : super(key: key);

  @override
  _CustomerLedgerDetailsState createState() => _CustomerLedgerDetailsState();
}

class _CustomerLedgerDetailsState extends State<CustomerLedgerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: const Icon(Icons.arrow_back,color: Colors.black,),
        // titleSpacing: 0,
        title: Text(
          "Customer Ledger",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profileimage.png"),
                        radius: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tanim Ahmed",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "৳20050 (Sales)",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: kGreyTextColor),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.call_outlined,
                        color: kGreyTextColor,
                        size: 20,
                      ),
                      Text(
                        "    +8801845632109",
                        style: TextStyle(
                            fontSize: 15, color: kGreyTextColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: kGreyTextColor,
                        size: 20,
                      ),
                      Text("    Dhaka, Bangladesh",
                          style: TextStyle(
                              fontSize: 15, color: kGreyTextColor))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            //description
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 10),
                        color: kMainColor.withOpacity(0.15),
                        child: Text(
                          "Description",
                          style:
                              TextStyle(fontWeight: FontWeight.w500),
                        )),
                    flex: 2,
                  ),
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          color: kGreyTextColor.withOpacity(0.2),
                          child: const Text(""))),
                  Expanded(
                      child: Container(
                          alignment: Alignment.centerRight,
                          color: kMainColor.withOpacity(0.15),
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("Advance Dues",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500)))),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Previous Deues 10-10-2021",
                        style:
                        TextStyle(),
                      )),
                  flex: 2,
                ),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,

                        child: const Text(""))),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: Text("1500",
                            style: TextStyle()))),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Expanded(
                  child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Product1 (2pc) Product2 (2pc) 11-11-2021",
                        style:
                        TextStyle(),
                      )),
                  flex: 2,
                ),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: const Text("100x2+200x2=600"))),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: Text("500",
                            style: TextStyle()))),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
