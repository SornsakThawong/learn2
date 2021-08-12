import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/confix/Colors_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _switch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      appBar: AppBar(
        elevation: 0,
        title: Icon(Icons.account_circle,color: Colors.green,size: 40,),
        centerTitle: true,
        backgroundColor: color2,
        leading: IconButton(icon: Icon(Icons.menu_outlined,color: Colors.grey,), onPressed: () {
          // Navigator.pop(context);
        },),
        actions: [
          Switch(
            activeColor: Colors.green,
            value: _switch,
            onChanged: (value) {
            setState(() {
              _switch=value;
            });
          },)
        ],
      ),
      body: SingleChildScrollView(
        // child: ClipPath(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            height: MediaQuery.of(context).size.height*0.8,
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Panding Rides',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('2 Rider',style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                buildStackFirst(),
                SizedBox(height: 20,),
                buildStackSecond(),
              ],
            ),
          ),
          // clipper: CustomClipPath(),
        // ),
      ),
    );
  }

  Stack buildStackSecond() {
    return Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25),
                  padding: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child:  Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('DDDDD'),
                                    Text('DDDDD'),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('DDDDD'),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('DDDDD'),
                                    Text('DDDDD'),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child:  Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('DDDDD'),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('17.85',style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('DDDDD'),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/profile.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],
                ),
              ],
            );
  }

  Stack buildStackFirst() {
    return Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25),
                  // padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child:  Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('DDDDD'),
                                    Text('DDDDD'),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('DDDDD'),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('DDDDD'),
                                    Text('DDDDD'),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15,bottom: 10),
                        child:  Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('DDDDD'),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('17.85',style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Column(
                                  children: [
                                    Text('DDDDD'),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 25),
                        decoration: BoxDecoration(
                            color: Colors.grey[100]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('tttttttttttttttttttt'),
                                Text('ttttttttttttttttttttttttttttt'),
                                Text('ttttttttttttttttttttttttttttt'),
                              ],
                            ),
                            Icon(Icons.phone_enabled,color: Colors.orange,)
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                          ),
                          child: Column(
                            children: [
                              Text('Accept Ride',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/profile.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],
                ),
              ],
            );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  // var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/8, size.height-80, size.width/2, size.height-40);
    path.quadraticBezierTo(3/4*size.width, size.height, size.width, size.height-70);
    path.lineTo(size.width, 0);

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}