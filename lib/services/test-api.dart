import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:rent/config.dart';

class TestAPI {
  static var client = http.Client();
  static var data;
  static Future<bool> testhere() async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.http(Config.test, Config.test1);
    print('before');
    var response = await client.get(url, headers: requestHeaders);
    print(response.statusCode);
    if (response.statusCode == 200) {
      data = await jsonDecode(response.body);
      return true;
    }

    return false;
  }
}
