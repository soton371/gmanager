import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class SalesReportViewScreen extends StatefulWidget {
  const SalesReportViewScreen({Key? key}) : super(key: key);

  @override
  _SalesReportViewScreenState createState() => _SalesReportViewScreenState();
}

class _SalesReportViewScreenState extends State<SalesReportViewScreen> {

  final dateStart = TextEditingController();
  final dateEnd = TextEditingController();

  // Initial Selected Value
  String dropDownValueCustomer = 'Cusomer Name';
  String dropDownValueSalesPerson = 'Sales Person';
  String dropDownValueInvoice = 'Invoice Number';

  // List of items in our dropdown menu
  var items = [
    'Meharab Hossen',
    'Minarul Hasan',
    'Rakib Islam',
    'Kamrul Hasan',
    'Jamal Uddin',
  ];

  var itemsInvoice = [
    'I0001',
    'I0002',
    'I0003',
    'I0004',
    'I0005',
  ];

  var data;
  Future getData() async{
    var jsonData = await rootBundle.loadString("assets/jsonfiles/data.json");

    setState(() {
      data = json.decode(jsonData);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

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
        leading: const Icon(Icons.close, color: Colors.black),
        titleSpacing: 0,
        title: const Text(
          "Sales Report",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
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
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButton(
              //value: dropdownvalue,
              isExpanded: true,
              hint: Text(dropDownValueCustomer,style: TextStyle(color: Colors.black),),
              icon: const Icon(Icons.keyboard_arrow_down,),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValueCustomer = newValue!;
                });
              },
            ),
          ),
          //sales person section
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButton(
              //value: dropdownvalue,
              isExpanded: true,
              hint: Text(dropDownValueSalesPerson,style: TextStyle(color: Colors.black),),
              icon: const Icon(Icons.keyboard_arrow_down,),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValueSalesPerson = newValue!;
                });
              },
            ),
          ),
          //invoice number section
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButton(
              //value: dropdownvalue,
              isExpanded: true,
              hint: Text(dropDownValueInvoice,style: TextStyle(color: Colors.black),),
              icon: const Icon(Icons.keyboard_arrow_down,),
              items: itemsInvoice.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValueInvoice = newValue!;
                });
              },
            ),
          ),
          //list
          SizedBox(height: 20,),
          Expanded(
              child: data==null?const CircularProgressIndicator(): ListView.builder(
                //padding: EdgeInsets.all(10),
                  itemCount: data.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data[index]["product"],style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                                SizedBox(height: 3,),
                                Text("${data[index]["date"]},${data[index]["time"]}",style: const TextStyle(color: kGreyTextColor,fontSize: 13),),
                              ],
                            ),
                            //Text(data[index]["pcs"]),
                            Text(data[index]["total"],style: const TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
