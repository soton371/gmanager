import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:flutter/services.dart' show rootBundle;

class FavouriteListScreen extends StatefulWidget {
  const FavouriteListScreen({Key? key}) : super(key: key);

  @override
  _FavouriteListScreenState createState() => _FavouriteListScreenState();
}

class _FavouriteListScreenState extends State<FavouriteListScreen> {

  var data;
  var unfilterData;

  Future getData() async{
    var jsonData = await rootBundle.loadString("assets/jsonfiles/data.json");

    setState(() {
      data = json.decode(jsonData);
    });

    unfilterData = data;
  }

  void searchData( String str ){

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
        backgroundColor: Colors.white,
        title: const Text("Favourite List",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            //search box
            Container(
              decoration: BoxDecoration(
                color: kDarkWhite,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        // decoration: BoxDecoration(
                        //     border: Border(
                        //         right: BorderSide(color: Colors.black,width: 1.5)
                        //     )
                        // ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: const TextStyle(),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    //color: kDarkWhite,
                    decoration: const BoxDecoration(
                        color: kDarkWhite,
                        border: Border(
                            left: BorderSide(color: Colors.black,width: 1.5)
                        )
                    ),
                    child: const Icon(Icons.search,color: Colors.black,),
                  )
                ],
              ),
            ),

            const SizedBox(height: 15,),
            Expanded(
                child: data==null?const CircularProgressIndicator(): ListView.builder(
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
                                Text(data[index]["name"],style: const TextStyle(fontWeight: FontWeight.w500),),
                                Text(data[index]["mobile"],style: const TextStyle(color: kGreyTextColor,fontSize: 13),),
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(Icons.favorite_outlined,color: Colors.red,),
                                Text(data[index]["date"],style: const TextStyle(color: kGreyTextColor,fontSize: 10),),
                                Text(data[index]["time"],style: const TextStyle(color: kGreyTextColor,fontSize: 10)),
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
        ),
      ),
    );
  }
}
