import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:matchbuddy/Widgets/ListView.dart';
import 'package:matchbuddy/Widgets/appBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        backgroundColor: Color(0xff1a1a21),
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: BottomNavigationBar(
              selectedItemColor: Colors.white,
              backgroundColor: Color(0xff2b2b37),
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: '"'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.credit_card_rounded), label: '"'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_alert), label: '"'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_today_rounded), label: '"'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: '"'),
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xff1a1a21), //0xff2b2b37),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  appBar(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(child: banner()),
                  BlockText("My Wallet", "View All"),
                  CoinList(),
                  BlockText("Recent Transaction", "View All"),
                  transac(),
                ],
              ),
            ),
          ),
        ));
  }

  Widget banner() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  gradient: LinearGradient(colors: [
                    Colors.amberAccent[200],
                    Colors.amber[700],
                  ]),
                  color: Colors.yellowAccent,
                ),
                padding: EdgeInsets.fromLTRB(20, 25, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "₹ 24,600.80",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xff2b2b37),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                ),
                padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "₹ 788.89",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "6.77%",
                          style: TextStyle(
                              fontSize: 20, color: Colors.greenAccent[700]),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 65,
          height: 180,
          child: InkWell(
            onTap: () {},
            child: Card(
              color: Color(0xff2b2b37),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget transac() {
    return Card(
      color: Color(0xff2b2b37),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(10)),
          height: 40,
          width: 40,
        ),
        title: Text(
          "ETH",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Ethereum",
          style: TextStyle(color: Colors.green),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "₹ 3.475",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "6.89%",
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
