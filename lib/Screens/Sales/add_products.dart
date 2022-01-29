import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';

class SalesAddProductScreen extends StatefulWidget {
  const SalesAddProductScreen({Key? key}) : super(key: key);

  @override
  _SalesAddProductScreenState createState() => _SalesAddProductScreenState();
}

class _SalesAddProductScreenState extends State<SalesAddProductScreen> {

  var dropdownYear = "0";
  var dropdownMonth = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Test Product-1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        titleSpacing: 0,
        leading: const Icon(Icons.close,color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //quantity section
            Padding(
                padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              labelText: "Quantity",
                              contentPadding: EdgeInsets.all(0),
                              alignLabelWithHint: true
                          ),
                        ),
                      ),
                      const SizedBox(width: 25,),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              labelText: "Sales Price",
                              contentPadding: EdgeInsets.all(0),
                              alignLabelWithHint: true
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  //vat
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        labelText: "Vat%",
                        contentPadding: EdgeInsets.all(0),
                        alignLabelWithHint: true
                    ),
                  ),
                  const SizedBox(height: 10,),
                  //discount section
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              labelText: "Discount%",
                              contentPadding: EdgeInsets.all(0),
                              alignLabelWithHint: true
                          ),
                        ),
                      ),
                      const SizedBox(width: 25,),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: "Discount Value",
                            contentPadding: EdgeInsets.all(0),
                            alignLabelWithHint: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            //variant
            Container(
              color: kDarkWhite,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              child: const Text("Variant",style: TextStyle(color: kMainColor, fontSize: 18, fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Table(
                border: TableBorder.all(),
                children: const [
                  TableRow(
                    children: [
                      SizedBox(height: 40,),
                      SizedBox(height: 40,),
                      SizedBox(height: 40,),
                    ]
                  ),
                  TableRow(
                      children: [
                        SizedBox(height: 40,),
                        SizedBox(height: 40,),
                        SizedBox(height: 40,),
                      ]
                  ),
                  TableRow(
                      children: [
                        SizedBox(height: 40,),
                        SizedBox(height: 40,),
                        SizedBox(height: 40,),
                      ]
                  ),
                ],
              ),
            ),
            //warranty
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  const Text("Warranty:     ", style: TextStyle(fontSize: 16),),
                  //hrer dropdown sit
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text(dropdownYear,style: const TextStyle(fontSize: 16),),
                        items: const [
                          DropdownMenuItem(
                              child: Text("1"),
                            value: "1",
                          ),
                          DropdownMenuItem(
                            child: Text("2"),
                            value: "2",
                          ),
                        ],
                        onChanged: (v){
                          setState(() {
                            dropdownYear = v.toString();
                          });
                        }
                    ),
                  ),
                  const Text("Year",style: TextStyle(fontSize: 16),),
                  const SizedBox(width: 20,),
                  //hrer dropdown sit
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                        hint: Text(dropdownMonth,style: const TextStyle(fontSize: 16),),
                        items: const [
                          DropdownMenuItem(
                            child: Text("1"),
                            value: "1",
                          ),
                          DropdownMenuItem(
                            child: Text("2"),
                            value: "2",
                          ),
                        ],
                        onChanged: (v){
                          setState(() {
                            dropdownMonth = v.toString();
                          });
                        }
                    ),
                  ),
                  const Text("Month",style: TextStyle(fontSize: 16),),
                ],
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      )
    );
  }
}

