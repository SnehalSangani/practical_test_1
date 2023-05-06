import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical_test_1/screen/home/modal/corona_model.dart';
import 'package:practical_test_1/screen/home/provider/api_provider.dart';
import 'package:provider/provider.dart';

class task_3 extends StatefulWidget {
  const task_3({Key? key}) : super(key: key);

  @override
  State<task_3> createState() => _task_3State();
}

class _task_3State extends State<task_3> {
  ApiProvider? apiProvidertrue;
  ApiProvider? apiProviderfalse;

  @override
  Widget build(BuildContext context) {
    apiProviderfalse = Provider.of(context, listen: false);
    apiProvidertrue = Provider.of(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text("Corona"),
        ),
        backgroundColor: Colors.grey,
        body: FutureBuilder(
          future: apiProviderfalse!.callApi(),
          builder: (context, snapshot) {
            if(snapshot.hasError)
              {
                return Text("${snapshot.error}");
              }
            else if(snapshot.hasData)
              {
                CoronaModal? c1 = snapshot.data;
                return ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1,color: Colors.black),
                        color: Colors.white,
                      ),
                      child: ListTile(
                        leading: Text("${apiProvidertrue!.dataList!.countriesStat![index].countryName}"),
                        title: Text("${apiProvidertrue!.dataList!.countriesStat![index].cases}"),
                        subtitle: Text("${apiProvidertrue!.dataList!.countriesStat![index].deaths}"),
                      ),
                    ),
                  );
                },itemCount: c1!.countriesStat!.length,);
              }
              return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
