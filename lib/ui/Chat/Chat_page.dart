import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/confix/Colors_custom.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  final _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color6,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height*1.5/8,
                height: 160,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xFFe09fe5),
                      Color(0xFFfd6ca5)
                    ], // red to yellow
                    tileMode: TileMode.repeated, // repeats the gradient over the canvas
                  ),
                ),
              ),
              clipper: ClipPathCircle2(),
            ),
            ClipPath(
              child: Container(
                // alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height*3.5/8,
                height: 380,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xFFdb84da),
                      Color(0xFFfd4a93)
                    ], // red to yellow
                    tileMode: TileMode.repeated, // repeats the gradient over the canvas
                  ),
                ),
                child: Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*1/10,left: MediaQuery.of(context).size.width*0.4/10),
                    child: Text('Sornsak',style: TextStyle(fontSize: 60,color: Colors.white),)
                ),
              ),
              clipper: ClipPathCircle1(),
            ),
            ClipPath(
              child: Container(
                // alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.1)
                  // gradient: LinearGradient(
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  //   colors: <Color>[
                  //     Color(0xFFdb84da),
                  //     Color(0xFFfd4a93)
                  //   ], // red to yellow/ repeats the gradient over the canvas
                  //   tileMode: TileMode.repeated,
                  // ),
                ),
              ),
              clipper: ClipPathCircle3(),
            ),

            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*1.1/3, left: 20, right: 20,),
              // margin: EdgeInsets.only(left: 20, right: 20,),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20,bottom: 40,left: 20,right: 20),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 0.5,
                            spreadRadius: 0.5,
                            offset: Offset(1,1)
                        )
                      ],
                      color: Colors.white,
                    ),
                    child: Form(
                      key: _fromkey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Email",
                            ),
                            validator: (value){
                              if (value!.isEmpty) {
                                return "Please enter your email address!";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 15,),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Password",
                            ),
                            validator: (value){
                              if (value!.isEmpty) {
                                return "Please enter your password!";
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('FORGOT PASSWORD',style: TextStyle(color: color5,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: 70,),
                  Row(
                    children: [
                      Expanded(
                        flex: 60,
                        child: GestureDetector(
                          onTap: (){
                            bool checkText = _fromkey.currentState!.validate();
                            print(checkText);
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Color(0xFFe09fe5),
                                    Color(0xFFfd6ca5)
                                  ], // red to yellow
                                  tileMode: TileMode.repeated, // repeats the gradient over the canvas
                                ),
                              ),
                              child: Text('SIGN IN',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 20,
                        child: Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue[700],
                            ),
                            child: Text('F',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                        ),
                      ),
                      Expanded(
                        flex: 20,
                        child: Container(
                          padding: EdgeInsets.all(11),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Icon(Icons.directions_bike_rounded,size: 24,color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Container(
                    child: Divider(
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('DONT HAVE AN ACCOUNT? ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                      Text('SIGN UP',style: TextStyle(color: color5,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class ClipPathCircle1 extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(Rect.fromPoints(Offset(-80, -80), Offset(size.width*7/10, size.height*6/10)));
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ClipPathCircle2 extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, size.height);
    // path.addOval(Rect.fromPoints(Offset(size.width, size.height), Offset(size.width*1.7/3, -(size.height))));
    path.addOval(Rect.fromPoints(Offset(size.width*1.7, -(size.height*0.3)), Offset(size.width*1.7/3, -(size.height*0.1/8))));
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ClipPathCircle3 extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, size.height);
    path.addOval(Rect.fromPoints(Offset(size.width*1.3, size.height*1.5), Offset(size.width*0.6, size.height*0.8)));
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}