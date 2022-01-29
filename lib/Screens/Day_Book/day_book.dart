import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/constant.dart';
import 'package:nb_utils/nb_utils.dart';

class DayBookScreen extends StatefulWidget {
  const DayBookScreen({Key? key}) : super(key: key);

  @override
  _DayBookScreenState createState() => _DayBookScreenState();
}

class _DayBookScreenState extends State<DayBookScreen> {

  final dateController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Day Book',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          leading: const Icon(Icons.arrow_back,color: Colors.black,),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //date section
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppTextField(
                          textFieldType: TextFieldType.NAME,
                          readOnly: true,
                          onTap: () async {
                            var date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            dateController.text =
                                date.toString().substring(0, 10);
                          },
                          controller: dateController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              floatingLabelBehavior:
                              FloatingLabelBehavior.always,
                              labelText: 'Start Date',
                              hintText: 'Pick Start Date'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppTextField(
                          textFieldType: TextFieldType.OTHER,
                          readOnly: true,
                          onTap: () async {
                            var date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            dateController.text =
                                date.toString().substring(0, 10);
                          },
                          controller: dateController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              floatingLabelBehavior:
                              FloatingLabelBehavior.always,
                              labelText: 'End Date',
                              hintText: 'Pick End Date'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //description section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  headingRowColor:
                  MaterialStateColor.resolveWith((states) => kDarkWhite),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Description',
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Cash',
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Due',
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Total',
                      ),
                    ),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                            Wrap(
                              children: const [
                                Text(
                                  'Purchase',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),),
                        const DataCell(
                          Text('125'),
                        ),
                        const DataCell(
                          Text('225'),
                        ),
                        const DataCell(
                          Text('50'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Wrap(
                            children: const [
                              Text(
                                'Sales',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),),
                        const DataCell(
                          Text('125'),
                        ),
                        const DataCell(
                          Text('225'),
                        ),
                        const DataCell(
                          Text('350'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Wrap(
                            children: const [
                              Text(
                                'Due Receive',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),),
                        const DataCell(
                          Text('125'),
                        ),
                        const DataCell(
                          Text('425'),
                        ),
                        const DataCell(
                          Text('550'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Wrap(
                            children: const [
                              Text(
                                'Expense',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),),
                        const DataCell(
                          Text('15'),
                        ),
                        const DataCell(
                          Text('25'),
                        ),
                        const DataCell(
                          Text('40'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Wrap(
                            children: const [
                              Text(
                                'Withdrawal',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),),
                        const DataCell(
                          Text('125'),
                        ),
                        const DataCell(
                          Text('22'),
                        ),
                        const DataCell(
                          Text('145'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Wrap(
                            children: const [
                              Text(
                                'Purchase Return',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),),
                        const DataCell(
                          Text('120'),
                        ),
                        const DataCell(
                          Text('225'),
                        ),
                        const DataCell(
                          Text('355'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Wrap(
                            children: const [
                              Text(
                                'Sales Return',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),),
                        const DataCell(
                          Text('225'),
                        ),
                        const DataCell(
                          Text('25'),
                        ),
                        const DataCell(
                          Text('250'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Wrap(
                            children: const [
                              Text(
                                'Loan Receive',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),),
                        const DataCell(
                          Text('100'),
                        ),
                        const DataCell(
                          Text('225'),
                        ),
                        const DataCell(
                          Text('325'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Wrap(
                            children: const [
                              Text(
                                'Loan Payment',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),),
                        const DataCell(
                          Text('125'),
                        ),
                        const DataCell(
                          Text('200'),
                        ),
                        const DataCell(
                          Text('125'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Wrap(
                            children: const [
                              Text(
                                'Direct Income',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),),
                        const DataCell(
                          Text('125'),
                        ),
                        const DataCell(
                          Text('50'),
                        ),
                        const DataCell(
                          Text('175'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Wrap(
                            children: const [
                              Text(
                                'Grow Profit',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),),
                        const DataCell(
                          Text('125'),
                        ),
                        const DataCell(
                          Text('50'),
                        ),
                        const DataCell(
                          Text('175'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //today's Amount section
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: MaterialStateColor.resolveWith((states) => kDarkWhite),
                child: const Center(
                  child: Text("Today's Amount",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black12)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Row(
                    children: const [
                      Expanded(child: Text("Cash in Hand",style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),)),
                      Expanded(child: Text("5000")),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black12)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Row(
                    children: const [
                      Expanded(child: Text("Bank",style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),)),
                      Expanded(child: Text("5000")),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black12)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Row(
                    children: const [
                      Expanded(child: Text("Bkash",style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),)),
                      Expanded(child: Text("5000")),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black12),
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Row(
                    children: const [
                      Expanded(child: Text("Nagad",style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),)),
                      Expanded(child: Text("5000")),
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
