import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomerInvoiceScreen extends StatefulWidget {
  const CustomerInvoiceScreen({Key? key}) : super(key: key);

  @override
  _CustomerInvoiceScreenState createState() => _CustomerInvoiceScreenState();
}

class _CustomerInvoiceScreenState extends State<CustomerInvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Customer Invoice",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.white,
        leading: Icon(Icons.close, color: Colors.black,),
        titleSpacing: 0,
        actions: const [
          Icon(Icons.share_outlined,color: Colors.black,),
          SizedBox(width: 20,),
          Icon(Icons.print_outlined,color: Colors.black,),
          SizedBox(width: 20,),
          Icon(Icons.download_outlined,color: Colors.black,),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("S.A Corporation",style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500,fontSize: 15),),
                        SizedBox(height: 8,),
                        Text("23 Farmgate, Rajabazar, Dhaka-1205",style: TextStyle(color: kGreyTextColor,fontSize: 13),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Mobile: +8801919200100",style: TextStyle(color: kGreyTextColor,fontSize: 13),),
                        SizedBox(height: 8,),
                        Text("E-mail: sacorpo@gmail.com",style: TextStyle(color: kGreyTextColor,fontSize: 13),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
                padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Invoice Date: 17 Jan 2022",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),),
                  SizedBox(height: 10,),
                  Text("Shihab Uddin",style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),),
                  SizedBox(height: 10,),
                  Text("Pallabi, Mirpur, Dhaka-1216",style: TextStyle(color: kGreyTextColor,fontSize: 13),),
                  SizedBox(height: 10,),
                  Text("Mobile Number: +8801919250104",style: TextStyle(color: kGreyTextColor,fontSize: 13),),
                  SizedBox(height: 10,),
                  Text("Sales Type: Default",style: TextStyle(color: kGreyTextColor,fontSize: 13),),
                  SizedBox(height: 10,),
                  Text("Sales Person: Rokonur Jaman",style: TextStyle(color: kGreyTextColor,fontSize: 13),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            //description
            Container(
              color: kDarkWhite,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Description",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),),
                  Text("Amount",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Test Product-1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                      Text("2pcs x 2,500",style: TextStyle(fontSize: 12,color: kGreyTextColor),),
                    ],
                  ),
                  Text("5,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Test Product-2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                      Text("3pcs x 2,500",style: TextStyle(fontSize: 12,color: kGreyTextColor),),
                    ],
                  ),
                  Text("6,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500))
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Test Product-3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                      Text("10pcs x 700",style: TextStyle(fontSize: 12,color: kGreyTextColor),),
                    ],
                  ),
                  Text("7,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500))
                ],
              ),
            ),
            Divider(color: kMainColor,thickness: 1.5,),
            //SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("18,000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Discount"),
                      Text("0"),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Total"),
                      Text("18,000"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Previous dues"),
                      Text("18,000"),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Grand total"),
                      Text("36,000"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Received"),
                      Text("30,000"),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Dues"),
                      Text("6,000"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
