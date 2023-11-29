import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body:Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.purpleAccent, Colors.blue],
                      ),
                    ),
                  ),
                  Container(
                    child: CircularParticle(
                       speedOfParticles: 1,
                       height: 800,
                       width: 400,
                      onTapAnimation: true,
                      awayAnimationDuration: Duration(milliseconds: 600),
                      maxParticleSize: 5,
                      isRandSize: true,
                      isRandomColor: true,
                      randColorList: [
                        Colors.red,
                        Colors.white,
                        Colors.yellow,
                        Colors.green,
                      ],
                      awayAnimationCurve: Curves.easeInOutBack,
                      enableHover: true,
                      hoverColor: Colors.white,
                      hoverRadius: 90,
                    ),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          child: Stack(
                            children: [Positioned(
                              child: Container(
                                  decoration: BoxDecoration(
                                    //image: DecorationImage(
                                    // fit: BoxFit.cover,

                                  )),
                            ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hello There,\n welcome back',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'UserName',
                                              hintStyle:
                                              TextStyle(color: Colors.white)),
                                        ),
                                      ),
                                      Container(margin:EdgeInsets.all(10),height: 2,color: Colors.grey,),
                                      Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Password',
                                              hintStyle:
                                              TextStyle(color: Colors.white)),
                                        ),
                                      ),
                                      Container(margin: EdgeInsets.all(10),height: 2,color: Colors.grey,),
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  Center(
                                    child: Text(
                                      "Forgot Password",
                                      style: TextStyle(
                                        color: Colors.pinkAccent[200],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  InkWell(
                                      highlightColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      onHighlightChanged: (value) {
                                        setState(() {
                                          isTapped = value;
                                        });
                                      },
                                      onTap: () {},
                                      child: AnimatedContainer(
                                        margin: EdgeInsets.only(left: 100),
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        width: isTapped ? 200 :210,
                                        height: isTapped ? 50 :60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(50),
                                            color: isTapped? Colors.pink[200] : Colors.pinkAccent[200],
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(3,7),
                                                  blurRadius: 30,
                                                  color: Colors.black.withOpacity(0.3)
                                              )
                                            ]
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      )
                                  ),
                                  SizedBox(height: 20.0),
                                  Center(
                                    child: Text(
                                      "Create Account",
                                      style: TextStyle(
                                        color: Colors.pinkAccent[200],
                                      ),
                                    ),
                                  )
                                ]
                            )

                        )
                      ])
                ]
            )));
  }
}