import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/confix/Colors_custom.dart';
import 'package:second_project/ui/test_page.dart';

class Seemor_page extends StatefulWidget {
  const Seemor_page({Key? key}) : super(key: key);

  @override
  _Seemor_pageState createState() => _Seemor_pageState();
}

class _Seemor_pageState extends State<Seemor_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ข้อมูลส่วนตัว".toString(),style: TextStyle(color: Colors.white,fontSize: 22),),
        centerTitle: true,
        backgroundColor: color1,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.white,), onPressed: () {
          Navigator.pop(context);
        },),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          // color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: color3,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Row(
                        children: [
                          Text('เมษายน 2564 ',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                          Icon(Icons.calendar_today_outlined,size: 20,color: Colors.white,)
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_back_ios,size: 20,color: color3,),
                          Icon(Icons.arrow_forward_ios,size: 20,color: color3,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return buildContainerListData();
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainerListData() {
    return Container(
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                )]
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('2565/2564',style: TextStyle(color: color3,fontSize: 14,fontWeight: FontWeight.w500),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            buildText('ผลผลิต: 72 ตัน'),
                            buildText('สัญญาอ้อย: 72 ตัน'),
                            buildText('จำนวนแปลง: 50 แปลง'),
                            buildText('พื้นที่ทั้งหมด: 30 ไร่'),
                            buildText('พื้นที่เข้าร่วมโครงการ BONSUCRO: 30 ไร่'),
                            buildText('พื้นที่เข้าร่วมโครงการ GETS FARMING: 10 ไร่'),
                            buildText('ประมาณการณ์ผลิตอ้อย: 10 ตัน/ไร่'),
                          ],
                        ),
                      ),
                  ),
                  Container(
                    height: 100,
                    child: VerticalDivider(
                      color: Colors.grey[300],
                      thickness: 2,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('ค่า CCS เฉลี่ย 11.13',style: TextStyle(color: Colors.blue[800],fontSize: 16,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
  }

  Text buildText(t) => Text(t,
    style: TextStyle(color: Colors.blue[800],fontSize: 14,fontWeight: FontWeight.w500),
    overflow: TextOverflow.ellipsis,maxLines: 1,
  );
  Container builsdivider(){
    return Container(
      child: Divider(
        color: Colors.grey[100],
        thickness: 1,
      ),
    );
  }
}
