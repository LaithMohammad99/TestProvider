
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ProviderCounter>(
    create: (BuildContext context) =>ProviderCounter(),


    child: const MaterialApp(
      home: Counter(),
    ),
  ));
}

class Counter extends StatelessWidget {

  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var count=Provider.of<ProviderCounter>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(child:const Icon(Icons.add) ,onPressed:()=>count.counter() ,),
      body: Center(
        child: Column
          (mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            SizedBox(height: 10,),
            Text('${count.c}',style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text('Text3',style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text('Text4',style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text('Text4',style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text('Text4',style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text('final',style: TextStyle(fontSize: 50),),



          ],

        ),
      ),
    );
  }
}
