import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class mainMessage extends StatefulWidget {
  @override
  _mainMessage createState() => _mainMessage();
}

class _mainMessage extends State<mainMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color.fromRGBO(125, 120, 225, 1),
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  image:
                      DecorationImage(image: AssetImage("assets/doctor1.jpg"))),
            ),
            Text(
              "Dr Doctor name",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.call,
                  size: 26,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.video_call,
                  size: 26,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.more_vert,
                    size: 26,
                  ))
            ],
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 80),
                      child: ClipPath(
                        clipper: UpperNipMessageClipper(MessageType.receive),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFFE1E1E2),
                          ),
                          child: Text(
                            "Hello, what i can do for you. you can book appointment directly.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 80),
                        child: ClipPath(
                          clipper: LowerNipMessageClipper(MessageType.send),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, top: 10, bottom: 25, right: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFF7165D6),
                            ),
                            child: Text(
                              "Hello Doctor, Are you there?",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ));
          }),
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Color.fromARGB(136, 97, 97, 97),
              spreadRadius: 2,
              blurRadius: 10)
        ]),
        child: Row(
          children: [
            Icon(
              Icons.add,
              size: 30,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.amber,
              size: 30,
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "Type Something"),
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                size: 30,
                color: Color(0xFF7165D6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
