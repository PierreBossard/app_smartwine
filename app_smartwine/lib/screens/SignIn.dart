import 'package:flutter/material.dart';
<<<<<<< HEAD
// Create a Form widget.
class SignInForm extends StatefulWidget {
  @override
  SignInFormState createState() {
    return SignInFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class SignInFormState extends State<SignInForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
=======

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => new _SignInFormState();
  
}

class _SignInFormState extends State<SignInForm> {

>>>>>>> 8a5cfdfdf1261e763c94605b6daab70cadabe767
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some name';
              }
              return null;
            },
          ),

          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some password';
              }
              return null;
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
