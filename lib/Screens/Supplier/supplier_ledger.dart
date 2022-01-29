import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class SupplierLedger extends StatefulWidget {
  const SupplierLedger({Key? key}) : super(key: key);

  @override
  _SupplierLedgerState createState() => _SupplierLedgerState();
}

class _SupplierLedgerState extends State<SupplierLedger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Text("Supplier Ledger",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400
        ),),
        actions: [
          Icon(Icons.search, color: kGreyTextColor,),
          SizedBox(width: 15,),
          Icon(Icons.download_outlined, color: kGreyTextColor,),
          SizedBox(width: 15,),
          Icon(Icons.print_outlined, color: kGreyTextColor,),
          SizedBox(width: 15,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kamal Hossen",style: TextStyle(fontWeight: FontWeight.w500),),
                          Text("+8801756897412",style: TextStyle(color: kGreyTextColor,fontSize: 12),),
                        ],
                      )
                  ),
                  Expanded(flex: 2, child: Text("Dhaka, Bangladesh", style: TextStyle(fontSize: 12),)),
                  Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("৳2000",style: TextStyle(),),
                      PopupMenuButton(
                          itemBuilder: (context)=>[
                            PopupMenuItem(child: Row(children: [Icon(Icons.preview_outlined,color: Colors.grey,size: 18,),SizedBox(width: 5,),Text("View Details",style: TextStyle(fontSize: 14))],)),
                          ],
                          child: Icon(Icons.more_vert,color: kGreyTextColor,)
                      )
                    ],
                  )),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Selim Reza",style: TextStyle(fontWeight: FontWeight.w500),),
                          Text("+8801756894512",style: TextStyle(color: kGreyTextColor,fontSize: 12),),
                        ],
                      )
                  ),
                  Expanded(flex: 2, child: Text("Dhaka, Bangladesh", style: TextStyle(fontSize: 12),)),
                  Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("৳2354",style: TextStyle(),),
                      PopupMenuButton(
                          itemBuilder: (context)=>[
                            PopupMenuItem(child: Row(children: [Icon(Icons.preview_outlined,color: Colors.grey,size: 18,),SizedBox(width: 5,),Text("View Details",style: TextStyle(fontSize: 14))],)),
                          ],
                          child: Icon(Icons.more_vert,color: kGreyTextColor,)
                      )
                    ],
                  )),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
