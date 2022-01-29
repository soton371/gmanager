import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SupplierDetails extends StatefulWidget {
  const SupplierDetails({Key? key}) : super(key: key);

  @override
  _SupplierDetailsState createState() => _SupplierDetailsState();
}

class _SupplierDetailsState extends State<SupplierDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text(
          'Supplier details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400
          ),
        ),
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Image(
                  image: AssetImage('assets/images/profileimage.png'),
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Arif Hossen',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
              Text(
                '+8801478965854',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              Divider(height: 20,),
              //Customer views
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  decoration: BoxDecoration(
                      border:Border.all(color: Colors.black12),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.black12,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Basic Info",style: TextStyle(fontWeight: FontWeight.w600),),
                            Icon(Icons.sticky_note_2,color: kGreyTextColor,)
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: kGreyTextColor,),
                            Text(" Lives in ",style: TextStyle(color: kGreyTextColor),),
                            Text("Khulna Bangladesh",style: TextStyle(fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      Divider(height: 0,),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Icon(Icons.group_work_outlined,color: kGreyTextColor,),
                            Text(" Group ",style: TextStyle(color: kGreyTextColor),),
                            Text("Null",style: TextStyle(fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      Divider(height: 0,),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Icon(Icons.email_outlined,color: kGreyTextColor,),
                            Text(" E-mail to ",style: TextStyle(color: kGreyTextColor),),
                            Text("Kamal@gmail.com",style: TextStyle(fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      Divider(height: 0,),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Icon(MdiIcons.whatsapp,color: kGreyTextColor,),
                            Text(" WhatsApp to ",style: TextStyle(color: kGreyTextColor),),
                            Text("+880147896456",style: TextStyle(fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      Divider(height: 0,),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Icon(Icons.video_call_outlined,color: kGreyTextColor,),
                            Text(" IMO to ",style: TextStyle(color: kGreyTextColor),),
                            Text("+880147896564",style: TextStyle(fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
