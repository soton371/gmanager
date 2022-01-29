import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


class SalesListScreen extends StatefulWidget {
  const SalesListScreen({Key? key}) : super(key: key);

  @override
  _SalesListScreenState createState() => _SalesListScreenState();
}

class _SalesListScreenState extends State<SalesListScreen> {

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Text("Sales List",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 10,),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kDarkWhite,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("Product",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: kMainColor),),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kDarkWhite,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("Customer",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: kMainColor),),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kDarkWhite,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("EMI",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: kMainColor),),
                ),
              ),
              SizedBox(width: 10,),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            color: kDarkWhite,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text("Customer wsie sales",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                Spacer(),
                Icon(Icons.search,),
                SizedBox(width: 15,),
                Icon(Icons.download_outlined),
                SizedBox(width: 15,),
                Icon(Icons.print),
              ],
            ),
          ),
          //SizedBox(height: 10,),
          Expanded(
              child: data==null?CircularProgressIndicator(): ListView.builder(
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
                                Text(data[index]["invoice_no"],style: TextStyle(fontWeight: FontWeight.w500),),
                                Text(data[index]["name"],style: TextStyle(color: kGreyTextColor,fontSize: 13),),
                                Row(
                                  children: [
                                    Text(data[index]["date"],style: TextStyle(color: kGreyTextColor,fontSize: 13),),
                                    Text(", ${data[index]["time"]}",style: TextStyle(color: kGreyTextColor,fontSize: 13),),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(data[index]["total"],style: TextStyle(fontWeight: FontWeight.w500)),
                                PopupMenuButton(
                                    itemBuilder: (context) => [
                                      PopupMenuItem(
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.edit,
                                                color: Colors.grey,
                                                size: 18,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              GestureDetector(
                                                //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                                child: Text("Edit",
                                                    style:
                                                    TextStyle(fontSize: 14)),
                                              )
                                            ],
                                          )),
                                      PopupMenuItem(
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.sticky_note_2_outlined,
                                                color: Colors.grey,
                                                size: 18,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              GestureDetector(
                                                //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                                child: Text("Invoice",
                                                    style:
                                                    TextStyle(fontSize: 14)),
                                              )
                                            ],
                                          )),
                                      PopupMenuItem(
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.assignment_return_outlined,
                                                color: Colors.grey,
                                                size: 18,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              GestureDetector(
                                                //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
                                                child: Text("Return",
                                                    style:
                                                    TextStyle(fontSize: 14)),
                                              )
                                            ],
                                          )),
                                      PopupMenuItem(
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.delete,
                                                color: Colors.grey,
                                                size: 18,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Delete",
                                                style: TextStyle(fontSize: 14),
                                              )
                                            ],
                                          )),
                                    ],
                                    child: const Icon(
                                      Icons.more_vert,
                                      color: kGreyTextColor,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              )
          )
        ],
      )
    );
  }
}
