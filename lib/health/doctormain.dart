import 'package:flutter/material.dart';

class DoctorPage extends StatefulWidget {
  @override
  _DoctorPage createState() => _DoctorPage();
}

List images = [
  "assets/doctor1.jpg",
  "assets/doctor2.jpg",
  "assets/doctor3.jpg",
  "assets/doctor4.jpg",
  "assets/doctor1.jpg",
  "assets/doctor2.jpg"
];

class _DoctorPage extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(125, 120, 225, 1),
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(125, 120, 225, 1),
          elevation: 0,
          actions: [Icon(Icons.more_vert)]),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      image: DecorationImage(
                          image: AssetImage("assets/doctor1.jpg"))),
                ),
                const SizedBox(height: 20),
                Text(
                  "Dr Doctor name",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Text("Therapist", style: TextStyle(color: Colors.white)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          color: Color.fromRGBO(169, 166, 234, 1)),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          color: Color.fromRGBO(169, 166, 234, 1)),
                      child: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Doctor",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Text(
                  "Lorem ipsum is simply dummy text of printing and type setting industry",
                  style: TextStyle(
                      fontSize: 16,
                      height: 1.3,
                      color: Color.fromRGBO(156, 155, 156, 1)),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text("Reviews",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          const SizedBox(width: 10),
                          Icon(Icons.star, color: Colors.amber),
                          Text("4.9",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          const SizedBox(width: 3),
                          Text("(124)",
                              style: TextStyle(
                                  color: Color.fromRGBO(156, 155, 156, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700))
                        ],
                      ),
                    ),
                    Text("See all",
                        style: TextStyle(
                            color: Color.fromRGBO(125, 120, 225, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w700))
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                            width: 300,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(360),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage(images[index]))),
                                      ),
                                      const SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Dr. Doctor name",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            "1 day ago",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 20),
                                      Row(
                                        children: [
                                          Icon(Icons.star, color: Colors.amber),
                                          Text("4.9")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(
                                      "Many thanks to Dr Dear. He is great and professional doctor",
                                      style: TextStyle(
                                          color: Colors.black54, height: 1.3),
                                    ))
                              ],
                            ));
                      }),
                ),
                const SizedBox(height: 20),
                Text(
                  "Location",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            color: Color.fromRGBO(216,215,229,1)),
                        child: Icon(
                          Icons.gps_fixed,
                          color: Color.fromRGBO(113,103,197,1),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New York, Medical center",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                          SizedBox(height: 6),
                          Text("address line of medical center"),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 100)
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(
                    color: Color.fromRGBO(195, 194, 195, 1), width: 2)),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 178, 178, 178),
                  spreadRadius: 1)
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Consultation price",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey),
                ),
                Text(
                  "\$100",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(125, 120, 225, 1),
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                child: Text(
                  "Book Appointment",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
