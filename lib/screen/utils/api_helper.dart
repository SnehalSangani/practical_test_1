import 'dart:convert';

import 'package:http/http.dart' as http;
class Apihelper

{
  Future<void> apicall()
  async {
    String link="https://corona-virus-world-and-india-data.p.rapidapi.com/api";
    Uri uri=Uri.parse(link);
    var respone =await http.get(uri);
    var json=jsonDecode(respone.body);
  }
}