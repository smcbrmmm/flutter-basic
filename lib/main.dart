import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page' , placeTitle: 'Niagara Falls' , placeDescription: 'The Largest Falls', ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title , required this.placeDescription , required this.placeTitle}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final String placeTitle;
  final String placeDescription;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          imageSection(),
          titleSection(),
          buttonSection(),
          descriptionSection(),
          SizedBox(height: 200,)
        ],
      ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget imageSection(){
    return Image.network("https://cdn.getyourguide.com/img/location/60096cdee428e.jpeg/99.jpg");
  }

  Widget titleSection(){
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Niagara Falls', style: TextStyle(fontSize: 18),),
                SizedBox(height: 8,),
                Text('Description' , style: TextStyle(fontSize: 20, color: Colors.grey))
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red,),
          const Text("41")
        ],
      ),
    );
  }

  Widget buttonSection(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buttonItem(Icons.call, "CALL"),
        buttonItem(Icons.near_me, "ROUTE"),
        buttonItem(Icons.share, "SHARE")
      ],
    );
  }

  Widget buttonItem(IconData iconData , String description ){
    return Column(
      children: [
        Icon(iconData , color: Colors.lightBlue,),
        Text(description , style: const TextStyle(color: Colors.lightBlue),)
      ],
    );
  }

  Widget descriptionSection(){
    return Container(
      margin: EdgeInsets.only(top: 32 , left: 32 , right: 32),
      child: Text('Niagara Falls (/naɪˈæɡərə/) is a group of three waterfalls at the southern end of Niagara Gorge, spanning the border between the province of Ontario in Canada and the state of New York in the United States. The largest of the three is Horseshoe Falls, also known as the Canadian Falls, which straddles the international border of the two countries.[1] The smaller American Falls and Bridal Veil Falls lie within the United States. Bridal Veil Falls is separated from Horseshoe Falls by Goat Island and from American Falls by Luna Island, with both islands situated in New York. Niagara Falls (/naɪˈæɡərə/) is a group of three waterfalls at the southern end of Niagara Gorge, spanning the border between the province of Ontario in Canada and the state of New York in the United States. The largest of the three is Horseshoe Falls, also known as the Canadian Falls, which straddles the international border of the two countries.[1] The smaller American Falls and Bridal Veil Falls lie within the United States. Bridal Veil Falls is separated from Horseshoe Falls by Goat Island and from American Falls by Luna Island, with both islands situated in New York.') ,
    );
  }

}
