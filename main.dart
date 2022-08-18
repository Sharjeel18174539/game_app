import 'package:flutter/material.dart';
import 'Story_Brain.dart';

StoryBrain myStoryBrain= StoryBrain();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}
class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15.0 , vertical: 50.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Center(child: Text(myStoryBrain.getStory(),
                  style: const TextStyle(
                    fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed:() {
                    setState(() {
                      myStoryBrain.nextStory(1);
                    });

                  },

                  color: Colors.red,
                  child: Center(child: Text(myStoryBrain.getChoice1(),
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                  ),

                  ),
                ),
              ),
                 const SizedBox(
                  height: 20.0,
                ),

              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      myStoryBrain.nextStory(2);

                    });
                  },
                  color: Colors.blue,
                  child: Text(myStoryBrain.getChoice2(),
                  style: const TextStyle(
                    fontSize: 25.0,
                  ),
                  ),
                ),

              ),


            ],
          ),
        ),
      ),
    );
  }
}


