) Explore various flutter widgets 
Flutter provides a rich set of widgets to build user interfaces for mobile,web,and desktop 
applications.These widgets help in creating visually appealing and interactive UIs. Here are some  
of the commonly used Flutter widgets categorized by their functionalities: 
 
Layout Widgets: 
Container: A versatile widget that can contain other widgets and provides options for alignment, 
padding,margin, and decoration. 
Row and Column: Widgets that arrange their children in a horizontal or vertical line respectively. 
Stack: Allows widgets to be stacked on top of each other, enabling complex layouts. 
 
ListView and GridView: Widgets for displaying a scrollable list or grid of children, with support for 
various layouts and scrolling directions. 
 
Scaffold: Implements the basic material design layout structure, providing app bars, drawers, and 
floatingaction buttons. 
 
Text and Styling Widgets: 
Text: Displays a string of text with options for styling such as font size, color, and alignment. 
 
RichText: Allows for more complex text styling and formatting, including different styles within the 
same text span. 
 
TextStyle: A class for defining text styles that can be applied to Text widgets. 
 
Input Widgets: 
TextField: A widget for accepting user input as text, with options for customization and validation. 
 
Checkbox and Radio: Widgets for selecting from a list of options, either through checkboxes or radio 
buttons. 
 
DropdownButton: Provides a dropdown menu for selecting from a list of options. 
 
Button Widgets: 
ElevatedButton and TextButton: Widgets for displaying buttons with different styles and 
customizationoptions. 
IconButton: A button widget that displays an icon and responds to user taps. 
GestureDetector: A versatile widget that detects gestures such as taps, swipes, and drags, allowing for 
custom interactions. 
 
Image and Icon Widgets: 
Image: Widget for displaying images from various sources, including assets, network URLs, and 
memory. 
 
6 
 
Icon: Displays a Material Design icon. 
Navigation Widgets: 
Navigator: Manages a stack of route objects and transitions between different screens or pages in the  
app. 
 
PageRouteBuilder: A customizable widget for building page transitions and animations. 
 
Animation Widgets: 
AnimatedContainer: An animated version of the Container widget, with support for transitioning 
properties over a specified duration. 
AnimatedOpacity, AnimatedPositioned, AnimatedBuilder: Widgets for animating opacity, 
position,and custom properties respectively. 
 
Material Design Widgets: 
AppBar: A material design app bar that typically contains a title, leading and trailing widgets, and 
actions. 
 
BottomNavigationBar: Provides a navigation bar at the bottom of the screen for switching betwee 
different screens or tabs. 
 
Card: Displays content organized in a card-like structure with optional elevation and padding. 
 
Cupertino (iOS-style) Widgets: 
CupertinoNavigationBar: A navigation bar in the iOS style. CupertinoButton: A button widget with the 
iOS style. 
CupertinoTextField: A text field widget with the iOS style. 
These are just a few examples of the many widgets available in Flutter. Each widget comes with its  
set of properties and customization options, allowing developers to create highly customizable and 
responsive user interfaces. 
 
b) User implement different layout structures using Row,Column,and Stack widgets 
 
1. Row Layout: void main() { runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) { return MaterialApp( 
home: Scaffold( appBar: 
AppBar( 
title: Text('Row Layout'), 
), 
body: Row( 
mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: 
<Widget>[ Container( 
color: Colors.red, 
 
 
7 
 
width: 100, 
height: 100, 
), 
Container( 
color: Colors.green, 
 
width: 100, 
height: 100, 
), 
 
Container( 
color: Colors.blue,width: 100, 
height: 100, 
), 
], 
), 
), 
); 
} 
} 
 
Output: 
 
 
2. Column Layout: 
import 'package:flutter/material.dart'; void main() { 
runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) { return MaterialApp( 
home: Scaffold( appBar: 
AppBar( 
title: Text('Column Layout'), 
), 
body: Column( 
mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: 
<Widget>[ Container( 
 
color: Colors.red,width: 100, 
height: 100, 
), 
 
8 
 
Container( 
color: Colors.green,width: 100, 
height: 100, 
), 
Container( 
color: Colors.blue,width: 100, 
height: 100, 
), 
], 
), 
), 
); 
} 
} 
 
Output: 
 
 
3. Stack Layout: 
import 'package:flutter/material.dart'; void main() { 
runApp(MyApp()); 
} 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) { return MaterialApp( 
home: Scaffold( appBar: 
AppBar( 
title: Text('Stack Layout'), 
 
), 
body: Stack( 
alignment: Alignment.center,children: 
<Widget>[ 
 
Container( 
color: Colors.red,width: 200, 
height: 200, 
 
9 
 
), 
 
Container( 
color: Colors.green,width: 150, 
height: 150, 
), 
Container( 
color: Colors.blue,width: 100, 
height: 100, 
), 
 
], 
), 
), 
); 
} 
}


lets create into lib inside the main.file : 
import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutDemosApp());
}

class LayoutDemosApp extends StatelessWidget {
  const LayoutDemosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demos',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Widgets: Row · Column · Stack')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Choose a demo to explore common layout widgets in Flutter.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 12),
          DemoTile(
            title: 'Row Layout',
            subtitle: 'Horizontal arrangement of children',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RowDemo()),
            ),
          ),
          DemoTile(
            title: 'Column Layout',
            subtitle: 'Vertical arrangement of children',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ColumnDemo()),
            ),
          ),
          DemoTile(
            title: 'Stack Layout',
            subtitle: 'Overlay widgets on top of each other',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const StackDemo()),
            ),
          ),
        ],
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const DemoTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row Layout')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ColoredBoxWidget(color: Colors.red, label: 'Red'),
            ColoredBoxWidget(color: Colors.green, label: 'Green'),
            ColoredBoxWidget(color: Colors.blue, label: 'Blue'),
          ],
        ),
      ),
    );
  }
}

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column Layout')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ColoredBoxWidget(color: Colors.red, label: 'Red'),
            ColoredBoxWidget(color: Colors.green, label: 'Green'),
            ColoredBoxWidget(color: Colors.blue, label: 'Blue'),
          ],
        ),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Layout')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: const [
            SizedBox(
              width: 240,
              height: 240,
              child: ColoredBox(color: Colors.red),
            ),
            SizedBox(
              width: 180,
              height: 180,
              child: ColoredBox(color: Colors.green),
            ),
            SizedBox(
              width: 120,
              height: 120,
              child: ColoredBox(color: Colors.blue),
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Text(
                'Stacked',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColoredBoxWidget extends StatelessWidget {
  final Color color;
  final String label;
  const ColoredBoxWidget({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      alignment: Alignment.center,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


