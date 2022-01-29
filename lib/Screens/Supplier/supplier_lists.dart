import 'package:flutter/material.dart';
import 'package:gmanager/Screens/Supplier/add_new_supplier.dart';
import 'package:gmanager/Screens/Supplier/supplier_details.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class SupplierLists extends StatefulWidget {
  const SupplierLists({Key? key}) : super(key: key);

  @override
  _SupplierListsState createState() => _SupplierListsState();
}

class _SupplierListsState extends State<SupplierLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          "Supplier",
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
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
                  Text("Supplier ledger", style: TextStyle())
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Today Suppliers : ",
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
                        "Total Suppliers : ",
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
          //Supplier list
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Total Suppliers",
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nasim Hasan",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text("01512345678",
                                style:
                                    TextStyle(color: kGreyTextColor)),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "Dhaka, Bangladesh",
                        style: TextStyle(fontSize: 12),
                      )),
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
                const Divider(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tohid Hasan",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text("01545345678",
                                style:
                                    TextStyle(color: kGreyTextColor)),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "Dhaka, Bangladesh",
                        style: TextStyle(fontSize: 12),
                      )),
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
                                    GestureDetector(
                                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const SupplierDetails())),
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
                                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewSupplier())),
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
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: ElevatedButton.icon(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const AddNewSupplier())),
        icon: const Icon(Icons.add),
        label: Text(
          "New Supplier",
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
