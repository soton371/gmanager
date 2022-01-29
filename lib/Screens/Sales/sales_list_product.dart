import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:gmanager/constant.dart';


class SalesListProductScreen extends StatefulWidget {
  const SalesListProductScreen({Key? key}) : super(key: key);

  @override
  _SalesListProductScreenState createState() => _SalesListProductScreenState();
}

class _SalesListProductScreenState extends State<SalesListProductScreen> {

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
          leading: const Icon(Icons.arrow_back,color: Colors.black,),
          title: const Text("Sales List",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
          backgroundColor: Colors.white,
        ),
        body: Column(
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
                      Text(" EMI",style: TextStyle(fontSize: 17,color: kMainColor),)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: kDarkWhite,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text("Total Product",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
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
                                  Row(
                                    children: [
                                      Text(data[index]["date"],style: const TextStyle(color: kGreyTextColor,fontSize: 13),),
                                      Text(", ${data[index]["time"]}",style: const TextStyle(color: kGreyTextColor,fontSize: 13),),
                                    ],
                                  ),
                                  SizedBox(height: 3,),
                                  Text(data[index]["product"],style: const TextStyle(fontWeight: FontWeight.w500),),
                                ],
                              ),
                              Text(data[index]["pcs"]),
                              Text(data[index]["total"],style: const TextStyle(fontWeight: FontWeight.w500)),
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
