import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical_test_1/screen/home/modal/home_modal.dart';

class task_2 extends StatefulWidget {
  const task_2({Key? key}) : super(key: key);

  @override
  State<task_2> createState() => _task_2State();
}

class _task_2State extends State<task_2> {
  TextEditingController txthome=TextEditingController();
  TextEditingController txtwork=TextEditingController();
  TextEditingController txth1=TextEditingController();
  List no=[];
  List pr=[];
  List pro=[];
  Model m1=Model();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Today , April 24",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed: () {
            m1.number!.add(Text("${txthome.text}"));
            m1.product!.add(Text("${txtwork.text}"));
            m1.price!.add(Text("${txth1.text}"));


          },icon: Icon(Icons.add,color: Colors.black,),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text("TODO",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: txthome,

                decoration: InputDecoration(focusedBorder: OutlineInputBorder(),label: Text("Enter number"),enabledBorder: OutlineInputBorder(),),

              ),
              SizedBox(height: 13,),
              TextField(
                controller: txtwork,
                decoration: InputDecoration(focusedBorder: OutlineInputBorder(),label: Text("Enter product"),enabledBorder: OutlineInputBorder(),),

              ),
              SizedBox(height: 13,),
              TextField(
                controller: txth1,
                decoration: InputDecoration(focusedBorder: OutlineInputBorder(),
                    label: Text("Enter price"),enabledBorder: OutlineInputBorder(),),

              ),
              SizedBox(height: 30,),
              ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: Text("${m1.number![index]}"),
                  title: Text("${m1.product![index]}"),
                  subtitle: Text("${m1.price![index]}"),
                  trailing: IconButton(onPressed: () {
                    m1.price!.removeAt(index);
                    m1.product!.removeAt(index);
                    m1.number!.removeAt(index);

                  },icon: Icon(Icons.delete),),
                );
              },itemCount: no.length,)

            ],
          ),

        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Model m1=Model(product: pro,number: no,price: pr);
          setState(() {
            m1.number!.add(Text("${txthome.text}"));
            m1.product!.add(Text("${txtwork.text}"));
            m1.price!.add(Text("${txth1.text}"));
          });

        },child: Icon(Icons.add),
      ),


    ),
    );
  }
}
