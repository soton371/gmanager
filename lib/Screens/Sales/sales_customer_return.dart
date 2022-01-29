import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:gmanager/constant.dart';

class SalesCustomerReturnScreen extends StatefulWidget {
  const SalesCustomerReturnScreen({Key? key}) : super(key: key);

  @override
  _SalesCustomerReturnScreenState createState() => _SalesCustomerReturnScreenState();
}

class _SalesCustomerReturnScreenState extends State<SalesCustomerReturnScreen> {

  bool selectReadOnly = true;
  String name = "Shihab Uddin";
  String address = "Pallabi, Dhaka-1216";
  String mobile = "01919200100";
  String invoiceNo = "I0001";
  String invoiceDate = "24 Jan 2022";
  String salesType = "Default";
  String salesPerson = "Rahat Iqbal";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Customer Return",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        titleSpacing: 0,
        actions: [
          selectReadOnly? IconButton(
            onPressed: (){
              setState(() {
                selectReadOnly = !selectReadOnly;
              });
            },
            icon: Icon(Icons.edit,color: Colors.black,),
          ):TextButton(
              onPressed: (){
                setState(() {
                  selectReadOnly = !selectReadOnly;
                });
              },
              child: Text("Save",style: TextStyle(color: kMainColor,fontSize: 18),)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1),
                    )
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  readOnly: selectReadOnly,
                  decoration: InputDecoration(
                    hintText: name,
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    //////prefix: SizedBox(width: 10,),
                    //contentPadding: EdgeInsets.all(0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1),
                    ),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  readOnly: selectReadOnly,
                  decoration: InputDecoration(
                    hintText: address,
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    //contentPadding: EdgeInsets.all(0)
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1),
                    )
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  readOnly: selectReadOnly,
                  decoration: InputDecoration(
                    hintText: mobile,
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    //contentPadding: EdgeInsets.all(0)
                    //prefix: SizedBox(width: 10,)
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: Row(
                  children: [
                    Text("Invoice no: ",style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        readOnly: selectReadOnly,
                        decoration: InputDecoration(
                          hintText: invoiceNo,
                          hintStyle: TextStyle(color: Colors.black,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: Row(
                  children: [
                    Text("Invoice Date: ",style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        readOnly: selectReadOnly,
                        decoration: InputDecoration(
                          hintText: invoiceDate,
                          hintStyle: TextStyle(color: Colors.black,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: Row(
                  children: [
                    Text("Sales type: ",style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        readOnly: selectReadOnly,
                        decoration: InputDecoration(
                          hintText: salesType,
                          hintStyle: TextStyle(color: Colors.black,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: Row(
                  children: [
                    Text("Sales Person: ",style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        readOnly: selectReadOnly,
                        decoration: InputDecoration(
                          hintText: salesPerson,
                          hintStyle: TextStyle(color: Colors.black,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
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
                    children: [
                      SizedBox(
                        width: 200,
                        height: 30,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: "Test Product-1",
                            contentPadding: EdgeInsets.all(0),
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 30,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                    hintText: "2pcs",
                                  contentPadding: EdgeInsets.all(0),
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(fontSize: 12,color: kGreyTextColor),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: TextField(
                                readOnly: true,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: "x 2,500",
                                  contentPadding: EdgeInsets.all(0),
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(fontSize: 12,color: kGreyTextColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Text("Test Product-1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                      //Text("2pcs x 2,500",style: TextStyle(fontSize: 12,color: kGreyTextColor),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.delete_outline),
                      SizedBox(height: 5,),
                      Text("5,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),
                    ],
                  ),
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
                      Text("5,000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Previous dues"),
                      Text("6,000"),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("New dues"),
                      Text("1,000"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Advance"),
                      Text("5,000"),
                    ],
                  ),
                  Divider(),
                  Text("or"),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Previous Advance"),
                      Text("6,000"),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("New Advance"),
                      Text("1,000"),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: ElevatedButton(
                onPressed: (){},
                child: const Text("Returns Create Invoice",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                style: ElevatedButton.styleFrom(
                  primary: kMainColor,
                  minimumSize: Size(MediaQuery.of(context).size.width, 20),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
