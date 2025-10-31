void main() {
  // Variables and data types
  int myNumber = 10; 
  double myDouble = 3.14;
  String myString = 'Hello World'; 
  bool myBool = true;

  // Printing variables
  print('My number is: $myNumber');
  print('My double is: $myDouble'); 
  print('My string is: $myString'); 
  print('My boolean is: $myBool');

  // Basic arithmetic operations
  int result = myNumber + 5; 
  print('Result of addition: $result');

  // Conditional statements
  if (myBool) { 
    print('myBool is true');
  } else {
    print('myBool is false');
  }

  // Loops
  for (int i = 0; i < 5; i++) { 
    print('Iteration $i');
  }

  // Lists
  List<int> numbers = [1, 2, 3, 4, 5];
  print('First element of the list: ${numbers[0]}'); 
  print('Length of the list: ${numbers.length}');

  // Maps
  Map<String, int> ages = { 
    'Kiran': 30,
    'Raj': 25,
    'Alekya': 35,
  };
  print('Kiran\'s age: ${ages['Kiran']}');
}
//My number is: 10
//My double is: 3.14
//My string is: Hello World
//My boolean is: true
//Result of addition: 15
//myBool is true
//Iteration 0
//Iteration 1
//Iteration 2
//Iteration 3
//Iteration 4
//First element of the list: 1
//Length of the list: 5
//Kiran's age: 30 //