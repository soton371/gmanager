import 'package:flutter/material.dart';
import '../../../constant.dart';

class SalesDetails extends StatefulWidget {
  const SalesDetails({Key? key}) : super(key: key);

  @override
  _SalesDetailsState createState() => _SalesDetailsState();
}

class _SalesDetailsState extends State<SalesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close,color: Colors.black,),
        titleSpacing: 0,
        title: const Text(
          'Details: 1100tk',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.person_add_alt,color: Colors.black,),
          SizedBox(width: 15,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //description
            Container(
              color: kDarkWhite,
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Description", style: TextStyle(color: kMainColor, fontSize: 18, fontWeight: FontWeight.w500),),
                  Text("Amount", style: TextStyle(color: kMainColor, fontSize: 18, fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Test product 1',
                        style: TextStyle(
                          color: Colors.black,
                          //fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '2 Pcs X 2500',
                        style: TextStyle(
                          color: kGreyTextColor,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: const [
                      Icon(Icons.delete_outline,),
                      SizedBox(height: 5,),
                      Text(
                        '5,000',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10,),
                  const Icon(Icons.more_vert,color: kGreyTextColor,)
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Test product 2',
                        style: TextStyle(
                          color: Colors.black,
                          //fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '3 Pcs X 2000',
                        style: TextStyle(
                          color: kGreyTextColor,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: const [
                      Icon(Icons.delete_outline,),
                      SizedBox(height: 5,),
                      Text(
                        '6,000',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10,),
                  const Icon(Icons.more_vert,color: kGreyTextColor,)
                ],
              ),
            ),

            const Divider(
              color: kMainColor,
              thickness: 1.5,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: const [
                  Text(
                    'Subtotal',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Spacer(),
                  Text(
                    '11,000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: const [
                  Text(
                    'Discount',
                  ),
                  Spacer(),
                  Text(
                    '1,000',
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Total',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '10,000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Previous Dues',
                  ),
                  Text(
                    '1,000',
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Grand Total',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '11,000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Received',
                  ),
                  Text(
                    '10,000',
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Dues',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '1,000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                const SizedBox(width: 10,),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text("Favourite",style: TextStyle(color: kMainColor,fontSize: 15),),
                    style: ElevatedButton.styleFrom(
                        primary: kDarkWhite,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text("EMI",style: TextStyle(color: kMainColor,fontSize: 15),),
                    style: ElevatedButton.styleFrom(
                        primary: kDarkWhite,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: (){},
                  child: const Text("Save & Create Invoice",style: TextStyle(fontSize: 15,color: kMainColor),),
                style: ElevatedButton.styleFrom(
                  primary: kDarkWhite,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: (){},
                child: const Text("Add Product",style: TextStyle(fontSize: 15,color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    primary: kMainColor,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
