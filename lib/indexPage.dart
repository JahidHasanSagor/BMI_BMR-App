
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  int age = 20;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Padding(
          padding: const EdgeInsets.only(left:110 ),
          child: Text("BMI Calculation",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 160,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.male,
                          size: 80,
                            color: Colors.white,
                          ),
                          SizedBox(height: 20,),
                          Text("Male",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 160,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.female,
                            size: 80,
                            color: Colors.white,
                          ),
                          SizedBox(height: 20,),
                          Text("Female",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text("Height",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Height in cm",
                          hintStyle: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          )
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 160,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("weight",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(weight.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: Icon(FontAwesomeIcons.plus,
                                  color: Colors.white,
                                  ),
                                  onPressed:(){
                                    setState(() {
                                      weight++;
                                    });
                                  }
                              ),
                              SizedBox(width: 10,),
                              IconButton(
                                  icon: Icon(FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                  onPressed:(){
                                    setState(() {
                                      weight--;
                                    });
                                  }
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 160,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(age.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: Icon(FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onPressed:(){
                                    setState(() {
                                      age++;
                                    });
                                  }
                              ),
                              SizedBox(width: 10,),
                              IconButton(
                                  icon: Icon(FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                  onPressed:(){
                                    setState(() {
                                      age--;
                                    });
                                  }
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Container(
                   height: 50,
                   width: 350,
                   decoration: BoxDecoration(color: Colors.greenAccent,
                     borderRadius: BorderRadius.circular(15),
                   ),

                   child: Column(
                     children: [
                       IconButton(
                           icon: Icon(FontAwesomeIcons.minus,
                             color: Colors.white,
                           ),
                           onPressed:(){
                             setState(() {

                               age--;
                             });
                           }
                       ),

                     ],

                   ),

                 ),

               ),
             ],
           ),

          ],
        ),
      ),

    );
  }
}
