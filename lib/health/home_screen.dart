import 'package:flutter/material.dart';
import 'package:healthcare/health/doctormain.dart';


class Home_Screen extends StatefulWidget{
  @override
  _Home_screen createState() => _Home_screen();
}

List docopp = ["Temperature", "Snuffle", "Fever", "Cough", "Cold"];
List images = [
  "assets/doctor1.jpg",
  "assets/doctor2.jpg",
  "assets/doctor3.jpg",
  "assets/doctor4.jpg"
];

class _Home_screen extends State<Home_Screen>
{
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Hello Alex",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/doctor1.jpg")),
                        borderRadius: BorderRadius.circular(360)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 180,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(125, 120, 225, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(360)),
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: Color.fromRGBO(125, 120, 225, 1),
                          ),
                        ),
                        const SizedBox(height: 35),
                        Text(
                          "Clinic Visit",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Make an appointment",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: const Color.fromARGB(255, 161, 161, 161),
                              spreadRadius: 0.2,
                              blurRadius: 2),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(243, 241, 254, 1),
                              borderRadius: BorderRadius.circular(360)),
                          child: Icon(
                            Icons.home,
                            size: 30,
                            color: Color.fromRGBO(125, 120, 225, 1),
                          ),
                        ),
                        const SizedBox(height: 35),
                        Text(
                          "Home Visit",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Call the doctor home",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "What are your Symptoms?",
                  style: TextStyle(
                      color: Color.fromRGBO(139, 138, 139, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                )),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 70,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: docopp.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Color(0xFFF4F6FA),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          docopp[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 20),
            Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Popular Doctors",
                  style: TextStyle(
                      color: Color.fromRGBO(139, 138, 139, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                )),
            Container(
                padding: EdgeInsets.only(bottom: 40),
                child: GridView.builder(
                    itemCount: images.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DoctorPage()));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                color: Color(0xFFF4F6FA),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360),
                                      image: DecorationImage(
                                          image: AssetImage(images[index]))),
                                ),
                                Text(
                                  "Dr Doctor name",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(146, 145, 146, 1),
                                      fontWeight: FontWeight.w700),
                                ),
                                Text("Therapist",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(146, 145, 146, 1),
                                        fontWeight: FontWeight.w400)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 226, 208, 40),
                                    ),
                                    Text("4.9",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color.fromRGBO(
                                                146, 145, 146, 1),
                                            fontWeight: FontWeight.w400))
                                  ],
                                )
                              ],
                            ),
                          ));
                    }))
          ],
        ),
      );
  }
}