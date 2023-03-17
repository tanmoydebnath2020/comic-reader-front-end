import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  signOut() {
    Navigator.pushNamed(context, 'login');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/home.jpg'), fit: BoxFit.cover),
      ),
      
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Center(
            child: Text("HOME PAGE"),
          ),
          backgroundColor: Colors.transparent,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            signOut();
          },
          child: Icon(Icons.logout_rounded),
          backgroundColor: Colors.transparent,
        ),
        body: ListView(
        children: 
        [
          CarouselSlider(
              items: [ 
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage('assets/car1.jpg'),
                      fit: BoxFit.cover, 
                    ),
                  ), 
                ),
                  
                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage('assets/car2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage('assets/car3.jpg'),
                      fit: BoxFit.cover, 
                    ),
                  ), 
                ),  
          ],
              
            //Slider Container properties
              options: CarouselOptions(
                height: 500.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 8,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
                
              ),
          ),
          SizedBox(height:30),
          Text("CURRENTLY READING:", textAlign: TextAlign.center, style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color.fromARGB(255, 242, 243, 245),
                                      fontSize: 50,
                                      fontFamily: 'RobotoMono'),
                                ),
          IconButton(
            icon: Image.asset('assets/tile3.jpg'),
            iconSize: 220,
            onPressed: () {
              Navigator.pushNamed(context, 'free_chapter');
            },
          ),
        ],
      ),
        
       
      ),
    );
  }
}