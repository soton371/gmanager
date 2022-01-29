import 'package:flutter/material.dart';
import 'package:gmanager/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewSupplier extends StatefulWidget {
  const AddNewSupplier({Key? key}) : super(key: key);

  @override
  _AddNewSupplierState createState() => _AddNewSupplierState();
}

class _AddNewSupplierState extends State<AddNewSupplier> {

  bool whatsappIs=false;
  bool imoIs = false;

  var name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text(
          'Add new supplier',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400
          ),
        ),
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        actions: [
          TextButton(
            onPressed: () {
              //print("name: $name");
            },
            child: Text(
              "Save",
              style: TextStyle(
                  color: kMainColor, fontWeight: FontWeight.w500, fontSize: 18),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Name",
                  alignLabelWithHint: true,
                  contentPadding: const EdgeInsets.all(0),
                  labelStyle: TextStyle(fontSize: 16)
                ),
              ),
              const SizedBox(height: 60,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "Mobile",
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.all(0),
                    labelStyle: TextStyle(fontSize: 16)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      activeColor: kMainColor,
                      value: whatsappIs,
                      onChanged: (v) {
                        setState(() {
                          whatsappIs = v!;
                        });
                      }),
                  Text(
                    "WhatsApp",
                    style: TextStyle(),
                  ),
                  Checkbox(
                      activeColor: kMainColor,
                      value: imoIs,
                      onChanged: (v) {
                        setState(() {
                          imoIs = v!;
                        });
                      }),
                  Text("IMO", style: TextStyle()),
                ],
              ),
              const SizedBox(height: 50,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "Address",
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.all(0),
                    labelStyle: TextStyle(fontSize: 16)
                ),
              ),
              const SizedBox(height: 60,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.all(0),
                    labelStyle: TextStyle(fontSize: 16)
                ),
              ),
              const SizedBox(height: 60,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "WhatsApp",
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.all(0),
                    labelStyle: TextStyle(fontSize: 16)
                ),
              ),
              const SizedBox(height: 60,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "IMO",
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.all(0),
                    labelStyle: TextStyle(fontSize: 16)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
