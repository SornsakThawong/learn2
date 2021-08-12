import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/confix/Colors_custom.dart';
import 'package:second_project/model/CreditLimit_Model.dart';
import 'package:second_project/ui/CreditLimit/CreditLimitController/CreditLimit_Controller.dart';
import 'package:second_project/API/CreditLimit_API.dart';

class CreditLimitPage extends StatefulWidget {
  const CreditLimitPage({Key? key}) : super(key: key);

  @override
  _CreditLimitPageState createState() => _CreditLimitPageState();
}

class _CreditLimitPageState extends State<CreditLimitPage> {
  // ServiceModel dataCredit = new ServiceModel();
  var dataCredit;
  bool checkLoaded = true;

  @override
  void initState() {
    super.initState();
    getDataCreditLimit();
  }

  Future<dynamic> getDataCreditLimit() async{
    dataCredit = await test_controller.testDemoAvatar_Controller();
    if (dataCredit == 'statuscode error') {
      print('******************************');
      print(dataCredit);
      print('******************************');
    }
    else{
      await Future.delayed(Duration(seconds: 2));
      setState(() {
        checkLoaded = false;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("วงเงินสินเชื่อ".toString(),style: TextStyle(color: Colors.white,fontSize: 22),),
        centerTitle: true,
        backgroundColor: color1,
        // leading: IconButton(icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.white,), onPressed: () {
        //   // Navigator.pop(context);
        // },),
      ),
      body: SingleChildScrollView(
        child: checkLoaded ? Container(height: MediaQuery.of(context).size.height,child: Center(child: CircularProgressIndicator())) : Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dataCredit.data!.length,
              itemBuilder: (context, index) {
                return buildContainner(dataCredit.data![index]);
              },
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

  Widget buildContainner(item){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            spreadRadius: 1,
            offset: Offset(1,1)
          )
        ]
      ),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(item.avatar.toString()),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                          child: Text('name: ',style: TextStyle(fontSize: 15),overflow: TextOverflow.ellipsis,maxLines: 1,)
                      ),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${item.firstName} ${item.lastName}',style: TextStyle(fontSize: 15),overflow: TextOverflow.ellipsis,maxLines: 1,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text('email: ',style: TextStyle(fontSize: 15),overflow: TextOverflow.ellipsis,maxLines: 1,)
                      ),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.email.toString(),style: TextStyle(fontSize: 15),overflow: TextOverflow.ellipsis,maxLines: 1,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}
