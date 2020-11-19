import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => new _SignInFormState();
  
}

class _SignInFormState extends State<SignInForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[

          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter email';
              }
              return null;
            },
          );

          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some password';
              }
              return null;
            },
            
          );

          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Scaffold
                    .of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
            child: Text('Submit'),
          );

        ]
     )
    );
  }
}