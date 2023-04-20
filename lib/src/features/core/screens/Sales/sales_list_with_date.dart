import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constant.dart';
// import '../../Screens/Ledger/ledger_details.dart';
import '../../Screens/Sales/sales_screen.dart';
import 'package:nb_utils/nb_utils.dart';



class SalesListDate extends StatefulWidget {
  const SalesListDate({Key? key}) : super(key: key);

  @override
  _SalesListDateState createState() => _SalesListDateState();
}

class _SalesListDateState extends State<SalesListDate> {
  final dateController = TextEditingController();

  String dropdownValue = 'Last 30 Days';

  DropdownButton<String> getCategory() {
    List<String> dropDownItems = [
      'Last 7 Days',
      'Last 30 Days',
      'Current year',
      'Last Year'
    ];
    return DropdownButton(
      items: dropDownItems.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: dropdownValue,
      onChanged: (value) {
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sales List',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Icon(Icons.person_add_alt),
          Icon(Icons.more_vert_outlined),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: kGreyTextColor),
                          ),
                          child: Center(child: getCategory()),
                        ),
                      ),
                    ),
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
                          decoration: InputDecoration(
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
                          decoration: InputDecoration(
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
                SizedBox(
                  height: 10.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    headingRowColor:
                        MaterialStateColor.resolveWith((states) => kDarkWhite),
                    columns: <DataColumn>[
                      DataColumn(
                        label: Container(
                          width: 60.0,
                          child: Text(
                            'Client',
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Debit',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Credit',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Balance',
                        ),
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(

                        cells: <DataCell>[
                          DataCell(
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 3.0),
                                    height: 30.0,
                                    width: 30.0,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('images/profile.png'),
                                    ),),
                                Text(
                                  'Riead',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                            onTap: (){
                              
                            }
                          ),
                          DataCell(
                            Text('25'),
                          ),
                          DataCell(
                            Text('25'),
                          ),
                          DataCell(
                            Text('50'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            DataTable(
              headingRowColor:
              MaterialStateColor.resolveWith((states) => kDarkWhite),
              columns: <DataColumn>[
                DataColumn(
                  label: Container(
                    width: 60.0,
                    child: Text(
                      'Total:',
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    '800',
                  ),
                ),
                DataColumn(
                  label: Text(
                    '500',
                  ),
                ),
                DataColumn(
                  label: Text(
                    '900',
                  ),
                ),
              ], rows: [],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            SaleProducts(catName: 'Laptop',).launch(context);
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: kGreyTextColor,
                                size: 28,
                              ),
                              Text(
                                'Sales',
                                style: GoogleFonts.poppins(
                                  fontSize: 20.0,
                                  color: kGreyTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            SalesListDate().launch(context);
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.list_alt,
                                color: kMainColor,
                                size: 28,
                              ),
                              Text(
                                'Sales List',
                                style: GoogleFonts.poppins(
                                  fontSize: 20.0,
                                  color: kMainColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
