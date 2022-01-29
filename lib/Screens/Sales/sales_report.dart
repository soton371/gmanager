// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:intl/intl.dart';
// import 'package:flutter/services.dart' show rootBundle;

class SalesReportScreen extends StatefulWidget {
  const SalesReportScreen({Key? key}) : super(key: key);

  @override
  _SalesReportScreenState createState() => _SalesReportScreenState();
}

class _SalesReportScreenState extends State<SalesReportScreen> {
  final dateStart = TextEditingController();
  final dateEnd = TextEditingController();
  //var data;
  String dropDownValue = 'All';

  // var items = [
  //   'All',
  //   'Meharab Hossen',
  //   'Minarul Hasan',
  //   'Rakib Islam',
  //   'Kamrul Hasan',
  // ];


  // Future getData() async {
  //   var jsonData = await rootBundle.loadString("assets/jsonfiles/data.json");
  //   setState(() {
  //     data = json.decode(jsonData);
  //   });
  // }


  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   //getData();
  // }

  @override
  void dispose() {
    dateStart.dispose();
    dateEnd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        titleSpacing: 0,
        title: const Text(
          "Sales Report",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //date section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        readOnly: true,
                        onTap: () async {
                          var date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          dateStart.text =
                              DateFormat("dd MMM yyyy").format(date!);
                        },
                        controller: dateStart,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Start Date',
                            hintText: 'Pick Start Date'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: AppTextField(
                        textFieldType: TextFieldType.OTHER,
                        readOnly: true,
                        onTap: () async {
                          var date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          dateEnd.text = DateFormat("dd MMM yyyy").format(date!);
                        },
                        controller: dateEnd,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'End Date',
                            hintText: 'Pick End Date'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //imput&dropdown section
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black38,width: 1)
                  )
                ),
                child: Row(
                  children: [
                    const Expanded(
                        child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Product Name / All",
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none
                      ),
                    )),
                    PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                              child: GestureDetector(
                                //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                child: const Text("Test product-1",
                                    style:
                                    TextStyle(fontSize: 14)),
                              )),
                          PopupMenuItem(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                    child: const Text("Test product-2",
                                        style:
                                        TextStyle(fontSize: 14)),
                                  )
                                ],
                              )),
                          PopupMenuItem(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                    child: const Text("Test product-3",
                                        style:
                                        TextStyle(fontSize: 14)),
                                  )
                                ],
                              )),
                          const PopupMenuItem(
                              child: Text(
                                "Test product-4",
                                style: TextStyle(fontSize: 14),
                              )),
                        ],
                        child: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black38,width: 1)
                  )
                ),
                child: Row(
                  children: [
                    const Expanded(
                        child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Customer Name / All",
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none
                      ),
                    )),
                    PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                              child: GestureDetector(
                                //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                child: const Text("Kamrul Hasan",
                                    style:
                                    TextStyle(fontSize: 14)),
                              )),
                          PopupMenuItem(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                    child: const Text("Rakib Islam",
                                        style:
                                        TextStyle(fontSize: 14)),
                                  )
                                ],
                              )),
                          PopupMenuItem(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                    child: const Text("Minarul Hasan",
                                        style:
                                        TextStyle(fontSize: 14)),
                                  )
                                ],
                              )),
                          PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text(
                                    "Meharab Hossen",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              )),
                        ],
                        child: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black38,width: 1)
                    )
                ),
                child: Row(
                  children: [
                    const Expanded(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "Sales Person",
                              contentPadding: EdgeInsets.all(0),
                              border: InputBorder.none
                          ),
                        )),
                    PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                              child: GestureDetector(
                                //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                child: const Text("Kamrul Hasan",
                                    style:
                                    TextStyle(fontSize: 14)),
                              )),
                          PopupMenuItem(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                    child: const Text("Rakib Islam",
                                        style:
                                        TextStyle(fontSize: 14)),
                                  )
                                ],
                              )),
                          PopupMenuItem(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                    child: const Text("Minarul Hasan",
                                        style:
                                        TextStyle(fontSize: 14)),
                                  )
                                ],
                              )),
                          PopupMenuItem(
                              child: Row(
                                children: const [
                                  Text(
                                    "Meharab Hossen",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              )),
                        ],
                        child: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
                padding: const EdgeInsets.all(10),
              child: Container(
                height: 40,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black38,width: 1)
                  )
                ),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Invoice Number",
                      contentPadding: EdgeInsets.all(0),
                      border: InputBorder.none
                  ),
                ),
              ),
            ),
            //button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: ElevatedButton(
                onPressed: (){},
                child: const Text("Submit",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
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


