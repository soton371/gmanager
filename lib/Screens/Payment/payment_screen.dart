import 'package:flutter/material.dart';
import 'package:gmanager/Screens/Notifications/notification_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/Screens/ProfileScreen/profile_details.dart';
import 'package:gmanager/constant.dart';
import 'package:gmanager/data_model.dart';
import 'package:nb_utils/src/extensions/widget_extensions.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Card(
              elevation: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        const ProfileDetails().launch(context);
                      },
                      child: const Image(
                        image: AssetImage('assets/images/profile.png'),
                        height: 42,
                        width: 42,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kamal Store',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Free Plan',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: kGreyTextColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 40.0,
                      width: 86.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xFFD9DDE3).withOpacity(0.5),
                      ),
                      child: Center(
                        child: Text(
                          '৳ 450',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: kDarkWhite,
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            const NotificationScreen().launch(context);
                          },
                          child: const Icon(
                            Icons.notifications_active,
                            color: kMainColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: PaymentModel().items.length,
                  itemBuilder: (context,index){
                    var data = PaymentModel().items;
                    return Column(
                      children: [
                        ListTile(
                          dense: true,
                          horizontalTitleGap: 0,
                          title: Text(
                            data[index].title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),
                          leading: Icon(data[index].icon,
                            color: kMainColor,
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            color: kGreyTextColor,
                          ),
                        ),
                        const Divider()
                      ],
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
