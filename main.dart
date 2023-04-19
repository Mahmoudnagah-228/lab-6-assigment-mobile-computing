import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamApoint = 0;

  int teamBpoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 32, 133, 180),
              title: Text("Basketball score counter "),
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "TEAM A ",
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              "$teamApoint",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 60),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamApoint++;
                                  print(teamApoint);
                                });
                              },
                              child: Text(
                                " +1 point",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(40, 50)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamApoint += 2;
                                });
                              },
                              child: Text(
                                " +2 point",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(50, 50)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamApoint += 3;
                                });
                              },
                              child: Text(
                                " +3 point",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(60, 50)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        thickness: 2,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "TEAM B",
                              style: TextStyle(fontSize: 35),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              "$teamBpoint",
                              style: TextStyle(
                                  fontSize: 60, fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamBpoint++;
                                });
                              },
                              child: Text(
                                " +1 point",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(40, 50)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamBpoint += 2;
                                });
                              },
                              child: Text(
                                " +2 point",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(80, 50)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamBpoint += 3;
                                });
                              },
                              child: Text(
                                " +3 point",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(80, 50)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoint = 0;
                          teamBpoint = 0;
                        });
                      },
                      child: Text("reset"),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(120, 50),
                          primary: Color.fromARGB(220, 235, 234, 231),
                          onPrimary: Colors.black),
                    ))
              ],
            )));
  }
}
