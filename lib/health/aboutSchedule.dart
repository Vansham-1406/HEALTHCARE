import 'package:healthcare/health/doctormain.dart';
import 'package:flutter/material.dart';

class aboutSchedule extends StatefulWidget {
  @override
  _aboutSchedule createState() => _aboutSchedule();
}

class _aboutSchedule extends State<aboutSchedule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "About Doctor",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 15),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: images.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr Doctor name",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 5),
                            Text("Therapist",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images[index])),
                              borderRadius: BorderRadius.circular(360)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Divider(
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              "12/01/2023",
                              style: TextStyle(color: Colors.black45),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.punch_clock,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              "10:30",
                              style: TextStyle(color: Colors.black45),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.green),
                            ),
                            const SizedBox(width: 4),
                            Text("Confirmed",
                                style: TextStyle(color: Colors.black45))
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                            child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(247, 247, 251, 1),
                              foregroundColor: Color.fromRGBO(178, 178, 183, 1),
                              fixedSize: Size.fromHeight(45)),
                          onPressed: () {},
                          child: Text("Cancel"),
                        )),
                        SizedBox(width: 30),
                        Expanded(
                            child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(125, 120, 225, 1),
                              foregroundColor: Colors.white,
                              fixedSize: Size.fromHeight(45)),
                          onPressed: () {},
                          child: Text("Reschedule"),
                        )),
                      ],
                    )
                  ],
                ),
              );
            })
      ]),
    );
  }
}
