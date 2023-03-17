import 'dart:developer';
import 'package:flutter/material.dart';

const List<Widget> optionSelected = <Widget>[
  Text('YES',
  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50,)),
  Text('NO',
  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50,)),
];

class FreeChapter extends StatefulWidget {
  const FreeChapter({Key? key}) : super(key: key);
  @override
  _FreeChapterState createState() => _FreeChapterState();
}

class _FreeChapterState extends State<FreeChapter> {
  final List<bool> _optionSelected = <bool>[true, false];
  bool vertical = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Chapter - 1"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              Card(
                child: Image.asset("./1-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              Card(
                child: Image.asset("./2-o.jpg"),
                elevation: 10,
              ),
              // ToggleButtons with a single selection.
              Text('UNLOCK FULL CHAPTER?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 100,)),
              const SizedBox(height: 5),
              ToggleButtons(
                direction: vertical ? Axis.vertical : Axis.horizontal,
                onPressed: (int index) {
                  setState(() {
                    // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < _optionSelected.length; i++) {
                      _optionSelected[i] = i == index;
                    }
                    
                  });
                  if(index == 0) {
                       showDialog(
                              context: context,
                              
                              builder: (BuildContext context) {
                                return AlertDialog(
                    scrollable: true,                    
                    title: Text('Unlock full chapter'),
                    content:
                    Padding(
                      padding: const EdgeInsets.only( top:20),
                    child: Column(
                    children: <Widget>[
                      RichText(
                            text: TextSpan(
                              text: 'Are you willing to use ',
                              style: 
                                TextStyle(color: Colors.black,fontSize: 24),
                              children: const <TextSpan>[
                                TextSpan(text: '5 coins', style: TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: ' to unlock full chapter?'),
                              ],
                            ),
                          ) ,
                      Image.asset("./unlockAnimation.jpeg",height: 150.0,  width: 150.0),                      
                    ]
                    )
                    ),
                                      
                     actions: [
                      ElevatedButton(
                          child: Text("Cancel"),
                          onPressed: () {
                            Navigator.pushNamed(context, 'homePage'); //Come back to home page
                          }),
                      ElevatedButton(
                          child: Text("Proceed to Full Chapter"),
                          onPressed: () {
                            Navigator.pushNamed(context, 'full_chapter'); //Proceed to full chapter
                          })                          
                    ],                    
                  );
                                
                              },
                            ); 
                    }
                    else {
                      Navigator.pushNamed(context, 'homePage');
                    }
                },
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                selectedBorderColor: Colors.blueAccent[700],
                selectedColor: Colors.white,
                fillColor: Colors.blue[200],
                color: Colors.blue[400],
                constraints: const BoxConstraints(
                  minHeight: 100.0,
                  minWidth: 200.0,
                ),
                isSelected: _optionSelected,
                children: optionSelected,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
