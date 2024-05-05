import 'package:flutter/material.dart';
import 'package:princeton_app/presentation/screens/recording_page.dart';
import 'package:princeton_app/presentation/widgets/bottom_navbar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: MyNavBar(),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.06),
                child: Column(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.52,
                        ),
                        Text(
                          "Welcome, \n Priya",
                          style: TextStyle(
                              color: Color(0xff4A164B), fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                           onTap: (){
                      Navigator.of(context).pushNamed(
                        '/user_profile',
                      );
                    },
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width*0.13,
                              child: Image.asset("assets/image/profile_img.png")),
                        ),
                      ],
                    ),
                    Text(
                      "Performance Tracker",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.029,
                          color: Color(0xff4A164B),
                          fontWeight: FontWeight.bold),
                    ),
                    //TODO : Implement horizontal list of tiles
                    Row(
                      children: [
                        Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Card(
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width*0.025,
                                      bottom:
                                          MediaQuery.of(context).size.height * 0.016),
                                  child: Text(
                                    "Body Language",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4A275B)),
                                  ),
                                ),
                                Text(
                                  "64%",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height * 0.024),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.453,
                          child: Card(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.face,
                                  color: Colors.orange,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context).size.width*0.025,
                                          bottom:
                                              MediaQuery.of(context).size.height * 0.016),
                                      child: Text(
                                        "Facial Expressions",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4A275B)),
                                      ),
                                    ),
                                    Text(
                                      "78%",
                                      style: TextStyle(
                                          fontSize:
                                              MediaQuery.of(context).size.height * 0.024),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Overall Score",
                      style: TextStyle(
                          color: Color(0xff4A164B),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.024),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: MediaQuery.of(context).size.height*0.19,
                      child: Card(
                      //child: Text("K"),
                      ),
                    ),
                    // TextFormField(
                    //   readOnly: true,
                    //   decoration: InputDecoration(
                    //     border: InputBorder(borderSide: BorderSide(color: Colors.black))
                    //   ),
                    //   minLines: 5,
                    //   maxLines: 7,
                    // ),
                    Text("Global Comparison",
                        style: TextStyle(
                            color: Color(0xff4A164B),
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height * 0.024)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: MediaQuery.of(context).size.height*0.19,
                      child: Card(
                      //child: Text("K"),
                      ),
                    ),
                    Text("Sample Video",
                        style: TextStyle(
                            color: Color(0xff4A164B),
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height * 0.024)),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: MediaQuery.of(context).size.height*0.19,
                      child: Card(
                      //child: Text("K"),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.058,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width*0.8,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              '/dashboard',
                            );
                          },
                          child: Text(
                            "View Report",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFFC107)),
                        )),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                 Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RecordingPage()),
                          );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 600,left: 125),
                child: Image.asset("assets/image/add button.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}