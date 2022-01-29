import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';

class SalesGuarantorDetailsEditAnotherScreen extends StatefulWidget {
  const SalesGuarantorDetailsEditAnotherScreen({Key? key}) : super(key: key);

  @override
  _SalesGuarantorDetailsEditAnotherScreenState createState() => _SalesGuarantorDetailsEditAnotherScreenState();
}

class _SalesGuarantorDetailsEditAnotherScreenState extends State<SalesGuarantorDetailsEditAnotherScreen> {

  bool selectReadOnly = true;
  String name = "Kamal Uddin";
  String address = "Pallabi, Dhaka-1216";
  String mobile = "01919201140";
  String relation = "Uncle";
  String email = "kamal@gmail.com";
  String whatsapp = "01919201140";
  String imo = "01714201147";
  String nidNo = "10271416547";
  String nidFront = "assets/images/smartcardremovebg.png";
  String nidBack = "assets/images/smartbackremoveb.png";
  String nidFrontDark = "assets/images/smartcard.png";
  String nidBackDark = "assets/images/smartbackremovebdark.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        leading: const Icon(Icons.close,color: Colors.black,),
        title: const Text("Guarantor details-2 ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.white,
        actions: [
          selectReadOnly? IconButton(
            onPressed: (){
              setState(() {
                selectReadOnly = !selectReadOnly;
              });
            },
            icon: Icon(Icons.edit,color: Colors.black,),
          ):TextButton(
              onPressed: (){
                setState(() {
                  selectReadOnly = !selectReadOnly;
                });
              },
              child: Text("Save",style: TextStyle(color: kMainColor,fontSize: 18),)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey,width: 1)
                  )
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  readOnly: selectReadOnly,
                  decoration: InputDecoration(
                      hintText: name,
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                      //////prefix: SizedBox(width: 10,),
                    //contentPadding: EdgeInsets.all(0)
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  readOnly: selectReadOnly,
                  decoration: InputDecoration(
                      hintText: address,
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                      //contentPadding: EdgeInsets.all(0)
                      //prefix: SizedBox(width: 10,)
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  readOnly: selectReadOnly,
                  decoration: InputDecoration(
                      hintText: mobile,
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                      //contentPadding: EdgeInsets.all(0)
                      //prefix: SizedBox(width: 10,)
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: Row(
                  children: [
                    Text("Relation: ",style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        readOnly: selectReadOnly,
                        decoration: InputDecoration(
                          hintText: relation,
                          hintStyle: TextStyle(color: Colors.black,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: Row(
                  children: [
                    Text("E-mail: ",style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        readOnly: selectReadOnly,
                        decoration: InputDecoration(
                          hintText: email,
                          hintStyle: TextStyle(color: Colors.black,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: Row(
                  children: [
                    Text("Whatsapp: ",style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        readOnly: selectReadOnly,
                        decoration: InputDecoration(
                          hintText: whatsapp,
                          hintStyle: TextStyle(color: Colors.black,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: Row(
                  children: [
                    Text("IMO: ",style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        readOnly: selectReadOnly,
                        decoration: InputDecoration(
                          hintText: imo,
                          hintStyle: TextStyle(color: Colors.black,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 1)
                    )
                ),
                child: Row(
                  children: [
                    Text("NID No: ",style: TextStyle(
                      fontSize: 16,
                    ),),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        readOnly: selectReadOnly,
                        decoration: InputDecoration(
                          hintText: nidNo,
                          hintStyle: TextStyle(color: Colors.black,),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              //for nid pic
              selectReadOnly?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NID photo: ",style: TextStyle(
                    fontSize: 16,
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(child: Image(image: AssetImage(nidFront),),),
                      SizedBox(width: 10,),
                      Expanded(child: Image(image: AssetImage(nidBack),),),
                    ],
                  )
                ],
              ):
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("NID photo: ",style: TextStyle(
                      fontSize: 16,
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(child: GestureDetector(
                          onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) => Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: SizedBox(
                                height: 200.0,
                                width: MediaQuery.of(context).size.width - 80,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.photo_library_rounded,
                                            size: 60.0,
                                            color: kMainColor,
                                          ),
                                          Text(
                                            'Gallery',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              color: kMainColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 40.0,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.camera,
                                            size: 60.0,
                                            color: kGreyTextColor,
                                          ),
                                          Text(
                                            'Camera',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              color: kGreyTextColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(nidFrontDark)),
                              ),
                              child: Icon(Icons.camera_alt_outlined,color: Colors.white,)
                          ),
                        )),
                        SizedBox(width: 10,),
                        Expanded(child: GestureDetector(
                          onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) => Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: SizedBox(
                                height: 200.0,
                                width: MediaQuery.of(context).size.width - 80,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.photo_library_rounded,
                                            size: 60.0,
                                            color: kMainColor,
                                          ),
                                          Text(
                                            'Gallery',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              color: kMainColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 40.0,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.camera,
                                            size: 60.0,
                                            color: kGreyTextColor,
                                          ),
                                          Text(
                                            'Camera',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              color: kGreyTextColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(nidBackDark)),
                              ),
                              child: Icon(Icons.camera_alt_outlined,color: Colors.white,)
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
