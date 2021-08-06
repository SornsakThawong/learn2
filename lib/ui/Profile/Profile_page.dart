import 'package:flutter/material.dart';
import 'package:second_project/confix/BottomNavigator_custom.dart';
import 'package:second_project/confix/Colors_custom.dart';
import 'package:second_project/ui/Profile/Seemor_page.dart';
import 'package:second_project/ui/test_page.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  _Profile_pageState createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      appBar: AppBar(
        title: Text("ข้อมูลส่วนตัว".toString(),style: TextStyle(color: Colors.white,fontSize: 22),),
        centerTitle: true,
        backgroundColor: color1,
        // leading: IconButton(icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.white,), onPressed: () {
        //   // Navigator.pop(context);
        // },),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              child: Icon(Icons.account_circle_outlined,color: color1,size: 140,),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('กฤษฎา สังขีด',style: TextStyle(color: color1,fontSize: 20,fontWeight: FontWeight.w700),),
                                  Text('เลขบัตรประชาชน 111 2222 3333 44',style: TextStyle(color: Colors.grey[600],fontSize: 14),overflow: TextOverflow.ellipsis,maxLines: 1,),
                                  Text('เลขที่สัญญา TRR 5678 91',style: TextStyle(color: Colors.grey[600],fontSize: 14),),
                                  Text('เลขที่สอน 11111111',style: TextStyle(color: Colors.grey[600],fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 10,
                                child: Icon(Icons.phone,color: Colors.grey,size: 20,),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                flex: 90,
                                child: Text('089 101 1213',style: TextStyle(color: Colors.grey[600],fontSize: 14),),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 10,
                                child: Icon(Icons.add_location,color: Colors.grey,size: 20,),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                flex: 90,
                                child: Text('25 ถ. สาทรใต้ แขวง ทุ่งมหาเมฆ เขต สาทร กรุงเทพมหานคร 10120',style: TextStyle(color: Colors.grey[600],fontSize: 14),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ปริมาณผลผลิตอ้อย',style: TextStyle(color: color3,fontSize: 20,fontWeight: FontWeight.w700),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Seemor_page()));
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigator_custom2(indexpage: Seemor_page(),numpage: 4,checkstatus: true,texttitle: "ข้อมูลส่วนตัว",)));
                    },
                      child: Text('ดูเพิ่มเติม',style: TextStyle(color: color1,fontSize: 14,fontWeight: FontWeight.w700),)
                  ),
                ],
              ),
            ),
            Container(
              // height: double.infinity,
              width: double.infinity,
              // color: Colors.white,
              child: DefaultTabController(
                  length: 5,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 50,
                        width: double.infinity,
                        child: TabBar(
                          isScrollable: true,
                          labelColor: Colors.grey[700],
                          indicatorColor: Colors.white,
                          unselectedLabelColor: Colors.grey[400],
                          tabs: [
                            Text('ปี 65/66',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                            Text('ปี 64/65',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                            Text('ปี 63/64',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                            Text('ปี 62/63',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                            Text('ปี 61/62',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.4,
                        width: double.infinity,
                        // color: Colors.green,
                        child: TabBarView(
                          children: [
                            ListDetail(),
                            ListDetail(),
                            ListDetail(),
                            ListDetail(),
                            ListDetail(),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget ListDetail(){
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text('10 ตัน/ไร่',style: TextStyle(color: Colors.blue[900],fontSize: 24,fontWeight: FontWeight.w700),textAlign: TextAlign.center),
                            Text('ประมาณการณ์ผลผลิตอ้อย',style: TextStyle(color: Colors.grey,fontSize: 12,),textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text('13 ตัน',style: TextStyle(color: Colors.blue[900],fontSize: 24,fontWeight: FontWeight.w700),textAlign: TextAlign.center),
                            Text('ผลผลิตอ้อย',style: TextStyle(color: Colors.grey,fontSize: 12,),textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            height: 90,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text('72 ตัน',style: TextStyle(color: Colors.blue[900],fontSize: 16,fontWeight: FontWeight.w700),),
                          Text('สัญญาอ้อย',style: TextStyle(color: Colors.grey,fontSize: 10,),)
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text('50 แปลง',style: TextStyle(color: Colors.blue[900],fontSize: 16,fontWeight: FontWeight.w700),),
                          Text('จำนวนแปลง',style: TextStyle(color: Colors.grey,fontSize: 10,),)
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text('30 ไร่',style: TextStyle(color: Colors.blue[900],fontSize: 16,fontWeight: FontWeight.w700),),
                          Text('พื้นที่ทั้งหมด',style: TextStyle(color: Colors.grey,fontSize: 10,),)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            height: 90,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text('15 ไร่',style: TextStyle(color: Colors.blue[900],fontSize: 16,fontWeight: FontWeight.w700),),
                          Text('พื้นที่เข้าร่วมโครงการ GETS FARMING',style: TextStyle(color: Colors.grey,fontSize: 10,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text('10 ไร่',style: TextStyle(color: Colors.blue[900],fontSize: 16,fontWeight: FontWeight.w700),),
                          Text('พื้นที่เข้าร่วมดครงการ BONSUCRO',style: TextStyle(color: Colors.grey,fontSize: 10,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text('10',style: TextStyle(color: Colors.blue[900],fontSize: 16,fontWeight: FontWeight.w700),),
                          Text('ค่าเฉลี่ย',style: TextStyle(color: Colors.grey,fontSize: 10,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
