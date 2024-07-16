// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(PointApp());
}

class PointApp extends StatefulWidget {
  @override
  _PointAppState createState() => _PointAppState();
}

class _PointAppState extends State<PointApp> {
  int point_TeamA = 0;
  int point_TeamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Point Counter '),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // توزيع المساحة بالتساوي
                crossAxisAlignment:
                    CrossAxisAlignment.center, // مركز العناصر عموديًا
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center, // مركز العناصر أفقيًا
                      children: [
                        Text("Team A",
                            style: TextStyle(
                              fontSize: 35,
                            )),
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text("$point_TeamA",
                                style: TextStyle(
                                  fontSize: 200,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              point_TeamA++;
                            });
                          },
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // شكل مستطيل
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                point_TeamA += 2;
                              });
                            },
                            child: Text(
                              "Add 2 Points",
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(0), // شكل مستطيل
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              point_TeamA += 3;
                            });
                          },
                          child: Text(
                            "Add 3 Points",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // شكل مستطيل
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 590,
                    child: VerticalDivider(thickness: 2, color: Colors.black),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center, // مركز العناصر أفقيًا
                      children: [
                        Text("Team B",
                            style: TextStyle(
                              fontSize: 35,
                            )),
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text("$point_TeamB",
                                style: TextStyle(
                                  fontSize: 200,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              point_TeamB++;
                            });
                          },
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // شكل مستطيل
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                point_TeamB += 2;
                              });
                            },
                            child: Text(
                              "Add 2 Points",
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(0), // شكل مستطيل
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              point_TeamB += 3;
                            });
                          },
                          child: Text(
                            "Add 3 Points",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // شكل مستطيل
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  point_TeamA = 0;
                  point_TeamB = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), // شكل مستطيل
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
