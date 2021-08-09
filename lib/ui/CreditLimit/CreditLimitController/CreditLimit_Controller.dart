import 'dart:convert';

import 'package:second_project/model/CreditLimit_Model.dart';
import 'package:second_project/API/CreditLimit_API.dart';
import 'package:http/http.dart' as Http;

class test_controller{
  test_controller();

  static Future<dynamic> testDemoAvatar_Controller() async{
    try{
      Http.Response respons = await test_API.testDemoAvatar_API();
      if (respons.statusCode == 200) {
        var res = await json.decode(respons.body);
        var map = ServiceModel.fromJson(res);
        return map;
      }
      else{
        print("statuscode error");
      }
    }
    catch(e){
      print('catch error');
    }
  }

}