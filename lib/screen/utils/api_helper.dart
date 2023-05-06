import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practical_test_1/screen/home/modal/corona_model.dart';
class Apihelper
{
  Future<CoronaModal> apicall()
  async {
    String link="https://corona-virus-world-and-india-data.p.rapidapi.com/api";
    Uri uri=Uri.parse(link);
    var respone =await http.get(
      uri,
      headers: {
        "content-type":"application/octet-stream",
        "X-RapidAPI-Key":"b7a617da36msh8b9fc8e9d3922d3p14081bjsn7af9d29b2e02",
        "X-RapidAPI-Host":"corona-virus-world-and-india-data.p.rapidapi.com"
      }
    );
    var json=jsonDecode(respone.body);
    CoronaModal c1 = CoronaModal.fromJson(json);
    return c1;
  }
}