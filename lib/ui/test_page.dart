import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/ui/Profile/Profile_page.dart';
import 'package:second_project/ui/Profile/Seemor_page.dart';

class test_page extends StatefulWidget {
  test_page({Key? key,required this.indexpage, required this.numpage,required this.checkstatus}) : super(key: key);
  var indexpage;
  var numpage;
  var checkstatus;

  @override
  _test_pageState createState() => _test_pageState();
}

class _test_pageState extends State<test_page> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
      print(currentTabIndex);
      widget.checkstatus = false;
    });
  }

  List<Widget> tabs = [
    Seemor_page(),
    Profile_page(),
    Seemor_page(),
  ];

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("123"),
      ),
      // Body Where the content will be shown of each page index
      // body: tabs[currentTabIndex],
      body: widget.checkstatus? widget.indexpage:tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: onTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("Search")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("User Info")),
          ]),
    );
  }
}



class test2 extends StatefulWidget {
  const test2({Key? key}) : super(key: key);

  @override
  _test2State createState() => _test2State();
}

class _test2State extends State<test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('TTTTTTTTTTT'),
      ),
    );
  }
}

class test3 extends StatefulWidget {
  const test3({Key? key}) : super(key: key);

  @override
  _test3State createState() => _test3State();
}

class _test3State extends State<test3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('PPPPPPPPPPPP'),
      ),
    );
  }
}

