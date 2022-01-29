import 'package:flutter/material.dart';
import 'package:gmanager/Screens/Customers/add_contact.dart';
import '../../../constant.dart';

class SalesFirstScreen extends StatefulWidget {
  const SalesFirstScreen({Key? key}) : super(key: key);

  @override
  _SalesFirstScreenState createState() => _SalesFirstScreenState();
}

class _SalesFirstScreenState extends State<SalesFirstScreen> {

  String dropDownValue = 'Product';
  var items = [
    'Product',
    'Service',
    'All',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Text("Sales",style: TextStyle(color: Colors.black),),
            SizedBox(width: 15,),
            Icon(Icons.shopping_cart_outlined,color: Colors.black,),
            SizedBox(width: 10,),
            Icon(Icons.favorite_border_outlined,color: Colors.black,),
            SizedBox(width: 10,),
            Icon(Icons.add_alert_outlined,color: Colors.black,),
          ],
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Favorite List",
                        style: TextStyle(),
                      )
                    ],
                  )),
              PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.production_quantity_limits_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Sales List", style: TextStyle())
                    ],
                  )),
              PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.event_note_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Sales Report", style: TextStyle())
                    ],
                  )),
            ],
            child: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 15,)
        ],
      ),
      body: Column(
        children: [
          //today and total section
          Container(
            color: Colors.black12,
            padding: const EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 2)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //today's section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Today's: ",
                            style: TextStyle(color: kGreyTextColor),
                          ),
                          Text(
                            "100",
                            style: TextStyle(
                                color: kMainColor, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Price: ",
                            style: TextStyle(color: kGreyTextColor),
                          ),
                          Text(
                            "1234",
                            style: TextStyle(
                                color: kMainColor, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //total section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Total: ",
                            style: TextStyle(color: kGreyTextColor),
                          ),
                          Text(
                            "1000",
                            style: TextStyle(
                                color: kMainColor, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Price: ",
                            style: TextStyle(color: kGreyTextColor),
                          ),
                          Text(
                            "12345",
                            style: TextStyle(
                                color: kMainColor, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //add customer section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Total: 1234", style: TextStyle(color: kMainColor, fontSize: 16),),
                TextButton.icon(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact()));
                    },
                    icon: const Icon(Icons.person_outline,color: kMainColor,),
                    label: const Text("Add Customer",style: TextStyle(color: kMainColor),),
                ),
              ],
            ),
          ),
          //product Service
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: Colors.black12)
              )
            ),
            child: Row(
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: Text(dropDownValue,style: const TextStyle(color: Colors.black,fontSize: 18),),
                    icon: const Icon(Icons.keyboard_arrow_down,),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropDownValue = newValue!;
                      });
                    },
                  ),
                ),
                //Text("Product Service",style: TextStyle(fontSize: 18),),
                const Spacer(),
                const Icon(Icons.search,color: kGreyTextColor),
                const SizedBox(width: 20,),
                const Icon(Icons.sticky_note_2_outlined,color: kGreyTextColor,),
              ],
            ),
          ),
          const SizedBox(height: 8,),
          //list
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: const Image(image: AssetImage("assets/images/fan.png"),width: 50,),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Click fan 56'' white",style: TextStyle(),),
                        Text("10 pcs",style: TextStyle(color: kGreyTextColor,),)
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        PopupMenuButton(
                            color: Colors.grey.shade100,
                            itemBuilder: (context)=>[
                              PopupMenuItem(
                                child:  SizedBox(
                                  width: 500,
                                  child: Table(
                                    border: TableBorder.all(),
                                    children: const [
                                      TableRow(
                                          children: [
                                            SizedBox(height: 40,),
                                            SizedBox(height: 40),
                                            SizedBox(height: 40),
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
                              ),
                            ],
                            child: const Icon(Icons.arrow_forward, color: kGreyTextColor,)
                        ),
                        const Text("2500")
                      ],
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
