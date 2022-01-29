import 'package:flutter/material.dart';

import '../../constant.dart';

class SalesDiscountTotalScreen extends StatefulWidget {
  const SalesDiscountTotalScreen({Key? key}) : super(key: key);

  @override
  _SalesDiscountTotalScreenState createState() => _SalesDiscountTotalScreenState();
}

class _SalesDiscountTotalScreenState extends State<SalesDiscountTotalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Discount Total",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        titleSpacing: 0,
        leading: const Icon(Icons.close,color: Colors.black,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Discount%",
                    contentPadding: EdgeInsets.all(0),
                    alignLabelWithHint: true
                ),
              ),
              const SizedBox(height: 30,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Discount value",
                    contentPadding: EdgeInsets.all(0),
                    alignLabelWithHint: true
                ),
              ),
              const SizedBox(height: 50,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text("Save",style: TextStyle(fontSize: 15,color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                      primary: kMainColor,
                      padding: const EdgeInsets.symmetric(vertical: 10,),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
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

