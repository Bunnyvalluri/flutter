 Setup navigation between different screens using navigator 
import 'package:flutter/material.dart'; void main() { 
runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) { return MaterialApp( 
title: 'Navigation Example', theme: ThemeData( primarySwatch: 
Colors.blue, 
), 
home: FirstScreen(), 
); 
} 
} 
 
class FirstScreen extends StatelessWidget { @override 
Widget build(BuildContext context) { return Scaffold( 
appBar: AppBar( 
title: Text('First Screen'), 
), 
body: Center( 
child: ElevatedButton( onPressed: () { 
// Navigate to the second screen Navigator.push( 
context, 
MaterialPageRoute(builder: (context) => SecondScreen()), 
); 
}, 
child: Text('Go to Second Screen'), 
), 
), 
); 
} 
} 
 
class SecondScreen extends StatelessWidget { @override 
Widget build(BuildContext context) { return Scaffold( 
appBar: AppBar( 
title: Text('Second Screen'), 
), 
body: Center( 
child: ElevatedButton( onPressed: () { 
// Navigate back to the first screen Navigator.pop(context); 
}, 
child: Text('Go back to First Screen'), 
), 
), 
); 
} 
 
16 
 
} 
 
Output: 
 
 
 
 
 
 
 
 
 
 
 
 
b) Implement navigation with named routes 
import 'package:flutter/material.dart'; void main() { 
runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { @override 
Widget build(BuildContext context) { return MaterialApp( 
title: 'Named Routes Demo', initialRoute: '/', 
routes: { 
'/': (context) => HomeScreen(), '/second': (context) => SecondScreen(),'/third': (context) 
 
17 
 
=> ThirdScreen(), 
}, 
); 
} 
} 
 
class HomeScreen extends StatelessWidget { @override 
Widget build(BuildContext context) { return Scaffold( 
appBar: AppBar( 
title: Text('Home Screen'), 
), 
body: Center( 
child: ElevatedButton( onPressed: () { 
Navigator.pushNamed(context, '/second'); 
}, 
child: Text('Go to Second Screen'), 
), 
), 
); 
} 
} 
class SecondScreen extends StatelessWidget { @override 
Widget build(BuildContext context) { return Scaffold( 
appBar: AppBar( 
title: Text('Second Screen'), 
), 
body: Center( 
child: ElevatedButton( onPressed: () { 
 
Navigator.pushNamed(context, '/third'); 
}, 
child: Text('Go to Third Screen'), 
), 
), 
); 
} 
} 
class ThirdScreen extends StatelessWidget { @override 
Widget build(BuildContext context) { 
return Scaffold( 
 
appBar: AppBar( 
title: Text('Third Screen'), 
), 
body: Center( 
child: ElevatedButton( onPressed: () { 
Navigator.popUntil(context, ModalRoute.withName('/')); 
}, 
child: Text('Go Back to Home'), 
), 
 
18 
 
), 
); 
} 
} 

// create in side into lib file and main file 
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Examples',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const DemoHome(),
      // named routes used by the named-route example
      routes: {
        '/namedHome': (context) => const NamedHomeScreen(),
        '/namedSecond': (context) => const NamedSecondScreen(),
        '/namedThird': (context) => const NamedThirdScreen(),
      },
    );
  }
}

/// A small home screen that lets you pick which navigation demo to run.
class DemoHome extends StatelessWidget {
  const DemoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Demo chooser')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                // Classic push/pop using MaterialPageRoute
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PushFirstScreen(),
                  ),
                );
              },
              child: const Text('Push/Pop example'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // Start the named-routes flow using a named route
                Navigator.pushNamed(context, '/namedHome');
              },
              child: const Text('Named-routes example'),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------- Push/Pop example screens ----------

class PushFirstScreen extends StatelessWidget {
  const PushFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Push: First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PushSecondScreen()),
            );
          },
          child: const Text('Go to Second (push)'),
        ),
      ),
    );
  }
}

class PushSecondScreen extends StatelessWidget {
  const PushSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Push: Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // returns to the previous route
            Navigator.pop(context);
          },
          child: const Text('Go back (pop)'),
        ),
      ),
    );
  }
}

// ---------- Named routes example screens ----------

class NamedHomeScreen extends StatelessWidget {
  const NamedHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Named: Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/namedSecond');
          },
          child: const Text('Go to Named Second'),
        ),
      ),
    );
  }
}

class NamedSecondScreen extends StatelessWidget {
  const NamedSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Named: Second')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/namedThird');
          },
          child: const Text('Go to Named Third'),
        ),
      ),
    );
  }
}

class NamedThirdScreen extends StatelessWidget {
  const NamedThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Named: Third')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // pop until the named home route (clears intermediate screens)
            Navigator.popUntil(context, ModalRoute.withName('/namedHome'));
          },
          child: const Text('Pop until Named Home'),
        ),
      ),
    );
  }
}
