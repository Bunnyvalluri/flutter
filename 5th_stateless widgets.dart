//(a)Learn about stateful and stateless widgets
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cards Example'),
        ),
        body: const CardList(),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return CardItem(
          title: 'Card $index',
          subtitle: 'Subtitle $index',
        );
      },
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const CardItem({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: CircleAvatar(
          child: Text(title.substring(0, 1)),
        ),
        onTap: () {
          // Handle card tap
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Tapped on $title')),
          );
        },
      ),
    );
  }
}

//(B)1.Stateful Widgets: //Implement state management using set state and provider
import 'package:flutter/material.dart';
void main() { runApp(MyApp());
}
class MyApp extends StatelessWidget { @override
Widget build(BuildContext context) { return MaterialApp(
home: CounterApp(),
);
}
}
class CounterApp extends StatefulWidget { @override
_CounterAppState createState() => _CounterAppState();
}
class _CounterAppState extends State<CounterApp> {int
_counter = 0;
void _incrementCounter() { setState(() {
_counter++;
});
}
@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
title: Text('Counter App'),
),
body: Center( child:
Column(
mainAxisAlignment: MainAxisAlignment.center,children:
<Widget>[ Text( 'Counter:',
style: TextStyle(fontSize: 24),
),
Text( '$_counter',
style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
),
],
),
),
floatingActionButton: FloatingActionButton( onPressed: _incrementCounter,
tooltip: 'Increment', child: Icon(Icons.add),
),
);
}
}

//(B)2.State Management
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Example (setState)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
            ),
            Text(
              '$_counter',
              // headline4 was deprecated and removed.
              // Use displaySmall, headlineMedium, or titleLarge depending on the desired size.
              // displaySmall is a good semantic choice for a prominent number.
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
} 

