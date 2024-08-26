import 'package:flutter/material.dart';
import 'dashboad.dart';
import 'event_registration_form.dart';
import 'modal.dart';
class EventPage extends StatelessWidget {
   EventPage({super.key});
  final List _photos = [
    Data(image:"assets/images/img12.jpg", text:"Coding Contest"),
    Data(image:"assets/images/img15.jpg", text:"Hackathon"),
    Data(image:"assets/images/img17.jpg", text:"Career Fair"),
    Data(image:"assets/images/img16.jpg", text:"Cultural Event"),
    Data(image:"assets/images/img11.jpg", text:"DJ Night"),
    Data(image:"assets/images/img18.jpg", text:"Sports Day"),
    // Data(image:"assets/images/img4.jpg", text:"Attendance"),
    // Data(image:"assets/images/img5.jpg", text:"Attendance"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
            child: Icon(Icons.arrow_back)),
        title: Text('Event page '),

        //title: Text('Flutter Demo Home Page'),

        //leading: Icon(Icons.arrow_back),
        //title: Text('Event Page '),
        // actions: [
        //   //Icon(Icons.account_circle),
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 16),
        //     child: Icon(Icons.logout),
        //   ),
        //   //Icon(Icons.more_vert),
        // ],
        backgroundColor: Colors.indigo,


      ),


      body: Container(

        child: GridView.builder(
            itemCount: _photos.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
            itemBuilder: (context,index){
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EventRegistrationScreen()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration:BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(15) ,
                        image: DecorationImage(
                            image: AssetImage(_photos[index].image),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),

                  Text (_photos[index].text)
                ],
              );
            }
        ),

      ),


    );
  }
}
