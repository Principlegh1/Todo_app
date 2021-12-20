import 'package:flutter/material.dart';

class DetailedView extends StatelessWidget {
  const DetailedView({ Key? key, required this.title, required this.subtitle })
  : super(key: key,);
  
  final String title;
  final String subtitle; 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Your Task",
      style: TextStyle(color: Colors.black), ),
      ),
      body: ListView(
        children: [
          Text(
            title,style:TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text(subtitle)
        ],
      ),
      )
      
    );
  }
}