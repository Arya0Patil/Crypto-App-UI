import 'package:flutter/material.dart';

Widget BlockText(String lead, String end) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lead,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          TextButton(onPressed: () {}, child: Text(end))
        ],
      ),
    ],
  );
}

Widget CoinList() {
  return Container(
    child: SizedBox(
      height: 155.0,
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                color: Color(0xff2b2b37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                    width: 150,
                    padding: EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                color: Colors.amber,
                                //     child: Icon(
                                //   Icons.copyright_rounded,
                                //   size: 40,
                                // )
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BTC",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Bitcoin",
                                    style: TextStyle(color: Colors.white54),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Balance",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "385.97",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "6.7%",
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              )
                            ],
                          ),
                        ])));
          }),
    ),
  );
}
