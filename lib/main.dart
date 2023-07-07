import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: test(),
    ));

class test extends StatefulWidget {
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  int level = 0;
  String name = 'Avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.brown[100],
        elevation: 0.0,
      ),

floatingActionButton: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
      ),
      const SizedBox(width: 10),
      FloatingActionButton(           
        child: const Icon(Icons.remove),
        onPressed: () {
          setState(() {
            level -= 1;
          });
        },
      ),
        const SizedBox(width: 10),
         FloatingActionButton(
        child: const Icon(Icons.restore),
        onPressed: () {
          setState(() {
            level = 0;
          });
        },
      )
  ]),
        
       body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_640.png'),
                    radius: 40.0,
                  ),
                ),
                const Divider(
                  height: 90.0,
                  color: Color.fromARGB(255, 232, 109, 72),
                ),
                const SizedBox(height: 30),
                const Text(
                  ('Your name'),
                  style: TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.0,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                Text(
                  name,
                  key: const Key('dynamicName'),
                  style: const TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.0,
                      fontFamily: 'Poppin-Story',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'You level',
                  style: TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.0,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  key: const Key('dynamicLevel'),
                  '$level',
                  style: const TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.0,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ])),
    );
  }
}
