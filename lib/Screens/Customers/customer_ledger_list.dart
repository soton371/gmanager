import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerLeaderList extends StatefulWidget {
  const CustomerLeaderList({Key? key}) : super(key: key);

  @override
  _CustomerLeaderListState createState() => _CustomerLeaderListState();
}

class _CustomerLeaderListState extends State<CustomerLeaderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        title: Text("Customer Ledger",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400
        ),),
        actions: const [
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
            const SizedBox(height: 10,),
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
                      Text("4631",style: TextStyle(),),
                      PopupMenuButton(
                          itemBuilder: (context)=>[
                            PopupMenuItem(child: Row(children: [const Icon(Icons.preview_outlined,color: Colors.grey,size: 18,),const SizedBox(width: 5,),Text("View Details",style: TextStyle(fontSize: 14))],)),
                          ],
                          child: const Icon(Icons.more_vert,color: kGreyTextColor,)
                      )
                    ],
                  )),
                ],
              ),
            ),
            const Divider(),
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
                      Text("3521",style: TextStyle(),),
                      PopupMenuButton(
                        itemBuilder: (context)=>[
                          PopupMenuItem(child: Row(children: [const Icon(Icons.preview_outlined,color: Colors.grey,size: 18,),const SizedBox(width: 5,),Text("View Details",style: TextStyle(fontSize: 14))],)),
                        ],
                          child: const Icon(Icons.more_vert,color: kGreyTextColor,)
                      )
                    ],
                  )),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
