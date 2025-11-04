 Design a responsive UI that adapts to different screen sizes 
 
import 'package:flutter/material.dart'; void main() { 
runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) { return MaterialApp( 
title: 'Responsive UI Demo', theme: ThemeData( primarySwatch: Colors.blue, 
), 
home: ResponsiveHomePage(), 
); 
} 
} 
class ResponsiveHomePage extends StatelessWidget { @override 
Widget build(BuildContext context) { return Scaffold( 
appBar: AppBar( 
title: Text('Responsive UI Demo'), 
), 
body: LayoutBuilder( 
builder: (BuildContext context, BoxConstraints constraints) {if (constraints.maxWidth < 600) { 
return _buildNarrowLayout(); 
} else { 
return _buildWideLayout(); 
} 
}, 
), 
); 
} 
 
Widget _buildNarrowLayout() { return Center( 
child: Column( 
mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[ 
FlutterLogo(size: 100), SizedBox(height: 20),Text( 'Narrow Layout', 
style: TextStyle(fontSize: 24), 
), 
SizedBox(height: 20), ElevatedButton( onPressed: () 
{}, child: Text('Button'), 
), 
], 
), 
); 
} 
 
Widget _buildWideLayout() { return Center( 
child: Row( 
mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[ 
FlutterLogo(size: 100), SizedBox(width: 20),Column( 
mainAxisAlignment: MainAxisAlignment.center,children: 
 
11 
 
<Widget>[ Text( 
'Wide Layout', 
style: TextStyle(fontSize: 24), 
), 
SizedBox(height: 20), ElevatedButton( onPressed: () 
{}, child: Text('Button'), 
), 
], 
), 
], 
), 
); 
} 
} 
Output: 
 
Mobile View: 
 
 
 
 
 
Desktop View: 
 
 
12 
 
b) Implement media queries and breakpoints for responsiveness 
import 'package:flutter/material.dart'; void main() { 
runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) { return MaterialApp( 
title: 'Responsive UI with Media Queries', theme: ThemeData( 
primarySwatch: Colors.blue, 
), 
home: ResponsiveHomePage(), 
); 
} 
} 
 
class ResponsiveHomePage extends StatelessWidget { @override 
Widget build(BuildContext context) { return Scaffold( 
appBar: AppBar( 
title: Text('Responsive UI with Media Queries'), 
), 
body: LayoutBuilder( 
builder: (BuildContext context, BoxConstraints constraints) {if (constraints.maxWidth < 600) { 
return _buildMobileLayout(); 
} else if (constraints.maxWidth < 1200) {return 
_buildTabletLayout(); 
} else { 
return _buildDesktopLayout(); 
} 
}, 
), 
); 
} 
 
Widget _buildMobileLayout() { return Center( 
child: Column( 
mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[ 
FlutterLogo(size: 100), SizedBox(height: 20),Text( 'Mobile Layout', 
style: TextStyle(fontSize: 24), 
), 
 
13 
 
SizedBox(height: 20), ElevatedButton( onPressed: () 
{}, child: Text('Button'), 
), 
], 
), 
); 
} 
 
Widget _buildTabletLayout() { return Center( 
child: Row( 
mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[ 
FlutterLogo(size: 100), SizedBox(width: 20),Column( 
mainAxisAlignment: MainAxisAlignment.center,children: 
<Widget>[ Text( 
'Tablet Layout', 
style: TextStyle(fontSize: 24), 
), 
SizedBox(height: 20), ElevatedButton( onPressed: () 
{}, child: Text('Button'), 
), 
], 
), 
], 
), 
); 
} 
 
Widget _buildDesktopLayout() { return Center( 
child: Row( 
mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[ 
FlutterLogo(size: 100), SizedBox(width: 20),Column( 
mainAxisAlignment: MainAxisAlignment.center,children: 
<Widget>[ Text( 
'Desktop Layout', 
style: TextStyle(fontSize: 24), 
), 
SizedBox(height: 20), ElevatedButton( onPressed: () 
{}, 
child: Text('Button'), 
 
14 
 
), 
], 
), 
], 
), 
); 
} 
} 


// create into lib file in main file 
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive UI with Media Queries')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return _buildMobileLayout();
          } else if (constraints.maxWidth < 1200) {
            return _buildTabletLayout();
          } else {
            return _buildDesktopLayout();
          }
        },
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlutterLogo(size: 100),
          SizedBox(height: 20),
          Text('Mobile Layout', style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: Text('Button')),
        ],
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlutterLogo(size: 150),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tablet Layout', style: TextStyle(fontSize: 32)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text('Button', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue.withOpacity(0.1),
            child: Center(child: FlutterLogo(size: 200)),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Desktop Layout',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Text(
                  'This is a responsive layout that adapts to different screen sizes',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  ),
                  child: Text('Get Started', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
