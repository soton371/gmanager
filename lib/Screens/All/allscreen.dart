import 'package:flutter/material.dart';
import 'package:gmanager/Screens/Notifications/notification_screen.dart';
import 'package:gmanager/Screens/ProfileScreen/profile_details.dart';
import 'package:gmanager/constant.dart';
import 'package:nb_utils/src/extensions/widget_extensions.dart';


class AllScreen extends StatefulWidget {
  const AllScreen({Key? key}) : super(key: key);

  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
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
                      children: const [
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
                      child: const Center(
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
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: AllScreenModel().items.length,
            //       itemBuilder: (context,index){
            //       var data = AllScreenModel().items;
            //       return Column(
            //         children: [
            //           ListTile(
            //             dense: true,
            //             horizontalTitleGap: 0,
            //             title: Text(
            //               data[index].title,
            //               style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 18.0,
            //               ),
            //             ),
            //             leading: Icon(data[index].icon,
            //               color: kMainColor,
            //             ),
            //             trailing: const Icon(
            //               Icons.arrow_forward_ios,
            //               color: kGreyTextColor,
            //             ),
            //           ),
            //           const Divider()
            //         ],
            //       );
            //       }
            //   ),
            // ),
            Expanded(
                child: ListView(
                  children: [
                    const ListTile(
                    dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Product",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.production_quantity_limits_outlined,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Purchase",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.push_pin_rounded,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Sales",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.point_of_sale_sharp,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Stock/Inventory",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.stop_circle_outlined,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: ()=>Navigator.pushNamed(context, "/Customer"),
                      child: const ListTile(
                        dense: true,
                        horizontalTitleGap: 0,
                        title: Text(
                          "Customer",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                        leading: Icon(Icons.supervisor_account_outlined,
                          color: kMainColor,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: kGreyTextColor,
                        ),
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: ()=>Navigator.pushNamed(context, "/Supplier"),
                      child: const ListTile(
                        dense: true,
                        horizontalTitleGap: 0,
                        title: Text(
                          "Supplier",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                        leading: Icon(Icons.contactless_outlined,
                          color: kMainColor,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: kGreyTextColor,
                        ),
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Due Khata",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.menu_book,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Due Alert",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.add_alert_outlined,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Income & Expense",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.money,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Invoice",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.insert_invitation_outlined,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Return",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.assignment_return_outlined,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Accounts",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.account_balance_outlined,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Dashboard",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.dashboard_outlined,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      title: Text(
                        "Daybook",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      leading: Icon(Icons.view_day_outlined,
                        color: kMainColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: kGreyTextColor,
                      ),
                    ),
                    const Divider(),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
