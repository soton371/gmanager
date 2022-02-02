import 'package:flutter/material.dart';
import 'package:gmanager/Screens/All/allscreen.dart';
import 'package:gmanager/Screens/Authentication/forgot_password.dart';
import 'package:gmanager/Screens/Authentication/login_form.dart';
import 'package:gmanager/Screens/Authentication/otp_page.dart';
import 'package:gmanager/Screens/Authentication/profile_setup.dart';
import 'package:gmanager/Screens/Authentication/register_form.dart';
import 'package:gmanager/Screens/Authentication/sign_in.dart';
import 'package:gmanager/Screens/Authentication/success_screen.dart';
import 'package:gmanager/Screens/Customers/add_contact.dart';
import 'package:gmanager/Screens/Customers/customer_ledger_details.dart';
import 'package:gmanager/Screens/Customers/customer_ledger_list.dart';
import 'package:gmanager/Screens/Customers/customer_list.dart';
import 'package:gmanager/Screens/Customers/customer_view_details.dart';
import 'package:gmanager/Screens/Dashboard/new_dashboard_screen.dart';
import 'package:gmanager/Screens/Day_Book/day_book.dart';
import 'package:gmanager/Screens/Home/home.dart';
import 'package:gmanager/Screens/Notifications/notification_screen.dart';
import 'package:gmanager/Screens/Payment/payment_screen.dart';
import 'package:gmanager/Screens/ProfileScreen/edit_profile.dart';
import 'package:gmanager/Screens/ProfileScreen/profile_details.dart';
import 'package:gmanager/Screens/Sales/add_products.dart';
import 'package:gmanager/Screens/Sales/customer_invoice.dart';
import 'package:gmanager/Screens/Sales/emi_details.dart';
import 'package:gmanager/Screens/Sales/emi_details_edit.dart';
import 'package:gmanager/Screens/Sales/favourite_list.dart';
import 'package:gmanager/Screens/Sales/qrscan.dart';
import 'package:gmanager/Screens/Sales/sales_add_customer.dart';
import 'package:gmanager/Screens/Sales/sales_customer_details_edit.dart';
import 'package:gmanager/Screens/Sales/sales_customer_return.dart';
import 'package:gmanager/Screens/Sales/sales_details.dart';
import 'package:gmanager/Screens/Sales/sales_discount_total.dart';
import 'package:gmanager/Screens/Sales/sales_guarantor_details_edit.dart';
import 'package:gmanager/Screens/Sales/sales_guarantor_details_edit_another.dart';
import 'package:gmanager/Screens/Sales/sales_list.dart';
import 'package:gmanager/Screens/Sales/sales_list_emi.dart';
import 'package:gmanager/Screens/Sales/sales_list_product.dart';
import 'package:gmanager/Screens/Sales/sales_report.dart';
import 'package:gmanager/Screens/Sales/sales_report_view.dart';
import 'package:gmanager/Screens/Sales/salesfirst.dart';
import 'package:gmanager/Screens/Settings/Help%20&%20Support/contact_us.dart';
import 'package:gmanager/Screens/Settings/settings_screen.dart';
import 'package:gmanager/Screens/SplashScreen/on_board.dart';
import 'package:gmanager/Screens/SplashScreen/splash_screen.dart';
import 'package:gmanager/Screens/Supplier/add_new_supplier.dart';
import 'package:gmanager/Screens/Supplier/supplier_details.dart';
import 'package:gmanager/Screens/Supplier/supplier_ledger.dart';
import 'package:gmanager/Screens/Supplier/supplier_ledger_details.dart';
import 'package:gmanager/Screens/Supplier/supplier_lists.dart';
import 'package:gmanager/Screens/Tools/tools_screen.dart';
import 'package:gmanager/constant.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kMainColor,
        primarySwatch: Colors.green
      ),
      title: 'gManager',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) =>const SuccessScreen(),
         '/onBoard': (context) => const OnBoard(),
         '/signIn': (context) => const SignInScreen(),
         '/loginForm': (context) => const LoginForm(),
         '/signup': (context) => const RegisterScreen(),
         '/otp': (context) => const OtpPage(),
         '/forgotPassword': (context) => const ForgotPassword(),
         '/success': (context) => const SuccessScreen(),
         '/setupProfile': (context) => const ProfileSetup(),
         '/home': (context) => const Home(),

      },
    );
  }
}
