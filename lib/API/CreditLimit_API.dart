import 'dart:convert';

import 'package:http/http.dart' as Http;
import 'package:second_project/model/CreditLimit_Model.dart';

class test_API{
  test_API();
  var headers = {
    "Content-Type":"application/json",
    "Connection":"keep-alive"
  };
  
  static Future<dynamic> testDemoAvatar_API() async{
    try{
      String url = 'https://reqres.in/api/users?page=2';
      var respons = await Http.get(Uri.parse(url));
      return respons;
    }
    catch(e){
      print('catch error');
    }
  }
  
}
