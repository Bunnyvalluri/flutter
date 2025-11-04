Design a form with various input fields 

form with various input fields such as text fields, checkboxes, radio buttons, and a dropdown 

menuimport 'package:flutter/material.dart'; 

 

void main() 

{ 

runApp (MyAp p()); 

} 

 

class MyApp extends StatelessWidget { @override 

Widget build(BuildContext context) {return MaterialApp( 

title: 'Form Example', 

theme: ThemeData( primarySwatch: 

Colors.blue, 

), 

home: FormPage(), 

); 

} 

} 

 

class FormPage extends StatefulWidget {@override 

_FormPageState createState() => _FormPageState(); 

} 

 

class _FormPageState extends State<FormPage> {final _formKey = GlobalKey<FormState>(); 

 

St ri ng 

_n a m e; St ri ng 

_e m ail 

; 

 

bool 

_subscribeToNewsletter 

= false;String 

_selectedCountry = 'USA'; @override Widget 

build(BuildContext context) {return Scaffold( appBar: AppBar( 

title: Text('Form Example'), 

), 

body: Padding( padding: EdgeInsets.all(20.0), child: Form( 

key: 

_formKe y,child: 

Column( crossAxisAlignment: 

CrossAxisAlignment.start,children: 

<Widget>[ TextFormField( 

decoration: InputDecoration(labelText: 'Name'),onSaved: (value) { 

lOMoAR cPSD| 37701387 

 

34 

 

_name = value; 

}, 

), 

SizedBox(height: 

20), 

TextFormField( 

decoration: InputDecoration(labelText: 'Email'),onSaved: (value) { 

_email = value; 

}, 

), 

SizedBox(height: 

20),Row( 

children: <Widget>[ Checkbox( 

value: 

_subscribeToNewsletter, onChanged: (value) { setState(() { 

_subscribeToNewsletter = value; 

}); 

}, 

), 

Text('Subscribe to Newsletter'), 

], 

), 

SizedBox(height: 

20),Row( 

children: <Widget>[ Text('Country: '), SizedBox(width: 20), DropdownButton<String>( value: 

_selectedCountry, onChanged: (value) { setState(() { 

_selectedCountry = value; 

}); }, 

 

items: <String>['USA', 'Canada', 'UK', 'Australia'] 

.map<DropdownMenuItem<String>>((String value) { return DropdownMenuItem<String>( 

value: value, child: 

Text(value), 

); 

}).toList(), 

), 

], 

 

), 

SizedBox(height: 

20), 

ElevatedButton( onPressed: () { 

_formKey.currentState.save(); 

// Submit the form data print('Name: 

$_name'); print('Email: 

$_email'); 

print('Subscribe to Newsletter: $_subscribeToNewsletter'); print('Country: $_selectedCountry'); 

}, 

child: Text('Submit'), 

), 

lOMoAR cPSD| 37701387 

 

35 

 

], 

), 

), 

), 

); 

} 

} 

 

 

 

 

Output: 

 

 

 

 

 

b) Implement form validation and error handling 

import 'package:flutter/material 

.dart';void main() { 

runApp(MyApp()); 

} 

 

class MyApp extends StatelessWidget { @override 

Widget build(BuildContext context) {return MaterialApp( home: 

Scaffold( appBar: 

AppBar( 

title: Text('Form Example'), 

), 

 

body: 

SingleChildScrollVie w(padding: 

EdgeInsets.all(16), child: FormWidget(), 

), 

), 

); 

} 

lOMoAR cPSD| 37701387 

 

36 

 

} 

 

class FormWidget extends StatefulWidget {@override 

_FormWidgetState createState() => _FormWidgetState(); 

 

} 

class _FormWidgetState extends State<FormWidgt> { final _formKey = 

GlobalKey<FormState>(); 

String_name; 

String_emai l; String_pass word; String_phon e; String_addr ess; 

 

@override Widget 

build(BuildContext context) {return Form( key: 

_form Key, child: 

Colum n( 

crossAxisAlignment: CrossAxisAlignment.start,children: 

<Widget>[ TextFormField( 

decoration: InputDecoration(labelText: 'Name'),validator: (value) { 

if (value.isEmpty) { 

return 'Please enter your name'; 

} 

return null; 

}, 

onSaved: (value) => _name = value, 

), 

SizedBox(heig ht: 16), 

TextFormField ( 

decoration: InputDecoration(labelText: 'Email'),keyboardType: TextInputType.emailAddress, 

validator: (value) { 

if (value.isEmpty) { 

return 'Please enter your email'; 

} 

// Add more complex email validation logic if neededreturn null; 

}, 

 

 

onSaved: (value) => _email = value, 

), 

SizedBox(heig ht: 16), 

TextFormField ( 

decoration: InputDecoration(labelText: 'Password'),obscureText: true, validator: (value) { 

if (value.isEmpty) { 

 

return 'Please enter a password'; 

} 

// Add more complex password validation logic if neededreturn null; 

}, 

onSaved: (value) => _password = value, 

lOMoAR cPSD| 37701387 

 

37 

 

), 

SizedBox(heig ht: 16), 

TextFormField ( 

decoration: InputDecoration(labelText: 'Phone'),keyboardType: TextInputType.phone, 

validator: (value) { if (value.isEmpty) { 

return 'Please enter your phone number'; 

} 

// Add more complex phone number validation logic if neededreturn null; 

}, 

onSaved: (value) => _phone = value, 

), 

SizedBox(heig ht: 16), 

TextFormField ( 

decoration: InputDecoration(labelText: 

'Address'),maxLines: 3, validator: (value) { 

if (value.isEmpty) { 

return 'Please enter your address'; 

} 

return null; 

}, 

onSaved: (value) => _address = value, 

), 

SizedBox(height: 

16), 

ElevatedButton( onPressed: 

_submitForm, child: 

Text('Submit'), 

), 

], 

), 

); 

} 

 

void _submitForm() { 

if (_formKey.currentState.validate()) { 

_formKey.currentState.save(); 

 

// Perform form submission with the saved form dataprint('Form submitted:'); print('Name: 

$_name'); 

 

print('Email: 

$_email'); print('Password: 

$_password'); print('Phone: 

$_phone'); print('Address: 

$_address'); 

} 

} 

}







//MIAN FILE LO CHEY 
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Example',
      theme: ThemeData(primarySwatch: Colors.blue),
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

  // Form field values
  String? _name;
  String? _email;
  String? _password;
  String? _phone;
  String? _address;
  bool _subscribeToNewsletter = false;
  String _selectedGender = 'Male';
  String _selectedCountry = 'USA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Example')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Name Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  if (value.length < 3) {
                    return 'Name must be at least 3 characters';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value;
                },
              ),
              SizedBox(height: 20),

              // Email Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  // Email validation regex
                  String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value;
                },
              ),
              SizedBox(height: 20),

              // Password Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value;
                },
              ),
              SizedBox(height: 20),

              // Phone Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  // Phone validation (digits only, 10-15 characters)
                  String pattern = r'^[0-9]{10,15}$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(
                    value.replaceAll(RegExp(r'[^0-9]'), ''),
                  )) {
                    return 'Please enter a valid phone number (10-15 digits)';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phone = value;
                },
              ),
              SizedBox(height: 20),

              // Address Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.home),
                  alignLabelWithHint: true,
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
                onSaved: (value) {
                  _address = value;
                },
              ),
              SizedBox(height: 20),

              // Checkbox - Subscribe to Newsletter
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _subscribeToNewsletter,
                    onChanged: (value) {
                      setState(() {
                        _subscribeToNewsletter = value ?? false;
                      });
                    },
                  ),
                  Text('Subscribe to Newsletter'),
                ],
              ),
              SizedBox(height: 20),

              // Radio Buttons - Gender Selection
              Text(
                'Gender:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[
                  Radio<String>(
                    value: 'Male',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value ?? 'Male';
                      });
                    },
                  ),
                  Text('Male'),
                  SizedBox(width: 20),
                  Radio<String>(
                    value: 'Female',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value ?? 'Male';
                      });
                    },
                  ),
                  Text('Female'),
                  SizedBox(width: 20),
                  Radio<String>(
                    value: 'Other',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value ?? 'Male';
                      });
                    },
                  ),
                  Text('Other'),
                ],
              ),
              SizedBox(height: 20),

              // Dropdown - Country Selection
              Row(
                children: <Widget>[
                  Text(
                    'Country: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20),
                  DropdownButton<String>(
                    value: _selectedCountry,
                    onChanged: (value) {
                      setState(() {
                        _selectedCountry = value ?? 'USA';
                      });
                    },
                    items:
                        <String>[
                          'USA',
                          'Canada',
                          'UK',
                          'Australia',
                          'India',
                          'Germany',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text('Submit', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Form submitted successfully!'),
          backgroundColor: Colors.green,
        ),
      );

      // Print form data to console
      print('===== FORM SUBMISSION =====');
      print('Name: $_name');
      print('Email: $_email');
      print('Password: $_password');
      print('Phone: $_phone');
      print('Address: $_address');
      print('Subscribe to Newsletter: $_subscribeToNewsletter');
      print('Gender: $_selectedGender');
      print('Country: $_selectedCountry');
      print('=========================');
    } else {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fix the errors in the form'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
