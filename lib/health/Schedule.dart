import 'package:healthcare/health/aboutSchedule.dart';
import 'package:flutter/material.dart';

class Schedule_Screen extends StatefulWidget {
  @override
  _Schedule_screen createState() => _Schedule_screen();
}

class _Schedule_screen extends State<Schedule_Screen> {
  int _button = 0;
  final schedule = [aboutSchedule(), Container(), Container()];
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Schedule",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 30),
            Row(
              children: <Widget>[
                Expanded(
                    child: TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size.fromHeight(50),
                    backgroundColor: _button == 0
                        ? Color.fromRGBO(125, 120, 225, 1)
                        : Color.fromRGBO(247, 247, 251, 1),
                    foregroundColor: _button == 0
                        ? Colors.white
                        : Color.fromRGBO(165, 166, 171, 1),
                  ),
                  child: Text("Upcoming"),
                  onPressed: () {
                    setState(() {
                      _button = 0;
                    });
                  },
                )),
                Expanded(
                    child: TextButton(
                  onPressed: () {
                    setState(() {
                      _button = 1;
                    });
                  },
                  style: TextButton.styleFrom(
                      fixedSize: Size.fromHeight(50),
                      backgroundColor: _button == 1
                          ? Color.fromRGBO(125, 120, 225, 1)
                          : Color.fromRGBO(247, 247, 251, 1),
                      foregroundColor: _button == 1
                          ? Colors.white
                          : Color.fromRGBO(165, 166, 171, 1)),
                  child: Text("Completed"),
                )),
                Expanded(
                    child: TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: Size.fromHeight(50),
                      backgroundColor: _button == 2
                          ? Color.fromRGBO(125, 120, 225, 1)
                          : Color.fromRGBO(247, 247, 251, 1),
                      foregroundColor: _button == 2
                          ? Colors.white
                          : Color.fromRGBO(165, 166, 171, 1)),
                  child: Text("Completed"),
                  onPressed: () {
                    setState(() {
                      _button = 2;
                    });
                  },
                ))
              ],
            ),
            const SizedBox(height: 40),
            schedule[_button]
          ]),
        )
      ],
    ));
  }
}
