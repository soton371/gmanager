import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';

class EmiDetailsEditScreen extends StatefulWidget {
  const EmiDetailsEditScreen({Key? key}) : super(key: key);

  @override
  _EmiDetailsEditScreenState createState() => _EmiDetailsEditScreenState();
}

class _EmiDetailsEditScreenState extends State<EmiDetailsEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        title: const Text("EMI Details / Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: kMainColor,width: 2)
                        ),
                      ),
                      //SizedBox(width: 5,),
                      Text(" Product",style: TextStyle(fontSize: 17,color: kMainColor),)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: kMainColor,width: 2)
                        ),
                      ),
                      //SizedBox(width: 5,),
                      Text(" Customer",style: TextStyle(fontSize: 17,color: kMainColor),)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: kMainColor,width: 2)
                        ),
                      ),
                      //SizedBox(width: 5,),
                      Text(" Guarantor",style: TextStyle(fontSize: 17,color: kMainColor),)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: kDarkWhite,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              child: const Text("Product details",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),),
            ),
            const SizedBox(height: 5,),
            //calculation section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Test Product-5",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                      Text("1pcs x 75,000",style: TextStyle(fontSize: 12,color: kGreyTextColor),),
                    ],
                  ),
                  const Text("75,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const Divider(color: kMainColor,thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("75,000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Discount"),
                      Text("0"),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(""),
                      Text("75,000"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Previous dues"),
                      Text("0"),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Grand total"),
                      Text("75,000"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              color: kDarkWhite,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              child: const Text("EMI details",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Grand total",style: TextStyle(fontWeight: FontWeight.w500),),
                  Text("75,000",style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Down payment"),
                  Text("15,000"),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Rest of"),
                  Text("60,000"),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("No. of EMI"),
                  Text("5"),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Per installment"),
                  Text("12,000"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Installment date"),
                  Text("12 Jun 2022"),
                ],
              ),
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
