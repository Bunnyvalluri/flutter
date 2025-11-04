Create custom widgets for specific UI elements 

import 

'package:flutter/material.d art';void main() { 

runApp(MyApp()); 

} 

 

class MyApp extends StatelessWidget { @override 

Widget build(BuildContext context) {return MaterialApp( home: 

Scaffold( appBar: 

 

AppBar( 

title: Text('Custom Widget Example'), 

), 

body: Column( mainAxisAlignment: 

MainAxisAlignment.center,children: 

<Widget>[ Padding( padding: const 

EdgeInsets.all(8.0),child: CustomTextField( hintText: 'Enter your name', onChanged: (value) { 

print('Name changed: 

$value'); 

}, 

), 

), 

SizedBox(height 

: 20),Padding( padding: const 

EdgeInsets.all(8.0),child: CustomTextField( hintText: 'Enter Email', onChanged: (value) { 

print('Name changed: 

$value'); 

}, 

), 

), 

SizedBox(height 

: 20),Padding( padding: const 

EdgeInsets.all(8.0),child: CustomTextField( hintText: 'Enter Roll Number', onChanged: (value) { 

print('Name changed: $value'); 

}, 

), 

), 

SizedBox(height 

: 20), 

CustomButton( text: 'Press Me', onPressed: () { 

 

print('Button pressed!'); 

}, 

), 

], 

lOMoAR cPSD| 37701387 

), 

), 

); 

} 

} 

class CustomButton extends StatelessWidget {final String? text; 

final VoidCallback? onPressed; 

const CustomBu tton({ Key? key, @required this.text, 

@required this.onPressed, 

}) : super(key: key); @override 

Widget build(BuildContext context) { 

return ElevatedButton( onPressed: 

onPressed, child: 

Text(text!), 

); 

} 

} 

class CustomTextField extends StatelessWidget {final String hintText; 

final ValueChanged<String> onChanged; 

const CustomTextF ield({Key? key, 

required this.hintText, required this.onChange d, 

}) : super(key: key); 

@override Widget 

build(BuildContext context) {return TextField( onChanged: onChanged, decoration: 

InputDecoration( hintText: hintText, 

border: OutlineInputBorder(), 

), 

); 

} 

} 

Output: 

30 

lOMoAR cPSD| 37701387 

 

31 

 

b) Apply styling using themes and custom styles 

In Flutter, you can apply styling to your widgets using themes and custom styles to maintain 

consistency and make your UI morevisually appealing. 

Import 'package:flutter/material.dart'; void 

main() 

{ 

runApp (MyAp p()); 

} 

 

class MyApp extends @override StatelessWidget { 

{ 

Widget build(BuildContext context) return 

MaterialA pp( theme: 

ThemeDat a( 

// Define the overall theme of the appprimaryColor: 

Colors.blue, accentColor: Colors.orange, fontFamily: 

'Roboto', 

textTheme: TextTheme( 

headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),bodyText1: 

TextStyle(fontSize: 16), 

), 

elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom( primary: 

Colors.blue, 

textStyle: TextStyle(fontSize: 18), 

padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),shape: RoundedRectangleBorder( 

borderRadius: BorderRadius.circular(10), 

), 

 

), 

), 

), 

home: HomePage(), 

); 

} 

} 

 

class HomePage extends StatelessWidget {@override 

Widget build(BuildContext context) { 

 

return Scaffol d( appBar: 

AppBar ( 

title: Text('Styling Example'), 

), 

body: Center ( child: Colum n( 

mainAxisAlignment: MainAxisAlignment.center,children: 

<Widget>[ Text( 

'Welcome to MyApp', 

lOMoAR cPSD| 37701387 

 

32 

 

style: Theme.of(context).textTheme.headline1, 

), 

SizedBox(height 

: 20), 

ElevatedButton( onPressed: () {}, 

child: Text('Get Started'), 

), 

], 

), 

), 

); 

} 

} 

 

Output: 

 

 

In this example: 

We define a custom theme using ThemeData and apply it to the entire app using the theme 

property ofMaterialApp. 

 

The theme specifies primary and accent colors, a custom font family, and text styles for different 

textelements (headline6 and bodyText2). 

 

We customize the appearance of the elevated buttons using ElevatedButtonThemeData 

andElevatedButton.styleFrom. 

 

In the HomePage widget, we use Theme.of(context) to access the custom theme properties and 

applythem to various widgets such as Text and ElevatedButton. 

We also demonstrate custom styling for a Container widget with a custom background 

color and borderradius. 

Using themes and custom styles like this helps maintain a consistent visual identity throughout 

your app and makes it easier to manage and update styling across multiple widgets.











//(a) Create custom widgets for specific UI elements
// Custom Widget Example

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Widget Example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextField(
                hintText: 'Enter your name',
                onChanged: (value) {
                  print('Name changed: $value');
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextField(
                hintText: 'Enter Email',
                onChanged: (value) {
                  print('Email changed: $value');
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextField(
                hintText: 'Enter Roll Number',
                onChanged: (value) {
                  print('Roll Number changed: $value');
                },
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Press Me',
              onPressed: () {
                print('Button pressed!');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text!),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;

  const CustomTextField({Key? key, required this.hintText, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}


//(B) Apply styling using themes and custom styles
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Styling Example',
      theme: ThemeData(
        // Define the overall theme of the app
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          secondary: Colors.orange,
        ),
        fontFamily: 'Roboto',

        // Define text styles
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16),
        ),

        // Define button styles
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 18),
            padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styling Example'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Styled text using theme
            Text(
              'Welcome to MyApp',
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            const SizedBox(height: 20),

            // Styled button using theme
            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            ),

            const SizedBox(height: 30),

            // Custom styled container
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                ),
              ),
              child: Text(
                'This is a custom styled container',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

