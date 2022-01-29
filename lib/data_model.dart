import 'package:flutter/material.dart';

class DataModel{
  var title,total,today,icon,route;
  DataModel({this.title,this.today,this.total,this.icon,this.route});
}

class DashboardModel{
  var items = [
    DataModel(
      title: "Purchase",today: "123",total: "৳123456"
    ),
    DataModel(
        title: "Sales",today: "213",total: "৳463134"
    ),
    DataModel(
        title: "Stock",today: "323",total: "৳87864"
    ),
    DataModel(
        title: "Due",today: "646",total: "৳21354"
    ),
    DataModel(
        title: "Income",today: "315",total: "৳56464"
    ),
    DataModel(
        title: "Cash in Hand",today: "321",total: "৳231645"
    ),
    DataModel(
        title: "Expense",today: "123",total: "৳123456"
    ),
    DataModel(
        title: "Customer",today: "123",total: "৳123456"
    ),
    DataModel(
        title: "Supplier",today: "123",total: "৳123456"
    ),
    DataModel(
        title: "Due Collection",today: "123",total: "৳123456"
    ),
    DataModel(
        title: "Cross Profit",today: "123",total: "৳123456"
    ),
    DataModel(
        title: "Employee",today: "351",total: "৳46431"
    ),
  ];
}

class AllScreenModel{
  var items = [
    DataModel(title: "Product",icon: Icons.production_quantity_limits_outlined),
    DataModel(title: "Purchase",icon: Icons.push_pin_rounded),
    DataModel(title: "Sales",icon: Icons.point_of_sale_sharp),
    DataModel(title: "Stock/Inventory",icon: Icons.stop_circle_outlined),
    DataModel(title: "Customer",icon: Icons.supervisor_account_outlined,),
    DataModel(title: "Supplier",icon: Icons.contactless_outlined),
    DataModel(title: "Due Khata",icon: Icons.menu_book),
    DataModel(title: "Due Alert",icon: Icons.add_alert_outlined),
    DataModel(title: "Income & Expense",icon: Icons.money),
    DataModel(title: "Invoice",icon: Icons.insert_invitation_outlined),
    DataModel(title: "Return",icon: Icons.assignment_return_outlined),
    DataModel(title: "Accounts",icon: Icons.account_balance_outlined),
    DataModel(title: "Dashboard",icon: Icons.dashboard_outlined),
    DataModel(title: "Daybook",icon: Icons.view_day_outlined),
  ];
}

class PaymentModel{
  var items = [
    DataModel(title: "Purchase Return",icon: Icons.push_pin_rounded),
    DataModel(title: "Sales Return",icon: Icons.point_of_sale_sharp),
    DataModel(title: "Payment Customer",icon: Icons.supervisor_account_outlined),
    DataModel(title: "Payment Supplier",icon: Icons.contactless_outlined),
    DataModel(title: "Receive Income",icon: Icons.money),
    DataModel(title: "Receive Loan/Invest",icon: Icons.insert_invitation_outlined),
    DataModel(title: "Owner Withdrawal",icon: Icons.thumbs_up_down),
    DataModel(title: "Contra",icon: Icons.control_camera),
  ];
}

class ToolsModel{
  var items = [
    DataModel(title: "Advance Settings",icon: Icons.settings_outlined),
    DataModel(title: "Multi Warehouse",icon: Icons.multiline_chart),
    DataModel(title: "Business Settings",icon: Icons.business_outlined),
    DataModel(title: "Pin Code Settings",icon: Icons.power_input),
    DataModel(title: "User Settings",icon: Icons.supervised_user_circle_outlined),
  ];
}