import 'package:flutter/material.dart';
import 'package:gmanager/Screens/Customers/add_contact.dart';
import 'package:gmanager/Screens/Customers/customer_view_details.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerList extends StatefulWidget {
  const CustomerList({Key? key}) : super(key: key);

  @override
  _CustomerListState createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Customer",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: Row(
                children: [
                  const Icon(
                    Icons.receipt,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Report",
                    style: TextStyle(),
                  )
                ],
              )),
              PopupMenuItem(
                  child: Row(
                children: [
                  const Icon(
                    Icons.note_add_outlined,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text("Customer ledger", style: TextStyle())
                ],
              )),
            ],
            child: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          //today section
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
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Today Customers : ",
                        style: TextStyle(color: kGreyTextColor),
                      ),
                      Text(
                        "123",
                        style: TextStyle(
                            color: kMainColor, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Customers : ",
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
            ),
          ),
          //customer list
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Customer List",
                  style: TextStyle(fontSize: 18),
                ),
                const Spacer(),
                const Icon(
                  Icons.search,
                  color: kGreyTextColor,
                ),
                const SizedBox(
                  width: 18,
                ),
                const Icon(
                  Icons.download_outlined,
                  color: kGreyTextColor,
                ),
                const SizedBox(
                  width: 18,
                ),
                const Icon(
                  Icons.print_outlined,
                  color: kGreyTextColor,
                ),
                const SizedBox(
                  width: 8,
                )
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kamrul Hasan",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text("01512345678",
                              style:
                                  TextStyle(color: kGreyTextColor)),
                        ],
                      ),
                      PopupMenuButton(
                          itemBuilder: (context) => [
                                PopupMenuItem(
                                  //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const CustomerViewDetails())),
                                    child: Row(
                                  children: [
                                    const Icon(
                                      Icons.preview_outlined,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const CustomerViewDetails())),
                                      child: Text("View Details",
                                          style:
                                              TextStyle(fontSize: 14)),
                                    )
                                  ],
                                )),
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
                                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddContact())),
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
                ),
                const Divider(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alif Hasan",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text("01545345678",
                              style:
                                  TextStyle(color: kGreyTextColor)),
                        ],
                      ),
                      PopupMenuButton(
                          itemBuilder: (context) => [
                                PopupMenuItem(
                                    child: Row(
                                  children: [
                                    const Icon(
                                      Icons.preview_outlined,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text("View Details",
                                        style:
                                            TextStyle(fontSize: 14))
                                  ],
                                )),
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
                                    Text("Edit",
                                        style:
                                            TextStyle(fontSize: 14))
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
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const AddContact())),
        icon: const Icon(Icons.add),
        label: Text(
          "New Customer",
          style: TextStyle(fontSize: 15),
        ),
        style: ElevatedButton.styleFrom(
            primary: kMainColor,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.all(10)),
      ),
    );
  }
}
