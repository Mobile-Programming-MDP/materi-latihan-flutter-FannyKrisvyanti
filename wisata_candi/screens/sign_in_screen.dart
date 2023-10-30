import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

// TODO: 1. Deklarasikan Variabel
final TextEditingController _usernameController = TextEditingController();
final TextEditingController _usernameController = TextEditingController();

String _errorText = '';
bool _isSignedIn = false;
bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2. Pasang AppBar
      appBar: AppBar(title: Text('Sign In'),),
      //TODO: 3. Pasang Body
      body: Center(
        child: Form(
          child: Column(
            //TODO: 4. Atur mainAxisAlignment dan crossAxisAlignment
           mainAxisAlignment: MainAxisAlignment.center, 
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //TODO: 5. Pasang TextFormField Nama Pengguna
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: "Nama Pengguna",
                  border: utlineInputBorder(),
                ), //InputDecoration
              ) //TextFormField
              //TODO: 6. Pasang TextFormField Kata Sandi
              SizedBox(height:20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Kata Sandi",
                  errorText: _errorText.isNotEmpty ? _errorText : null,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off: Icons.visibility,),), //Icon, Icon Button
                    )
                  )
                ), //InputDecoration
              ), //TextFormField
              //TODO: 7. Pasang ElevatedButton Sign In

            ],
          ))), //Column, Form
    ); //Scaffold
  }
}