import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _HomeState();
}

class _HomeState extends State<Page1> {
  TextEditingController txtday =
  TextEditingController(text: "${DateTime
      .now()
      .day}");
  TextEditingController txtmonth =
  TextEditingController(text: "${DateTime
      .now()
      .month}");
  TextEditingController txtyear =
  TextEditingController(text: "${DateTime
      .now()
      .year}");
  TextEditingController txtdday = TextEditingController();
  TextEditingController txtdmonth = TextEditingController();
  TextEditingController txtdyear = TextEditingController();

  int year = 0;
  int month = 0;
  int day = 0;
  int tb = 0;
  int td = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Age Calculator"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today's Date"),
                  SizedBox(height: 5),
                  TextField(
                    controller: txtday,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: txtmonth,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: txtyear,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Date Of Birth"),
                  SizedBox(height: 5),
                  TextField(
                    controller: txtdday,
                    decoration: InputDecoration(
                      label: Text("DD"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: txtdmonth,
                    decoration: InputDecoration(
                      label: Text("MM"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: txtdyear,
                    decoration: InputDecoration(
                      label: Text("YY"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.blue.shade900),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Clear",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            String cday = txtday.text;
                            String cmonth = txtmonth.text;
                            String cyear = txtyear.text;
                            String bday = txtdday.text;
                            String bmonth = txtdmonth.text;
                            String byear = txtdyear.text;
                            int x = int.parse(cday);
                            int y = int.parse(cmonth);
                            int z = int.parse(cyear);
                            int a = int.parse(bday);
                            int b = int.parse(bmonth);
                            int c = int.parse(byear);
                            setState(() {
                              tb = b;
                              td = a;
                              year = z - c;
                              month = y - b;
                              day = x - a;
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius:
                              BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.blue.shade900),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Calculate",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Present Age"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                            colors: [Colors.black87, Colors.blue.shade900])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$year",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Year",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$month",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "MM",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$day",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "DD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Next Birthday"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(
                          colors: [Colors.blue.shade900, Colors.black87]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$tb",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "MM",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$td",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "DD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}