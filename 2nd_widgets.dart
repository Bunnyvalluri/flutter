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


