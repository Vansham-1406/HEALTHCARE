import 'package:flutter/material.dart';

class Settings_Screen extends StatefulWidget {
  @override
  _Settings_screen createState() => _Settings_screen();
}

List color = [
  Color.fromRGBO(194, 225, 255, 1),
  Color.fromRGBO(217, 204, 239, 1),
  Color.fromRGBO(204, 209, 236, 1),
  Color.fromRGBO(205, 230, 205, 1),
  Color.fromRGBO(248, 221, 179, 1)
];

List icon = [
  Icons.person,
  Icons.notifications,
  Icons.privacy_tip,
  Icons.settings_accessibility,
  Icons.info
];

List fontColor = [
  Color.fromRGBO(90, 169, 235, 1),
  Color.fromRGBO(104, 81, 179, 1),
  Color.fromRGBO(79, 96, 189, 1),
  Color.fromRGBO(94, 161, 106, 1),
  Color.fromRGBO(254, 159, 30, 1)
];

List title = ["Profile", "Notifications", "Privacy", "General", "About Us"];

class _Settings_screen extends State<Settings_Screen> {
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Settings",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    image: DecorationImage(
                        image: AssetImage("assets/doctor1.jpg"))),
              ),
              const SizedBox(width: 18),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Dear Programmer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Profile",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Color.fromRGBO(229, 228, 230, 1), width: 1),
                    bottom: BorderSide(
                        color: Color.fromRGBO(229, 228, 230, 1), width: 1))),
            child: ListView.builder(
                itemCount: title.length,
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(360),
                                  color: color[index]),
                              child: Icon(
                                icon[index],
                                color: fontColor[index],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Text(
                                title[index],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromRGBO(174, 173, 174, 1),
                        )
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      color: Color.fromRGBO(239, 142, 122, 1)),
                  child: Icon(
                    Icons.info_outline,
                    size: 30,
                    color: Color.fromRGBO(235, 102, 91, 1),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Log out",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
