import 'package:healthcare/health/mainMessage.dart';
import 'package:flutter/material.dart';

class Message_Screen extends StatefulWidget {
  @override
  _Message_screen createState() => _Message_screen();
}

List images = [
  "assets/doctor1.jpg",
  "assets/doctor2.jpg",
  "assets/doctor3.jpg",
  "assets/doctor4.jpg",
  "assets/doctor1.jpg",
  "assets/doctor2.jpg",
  "assets/doctor1.jpg",
  "assets/doctor2.jpg",
];

class _Message_screen extends State<Message_Screen> {
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView(
        children: [
          Text(
            "Messages",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 50),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  hintText: "Search",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.white)),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 80,
            child: ListView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        width: 60,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            image: DecorationImage(
                                image: AssetImage(images[index]))),
                      ),
                      Positioned(
                          right: 15,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(100)),
                          )),
                    ],
                  );
                }),
          ),
          SizedBox(height: 10),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: images.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mainMessage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            image: DecorationImage(
                                image: AssetImage(images[index]))),
                      ),
                      const SizedBox(width: 1),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Doctor name",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 5),
                          Text("Hello Doctor are you there? asd...",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey))
                        ],
                      ),
                      const SizedBox(width: 1),
                      Text("12:30",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                );
              }),
          SizedBox(height: 40)
        ],
      ),
    ));
  }
}
