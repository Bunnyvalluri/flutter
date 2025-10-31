a) Learn about stateful and stateless widgets 
In Flutter, widgets can be categorized into two main types based on their behavior regarding 
statemanagement: stateful widgets and stateless widgets. 
 
Stateless Widgets: 
Definition: Stateless widgets are widgets that do not have any mutable state. Once created, their 
properties (configuration) cannot change. 
 
Characteristics: 
They are immutable and lightweight. 
They only depend on their configuration and the build context provided during construction.Their 
appearance (UI) is purely a function of their configuration. 
They are ideal for UI elements that do not change over time, such as static text labels, icons, or simple 
buttons. 
import 'package:flutter/material.dart'; 
 
void main() { runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) { return MaterialApp( 
home: Scaffold( appBar: 
AppBar( 
title: Text('Cards Example'), 
), 
body: CardList(), 
), 
); 
 
} 
} 
 
 
 
class CardList extends StatelessWidget { @override 
Widget build(BuildContext context) { return ListView.builder( 
itemCount: 10, 
itemBuilder: (context, index) {return CardItem( 
title: 'Card $index', subtitle: 'Subtitle $index', 
); 
}, 
); 
} 
} 
 
class CardItem extends StatelessWidget { final String title; 
final String subtitle; 
 
const CardItem({ Key key, @required this.title, @required this.subtitle, 
 
20 
 
}) : super(key: key); 
@override 
Widget build(BuildContext context) { return Card( 
margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),child: 
ListTile( 
title: Text(title), subtitle: 
Text(subtitle),leading: 
CircleAvatar( 
child: Text('${title.substring(0, 1)}'), 
), 
onTap: () { 
// Handle card tap 
}, 
), 
); 
} 
 
Output: 
 
 
 
b) Implement state management using set state and provider 
Stateful Widgets: 
Definition: Stateful widgets are widgets that maintain state, allowing them to change and update over 
time in response to user actions, network events, or other factors. 
 
Characteristics: 
They have an associated mutable state that can change during the widget's lifetime. 
The state is stored in a separate class that extends State and is associated with the stateful widget.Changes 
to the state trigger a rebuild of the widget's UI, allowing dynamic updates. 
They are ideal for UI elements that need to change or react to user interactions, such as input forms, 
 
21 
 
animations, or scrollable lists. 
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
Output: 
 
 
22 
 
 
 
 
 
Stateful widgets are composed of two classes: the stateful widget itself (which extends StatefulWidget) 
and its corresponding state class (which extends State). The state class is responsible for maintaining the 
widget's mutable state and updating the UI accordingly via the setState() method. 
stateless widgets are static and immutable, while stateful widgets are dynamic and can change over time 
by managing their internal state. Understanding the difference between these two types of widgets is 
essential for designing and building efficient and responsive Flutter UIs. 
State Management using setState(): 
import 'package:flutter/material.dart'; 
 
void main() { runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) { return MaterialApp( 
home: CounterPage(), 
); 
} 
} 
 
class CounterPage extends StatefulWidget { @override 
_CounterPageState createState() => _CounterPageState(); 
} 
class _CounterPageState extends State<CounterPage> { int _counter = 0; 
 
void _incrementCounter() { setState(() { 
_counter++; 
}); 
} 
 
@override 
Widget build(BuildContext context) { return Scaffold( 
appBar: AppBar( 
title: Text('Counter Example (setState)'), 
), 
body: Center( child: 
 
23 
 
Column( 
mainAxisAlignment: MainAxisAlignment.center,children: 
<Widget>[ Text( 
'Counter Value:', 
), 
Text( '$_counter', 
style: Theme.of(context).textTheme.headline4, 
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
 
Output: 
 
lOMoAR cPSD| 37701387 
 
24 
 
State Management using provider package: 
import 'package:flutter/material.dart'; import 'package:provider/provider.dart'; 
 
import 'provider/movie_provider.dart'; import 'screens/home_screen.dart'; void 
main() { runApp(ChangeNotifierProvider<MovieProvider>(child: 
const MyApp(), 
create: (_) => MovieProvider(), // Create a new ChangeNotifier object 
)); 
} 
 
class MyApp extends StatelessWidget { const MyApp({Key? key}) : super(key: key); 
 
@override 
Widget build(BuildContext context) { 
return MaterialApp( 
// Remove the debug banner debugShowCheckedModeBanner: false,title: 
'State Management using provider',theme: 
ThemeData( 
primarySwatch: Colors.indigo, 
), 
 
home: const HomeScreen(), 
); 
} 
} 
 
 
 
 
create a model folder for models and create file movie.dart class Movie { 
final String title; 
final String? runtime; // how long this movie is (in minute) 
Movie({required this.title, this.runtime}); 
} 
 
Create a provider folder and create movie_provider.dart inside the provider folder 
// provider/movie_provider.dart import 'package:flutter/material.dart';import 'dart:math'; 
import '../models/movie.dart'; 
 
// A list of movies 
final List<Movie> initialData = List.generate( 50, 
(index) => Movie( title: "Moview $index", 
runtime: "${Random().nextInt(100) + 60} minutes")); 
 
class MovieProvider with ChangeNotifier { 
// All movies (that will be displayed on the Home screen) final List<Movie> _movies = 
lOMoAR cPSD| 37701387 
 
25 
 
initialData; 
 
// Retrieve all movies 
List<Movie> get movies => _movies; 
 
// Favorite movies (that will be shown on the MyList screen) final List<Movie> _myList = []; 
 
// Retrieve favorite movies List<Movie> get myList => _myList; 
 
// Adding a movie to the favorites list void addToList(Movie  
 
movie) { 
_myList.add(movie); notifyListeners(); 
} 
// Removing a movie from the favorites list void removeFromList(Movie movie) { 
_myList.remove(movie); notifyListeners(); 
} 
} 
 
Create a screens folder for screens 
Create home_screen.dart for home screen page 
// screens/home_screen.dart 
import 'package:flutter/material.dart'; import 'package:provider/provider.dart'; 
 
import '../provider/movie_provider.dart'; import 'my_list_screen.dart'; 
 
class HomeScreen extends StatefulWidget { 
const HomeScreen({Key? key}) : super(key: key); 
 
@override 
State<HomeScreen> createState() => _HomeScreenState(); 
} 
 
class _HomeScreenState extends State<HomeScreen> { @override 
Widget build(BuildContext context) { 
 
 
var movies = context.watch<MovieProvider>().movies;var myList = 
context.watch<MovieProvider>().myList; 
return Scaffold( appBar: AppBar( 
title: const Text('State Management using provider'), 
), 
body: Padding( 
padding: const EdgeInsets.all(15),child: 
Column( 
crossAxisAlignment: CrossAxisAlignment.stretch,children: [ 
ElevatedButton.icon( onPressed: () { Navigator.of(context).push( MaterialPageRoute( 
lOMoAR cPSD| 37701387 
 
26 
 
builder: (context) => const MyListScreen(), 
), 
); 
}, 
icon: const Icon(Icons.favorite),label: 
Text( 
"Go to my list (${myList.length})",style: const TextStyle(fontSize: 24), 
), 
style: ElevatedButton.styleFrom(primary: Colors.red, 
 
padding: const EdgeInsets.symmetric(vertical: 20)), 
), 
const SizedBox(height: 
15, 
), 
Expanded( 
child: ListView.builder( itemCount: movies.length,itemBuilder: (_, index) { 
 
final currentMovie = movies[index];return Card( key: ValueKey(currentMovie.title), color: 
Colors.amberAccent.shade100,elevation: 4, child: ListTile( 
title: Text(currentMovie.title),subtitle: Text(currentMovie.runtime ?? 'No information'),trailing: 
IconButton( 
icon: Icon( Icons.favorite, 
color: myList.contains(currentMovie) 
? Colors.red 
: Colors.white, 
 
size: 30, 
), 
onPressed: () { 
if (!myList.contains(currentMovie)) {context 
.read<MovieProvider>() 
.addToList(currentMovie); 
} else { context 
.read<MovieProvider>() 
.removeFromList(currentMovie); 
} 
}, 
), 
), 
); 
}), 
), 
], 
), 
), 
); 
} 
} 
lOMoAR cPSD| 37701387 
 
27 
 
 
create my_list_screen.dart inside the screens folder 
// screens/my_list_screen.dart 
import 'package:flutter/material.dart'; import 'package:provider/provider.dart'; 
import '../provider/movie_provider.dart'; class MyListScreen extends StatefulWidget { 
const MyListScreen({Key? key}) : super(key: key); 
 
@override 
State<MyListScreen> createState() => _MyListScreenState(); 
} 
class _MyListScreenState extends State<MyListScreen> { @override 
Widget build(BuildContext context) { 
final myList = context.watch<MovieProvider>().myList; return Scaffold( 
appBar: AppBar( 
title: Text("My List (${myList.length})"), 
), 
body: ListView.builder( itemCount: myList.length, itemBuilder: (_, index) { 
final currentMovie = myList[index]; 
 
return Card( 
key: ValueKey(currentMovie.title),elevation: 
4, 
 
child: ListTile( 
title: Text(currentMovie.title), 
subtitle: Text(currentMovie.runtime ?? ''),trailing: 
TextButton( 
child: const Text('Remove', 
style: TextStyle(color: Colors.red), 
), 
onPressed: () { context.read<MovieProvider>().removeFromList(currentMovie); 
}, 
), 
), 
); 
}), 
); 
} 
} run all codes
State Management using setState(): 
import 'package:flutter/material.dart'; 
 
void main() { runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) { return MaterialApp( 
home: CounterPage(), 
); 
} 
} 
 
class CounterPage extends StatefulWidget { @override 
_CounterPageState createState() => _CounterPageState(); 
} 
class _CounterPageState extends State<CounterPage> { int _counter = 0; 
 
void _incrementCounter() { setState(() { 
_counter++; 
}); 
} 
 
@override 
Widget build(BuildContext context) { return Scaffold( 
appBar: AppBar( 
title: Text('Counter Example (setState)'), 
), 
body: Center( child: 
 
23 
 
Column( 
mainAxisAlignment: MainAxisAlignment.center,children: 
<Widget>[ Text( 
'Counter Value:', 
), 
Text( '$_counter', 
style: Theme.of(context).textTheme.headline4, 
), 
], 
), 
), 
floatingActionButton: FloatingActionButton( onPressed: _incrementCounter, 
tooltip: 'Increment', child: Icon(Icons.add), 
), 
); 
} 
} add this code and run output
