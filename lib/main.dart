import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter app',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  CounterPageState createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  int c = 0;

  void increment(){
    setState(() {
      c++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title :  Text("Counter App")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You have pressed the button many times"),
          Text('$c',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
          SizedBox(height: 20),
          ElevatedButton(onPressed: increment, child: Text("Increment")),
        ]
        )
      )
    );
  }
}