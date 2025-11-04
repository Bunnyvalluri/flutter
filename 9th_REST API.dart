Fetch data from REST API 
add dependancy in pubspec.yaml: 
dependencies: 
flutter: 
sdk: flutterhttp: 
^0.13.3 
enable internet permissions in your AndroidManifest.xml file for Android apps like below. 
<uses-permission android:name="android.permission.INTERNET" 
 
import 'dart:convert'; import 'package:flutter/material. dart'; import 'package:http/http.dart' as http; 
 
void main() 
{ 
runApp (MyAp p()); 
} 
 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) {return MaterialApp( home: HomePage(), 
); 
} 
} 
 
class HomePage extends StatefulWidget {@override 
 
_HomePageState createState() => _HomePageState(); 
} 
class _HomePageState extends State<HomePage> {List<dynamic> 
_data = []; 
@override void 
initSt ate() { super. initSt ate(); 
_fetchDataFromApi(); 
} 
 
Future<void> _fetchDataFromApi() async { 
final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts')); 
 
if (response.statusCode 
== 200) {setState(() { 
_data = json.decode(response.body); 
}); 
} else { 
throw Exception('Failed to load data'); 
} 
} 
@override Widget 
build(BuildContext context) {return Scaffold( appBar: AppBar( 
lOMoAR cPSD| 37701387 
 
47 
 
title: Text('API Data Example'), 
), 
body: ListView.builder( itemCount: 
_data.length, itemBuilder: (context, index) {return ListTile( 
title: Text(_data[index]['title']), subtitle: Text(_data[index]['body']), 
); 
}, 
), 
); 
} 
Output: 
 
 
b) Display the fetched data in a meaningful way in the UI 
display the fetched data in a meaningful way in the UI, we can use a more structured layout 
rather than justdisplaying the data in a list. We'll create a custom widget to represent each post 
fetched from the API, and display them in a scrollable list. 
import 'dart:convert'; import 'package:flutter/material. dart'; import 'package:http/http.dart' as http; 
void main() 
{ 
runAp p(My App() 
); 
} 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) {return MaterialApp( home: HomePage(), 
); 
lOMoAR cPSD| 37701387 
 
48 
 
} 
} 
class HomePage extends StatefulWidget {@override 
_HomePageState createState() => _HomePageState(); 
} 
class _HomePageState extends State<HomePage> {List<dynamic> 
_data = []; 
bool _isLoading = false; 
 
@override void 
initSt ate() { super. initSt ate(); 
_fetchDataFromApi(); 
} 
 
 
Future<void> 
_fetchDataFromApi() async { setState(() { 
_isLoading = true; 
}); 
final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));if 
(response.statusCode == 200) { 
setState(() { 
_data = json.decode(response.body); 
_isLoading = false; 
}); 
} else { 
throw Exception('Failed to load data'); 
 
} 
} 
 
@override 
Widget build(BuildContext context) {return Scaffold( appBar: AppBar( 
title: Text('API Data Example'), 
), 
body: _isLoading 
? Center( 
child: CircularProgressIndicator(), 
) 
: ListView.builder( itemCount: 
_data.length, itemBuilder: (context, index) {return PostCard( title: _data[index]['title'], body: 
_data[index]['body'], 
); 
}, 
), 
lOMoAR cPSD| 37701387 
 
49 
 
); 
} 
} 
 
class PostCard extends StatelessWidget {final String title; 
final String body; 
 
const PostCard ({ Key key, @require d this.title, 
@required this.body, 
}) : super(key: key); 
 
@override Widget 
build(BuildContext context) {return Card( 
margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),child: Padding( 
 
padding: 
EdgeInsets.all(16), 
child: Column( crossAxisAlignment: 
CrossAxisAlignment.start,children: 
<Widget>[ Text(title, 
style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
), 
SizedBox(heig ht: 8),Text( body, 
style: TextStyle(fontSize: 16), 
), 
], 
 
), 
), 
); 
} 
} 
 
Output: 
 
 
lOMoAR cPSD| 37701387 
 
50 
 
We've added a loading indicator (CircularProgressIndicator) to indicate when data is being 
fetched.The fetched data is displayed as a list of PostCard widgets, each representing a post from 
the API. The PostCard widget displays the title and body of each post in a structured 
manner using a Card layout.
