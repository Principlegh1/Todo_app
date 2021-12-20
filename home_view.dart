import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:todo_app/views/create_todo_view.dart';
import 'package:todo_app/views/tododeatailed_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SafeArea(child: InkWell(
          onTap:(){ showModalBottomSheet(context: context, builder: (context)
          {
            return ListView(
              children:const  [
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
                CompletedTodoTile(),
              ],
            );
          });

          },
          child: Container(
            height: 50,
            margin: const EdgeInsets.all(11),
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(5),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const[
                    Icon(Icons.check_circle_rounded),
                  SizedBox(height: 20, width:10,),
                    Text('Completed'),
                  SizedBox(height: 20,),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                Text('24'),


              ],
            ),
          )
          ),
          ),
      
        floatingActionButton:FloatingActionButton(
          
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return const CreateTodoView();
              })
              );
            
          },
          child: const Icon(Icons.add),
    ),
        
        appBar: AppBar(
            
          leading:const Padding(
            padding: EdgeInsets.all(5.0),
            child:  CircleAvatar(
              foregroundImage: AssetImage("assets/me.JPG"),
            ),
          ),
          title: const Text("My Tasks", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          elevation: 0,
          
          actions: [
            IconButton(onPressed: (){}, icon:const  Icon(Icons.sort)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
    
          ],
        ),
        
        body: ListView(
          children: const  [
            TodoTile(title: 'Plan trip from Ghana',
            subtile: 'If you like fooling tag me'),
            TodoTile(title: 'Plan trip from Tongo',
            subtile: 'If you like fooling tag me'),
            TodoTile(title: 'Plan trip to Nigeria',
            subtile: 'If you like fooling tag Gideon'),
            TodoTile(title: 'Plan trip to Uganda ',
            subtile: 'If you like eating tag Principle'),
            TodoTile(title: 'Plan trip to Tokoyo',
            subtile: 'If you like eating tag -----'),
          ],
        ),
    
      ),
    );
  }
}

class TodoTile extends StatelessWidget {
  const TodoTile({
    Key? key, required this.title, required this.subtile,
  }) : super(key: key);


final String title;
final String subtile;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)
      {
        return DetailedView(title: title, subtitle: subtile,);
      }
      ));
      },
      child: Card(
        elevation:4,
        child:ListTile(
          leading: const  Icon(Icons.check_circle_outlined),
          title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
          subtitle:  Text(
            subtile, maxLines: 3,overflow: TextOverflow.fade,
          ),
          trailing: TextButton.icon(onPressed: (){}, icon:const  Icon(Icons.notifications), label:const Text('yesterday')),
        )
      ),
    );
  }
}

class CompletedTodoTile extends StatelessWidget {
  const CompletedTodoTile({
    Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)
      {
        return const DetailedView(title: 'Trip to Tamale', subtitle: 'This is a completed Trip',);
      }
      ));
      },
      child: Card(
        elevation:4,
        child:ListTile(
          leading: const  Icon(Icons.check_circle_outlined),
          title: const Text('Trip to Tamale', 
          style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle:  const Text('This is a completed Trip',
          maxLines: 3,overflow: TextOverflow.fade,
          ),
          trailing: TextButton.icon(onPressed: (){}, icon:const  Icon(Icons.notifications), label:const Text('yesterday')),
        )
      ),
    );
  }
}
