import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_project/confix/BottomNavigator_custom.dart';
import 'package:second_project/confix/Colors_custom.dart';
import 'package:second_project/ui/Profile/Profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Timer? _timer;
  int _start = 2;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  //99:B9:AB:C2:41:60:AF:C8:40:07:8A:AA:76:18:1D:22:B3:DE:08:F1

  void startTimer() async{
    await Future.delayed(Duration(seconds: 3));

    Navigator.of(context)
        .pushAndRemoveUntil(
        MaterialPageRoute(
            builder: (context) => BottomNavigator_custom3(
                indexpage: 1)
        ),
            (Route<dynamic> route) => false);

    // Navigator.of(context)
    //     .pushAndRemoveUntil(
    //     MaterialPageRoute(
    //         builder: (context) => BottomNavigator_custom2(
    //           indexpage: Profile_page(),
    //           numpage: 4,
    //           checkstatus: true,
    //           texttitle: "ข้อมูลส่วนตัว",)
    //     ),
    //         (Route<dynamic> route) => false);

    // const oneSec = const Duration(seconds: 1);
    // _timer = new Timer.periodic(
    //   oneSec,
    //       (Timer timer) => setState(
    //         () {
    //       if (_start < 1) {
    //         timer.cancel();
    //         print("success");
    //         Navigator.of(context)
    //             .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => BottomNavigator_custom2(indexpage: Profile_page(),numpage: 4,checkstatus: true,texttitle: "ข้อมูลส่วนตัว",)), (Route<dynamic> route) => false);
    //       } else {
    //         _start = _start - 1;
    //         print(_start);
    //       }
    //     },
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
        backgroundColor: color1,
      ),
      body: Center(
        child: CircularProgressIndicator(
          color: color1,
          backgroundColor: Colors.grey[300],
          strokeWidth: 3,
        ),
      ),
    );
  }
}
