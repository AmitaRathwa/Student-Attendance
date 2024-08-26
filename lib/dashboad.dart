import 'package:flutter/material.dart';
import 'package:internship1/profile_page.dart';

import 'attendance_graph.dart';
import 'attendance_screen.dart';
import 'event_page.dart';
import 'login.dart';
import 'notification_page.dart';

class MyHomePage  extends StatelessWidget {
  const MyHomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      // leading: Icon(Icons.account_circle),
      // title: Text('Attendance Management '),
      // actions: [
      //   //Icon(Icons.account_circle),
      //   Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 16),
      //     child: Icon(Icons.logout),
      //   ),

      leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
          child: Icon(Icons.account_circle)),
      title: Text('Attendance Management '),
      actions: [
        //Icon(Icons.account_circle),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.logout),
          ),
        ),
       // Icon(Icons.more_vert),
      ],
      backgroundColor: Colors.pink,


      // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //
      // title: Text(widget.title),
    ),
      body: SingleChildScrollView(
        child: Center(
        
          child: Container(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //Row
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EventPage()));
                      },
                      child: Container(
                        width: 380,
                        height: 200,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(10),
                        //     color: Colors.blue), //BoxDecoration
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/img.jpg",),
        
                            // image: NetworkImage(
                            //     'https://www.kindacode.com/wp-content/uploads/2022/02/beach.jpeg'),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.noRepeat,
        
                          ),
                        ),
        
                      ),
                    ),
                    SizedBox(height: 1,),
                   // Text('hello'),
        
                    Row(
        
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AttendanceScreen()));
                          },
                          child: Container(
                            width: 180,
                            height: 220,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/img2.jpg"),
        
                                fit: BoxFit.cover,
                                repeat: ImageRepeat.noRepeat,
                              ),
                            ),
                            //BoxDecoration
                          ),
                        ),
                        //Container
                        SizedBox(
                          width: 15,
                        ),
                        //SizedBox
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AttendanceGraph()));
                          },
                          child: Container(
                            width: 180,
                            height: 220,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(10),
                            //   color: Colors.cyan,
                            // ) //BoxedDecoration
        
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/img3.jpg"),
                                // image: NetworkImage(
                                //     'https://www.kindacode.com/wp-content/uploads/2022/02/beach.jpeg'),
                                fit: BoxFit.cover,
                                repeat: ImageRepeat.noRepeat,
                              ),
                            ),
        
        
                          ),
                        ) //Container
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    //Container
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotificationDetail(notification: '',)));
                          },
                          child: Container(
                            width: 180,
                            height: 220,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(10),
                            //   color: Colors.cyan,
                            // ), //BoxDecoration
        
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/img4.jpg"),
                                // image: NetworkImage(
                                //     'https://www.kindacode.com/wp-content/uploads/2022/02/beach.jpeg'),
                                fit: BoxFit.cover,
                                repeat: ImageRepeat.noRepeat,
        
                              ),
                            ),
        
                          ),
                        ), //Container
                        SizedBox(
                          width: 15,
                        ), //SizedBox
                        Container(
                          width: 180,
                          height: 220,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(10),
                          //   color: Colors.cyan,
                          // ) //BoxedDecoration
        
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/img5.jpg"),
        
                              // image: NetworkImage(
                              //     'https://www.kindacode.com/wp-content/uploads/2022/02/beach.jpeg'),
                              fit: BoxFit.cover,
                              repeat: ImageRepeat.noRepeat,
        
                            ),
                          ),
        
                        ) ,
                        //Container
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ],
                ), //Column
              ) //Padding
          ), //Container
          //Center
        ),
      ),
    );
  }
}
