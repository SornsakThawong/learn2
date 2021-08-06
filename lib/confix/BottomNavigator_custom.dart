import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/confix/Colors_custom.dart';
import 'package:second_project/ui/Profile/Profile_page.dart';
import 'package:second_project/ui/Profile/Seemor_page.dart';


class BottomNavigator_custom3 extends StatefulWidget {
  BottomNavigator_custom3({Key? key, required this.indexpage}) : super(key: key);
  var indexpage;

  @override
  _BottomNavigator_custom3State createState() => _BottomNavigator_custom3State();
}

class _BottomNavigator_custom3State extends State<BottomNavigator_custom3> {
  CupertinoTabController? tabController;

  @override
  void initState() {
    super.initState();
    setState(() {
      tabController = CupertinoTabController(initialIndex: widget.indexpage);
      print(tabController);
      print(tabController.runtimeType);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "หน้าแรก",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on_outlined),
            label: "วงเงินสินเชื่อ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "แชท",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_on_outlined),
            label: "แจ้งเตือน",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "ข้อมูลส่วนตัว",
          ),
        ],
        activeColor: color1,
      ),
      controller: tabController,
      tabBuilder: (BuildContext context, int index) {
        // _selectedIndex = index;
        return CupertinoTabView(
          builder: (BuildContext context) {
            switch (tabController!.index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return Text("test");
                  },
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return Text("test");
                  },
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return Text("test");
                  },
                );
                break;
              case 3:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return Text("test");
                  },
                );
              case 4:
                return CupertinoTabView(
                  builder: (BuildContext context) {
                    return Profile_page();
                  },
                );
                break;
              default:
                return Container();
            }
          },
        );
      },
    );
  }
}



class BottomNavigator_custom2 extends StatefulWidget {
  BottomNavigator_custom2({Key? key,required this.indexpage, required this.numpage,required this.checkstatus,required this.texttitle}) : super(key: key);
  var indexpage;
  var numpage;
  var checkstatus;
  var texttitle;

  @override
  _BottomNavigator_custom2State createState() => _BottomNavigator_custom2State();
}

class _BottomNavigator_custom2State extends State<BottomNavigator_custom2> {
  int currentTabIndex = 0;
  String? _Title;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
      print(currentTabIndex);
      widget.checkstatus = false;
    });
  }

  List<Widget> tabs = [
    Profile_page(),
    Profile_page(),
    Profile_page(),
    Profile_page(),
    Profile_page(),
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      _Title = widget.texttitle;
      currentTabIndex = widget.numpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_Title.toString(),style: TextStyle(color: Colors.white,fontSize: 22),),
        centerTitle: true,
        backgroundColor: color1,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.white,), onPressed: () {
          // Navigator.pop(context);
        },),
      ),
      // body: tabs[currentTabIndex],
      body: widget.checkstatus? widget.indexpage:tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: onTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("หน้าแรก")),
            BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on_outlined), title: Text("วงเงินสินเชื่อ")),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), title: Text("แชท")),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_on_outlined), title: Text("แจ้งเตือน")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("ข้อมูลส่วนตัว")),

          ],
          selectedItemColor: color1,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
      ),
    );
  }
}







class BottomNavigator_custom extends StatefulWidget {
  const BottomNavigator_custom({Key? key}) : super(key: key);

  @override
  _BottomNavigator_customState createState() => _BottomNavigator_customState();
}

class _BottomNavigator_customState extends State<BottomNavigator_custom> {
  int _selectedIndex = 0;
  String? _Title;

  @override
  void initState() {
    super.initState();
    checkCase();
  }

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Profile_page(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
    Profile_page(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
      checkCase();
    });
  }

  void checkCase(){
    setState(() {
      switch(_selectedIndex){
        case 0: _Title='หน้าแรก'; break;
        case 1: _Title='วงเงินสินเชื่อ'; break;
        case 2: _Title='แชท'; break;
        case 3: _Title='แจ้งเตือน'; break;
        case 4: _Title='ข้อมูลส่วนตัว'; break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_Title.toString(),style: TextStyle(color: Colors.white,fontSize: 22),),
        centerTitle: true,
        backgroundColor: color1,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.white,), onPressed: () {
          // Navigator.pop(context);
        },),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: color1,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
