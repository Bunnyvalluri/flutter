//(a) Design a form with various input fields
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormPage(),
    );
  }
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  // Mark _name and _email as late, as they will be initialized when the form is saved
  late String _name; 
  late String _email;
  bool _subscribeToNewsletter = false;
  String _selectedCountry = 'USA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                onSaved: (value) {
                  _name = value ?? ''; // Use null-aware operator to provide a default empty string
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (value) {
                  _email = value ?? ''; // Use null-aware operator to provide a default empty string
                },
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _subscribeToNewsletter,
                    onChanged: (value) {
                      setState(() {
                        _subscribeToNewsletter = value ?? false; // Ensure non-nullable boolean
                      });
                    },
                  ),
                  Text('Subscribe to Newsletter'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Text('Country: '),
                  SizedBox(width: 20),
                  DropdownButton<String>(
                    value: _selectedCountry,
                    onChanged: (value) {
                      setState(() {
                        _selectedCountry = value!; // value from DropdownButton is non-null when onChanged is called for a selected item
                      });
                    },
                    items: <String>['USA', 'Canada', 'UK', 'Australia']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) { // It's good practice to validate before saving
                    _formKey.currentState!.save();
                    // Submit the form data
                    print('Name: $_name');
                    print('Email: $_email');
                    print('Subscribe to Newsletter: $_subscribeToNewsletter');
                    print('Country: $_selectedCountry');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//(B) Implement form validation and error handling

// Form Example

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
          title: Text('Form Example'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: FormWidget(),
        ),
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  // Fields that are assigned values in the onSaved callback need to be marked with 'late'
  // because they are non-nullable but not initialized at the point of declaration.
  // Dart's null safety requires non-nullable fields to be initialized, or marked as 'late'
  // if they will definitely be initialized before first use.
  late String _name;
  late String _email;
  late String _password;
  late String _phone;
  late String _address;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value == null || value.isEmpty) { // Added null check for value
                return 'Please enter your name';
              }
              return null;
            },
            onSaved: (value) => _name = value!, // Using ! because validator ensures value is not null
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              // You might want to add more robust email validation here
              return null;
            },
            onSaved: (value) => _email = value!,
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters long';
              }
              return null;
            },
            onSaved: (value) => _password = value!,
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Phone'),
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              // You might want to add phone number format validation
              return null;
            },
            onSaved: (value) => _phone = value!,
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Address'),
            maxLines: 3,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your address';
              }
              return null;
            },
            onSaved: (value) => _address = value!,
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: _submitForm,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    // Ensure currentState is not null before calling methods on it
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Form submitted:');
      print('Name: $_name');
      print('Email: $_email');
      print('Password: $_password'); // In a real app, never print passwords!
      print('Phone: $_phone');
      print('Address: $_address');

      // Optionally, show a confirmation dialog or snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form Submitted Successfully!')),
      );
    }
  }
}