import 'package:flutter/material.dart';

class CreateTodoView extends StatefulWidget {
  const CreateTodoView({ Key? key }) : super(key: key);

  @override
  _CreateTodoViewState createState() => _CreateTodoViewState();
}

class _CreateTodoViewState extends State<CreateTodoView> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _desController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  
  final GlobalKey _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text('Create a Todo'),
          backgroundColor:Colors.white60,
          ),
    
          body: Form (
            key: _formKey,

            child: ListView(
              padding: const EdgeInsetsDirectional.all(15),
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'title',
                  hintText: 'Please Enter the title for your task'),
                  keyboardType: TextInputType.text,
                ),
                
                const SizedBox(height: 15,),

                
                TextFormField(
                  controller: _desController,
                  decoration:const  InputDecoration(labelText: 'Description',
                hintText: 'Please descirbe your Task'),
                keyboardType: TextInputType.multiline,
                ),

                const SizedBox(height: 15,),

                TextFormField(
                  controller: _dateController,
                  decoration: const InputDecoration(labelText: 'Date',
                hintText: 'Please Enter your Date'),
                keyboardType: TextInputType.datetime,
                ),

                const SizedBox(height: 15,),

                TextButton(onPressed: (){},
                child:const  Text('Create', style: TextStyle(fontWeight: FontWeight.bold),),
                style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: Colors.green ), 
                )
              
              ],
            
            ),
          ),
    
      ),
    );
  }
}