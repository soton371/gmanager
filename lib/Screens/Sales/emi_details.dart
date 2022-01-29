import 'package:flutter/material.dart';
import 'package:gmanager/Screens/Customers/add_contact.dart';
import 'package:gmanager/Screens/Sales/sales_add_customer.dart';
import 'package:gmanager/Screens/Sales/sales_add_guarantor.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class EmiDetailsScreen extends StatefulWidget {
  const EmiDetailsScreen({Key? key}) : super(key: key);

  @override
  _EmiDetailsScreenState createState() => _EmiDetailsScreenState();
}

class _EmiDetailsScreenState extends State<EmiDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("EMI Details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          //add customer
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                const Icon(Icons.person_add_alt,color: kMainColor,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SalesAddCustomerScreen()));
                    },
                    child: Text("  Add Customer",style: TextStyle(color: kMainColor,fontSize: 16),)),
                const Spacer(),
                const Icon(Icons.person_add_alt,color: kMainColor,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SalesAddGuarantorScreen()));
                  },
                    child: Text("  Add Guarantor",style: TextStyle(color: kMainColor,fontSize: 16),)),
              ],
            ),
          ),
          //emi details
          Padding(
              padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        spreadRadius: 1,
                    )
                  ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Grant Total",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                      Text("75,000",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Down Payment",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                      Text("15,000",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rest of",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                      Text("60,000",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("EMI",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                      Text("5",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Per Installment",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                      Text("12,000",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Installment date",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                      Text("18 Jan 2022",style: TextStyle(fontSize: 16,color: kGreyTextColor),),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
