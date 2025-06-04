import 'package:flutter/material.dart';
import 'package:sharedpreferences/model/user.dart';
import 'package:sharedpreferences/shared_pref/shared_pref.dart';

class SharedPreferencesView extends StatefulWidget {
  const SharedPreferencesView({super.key});

  @override
  State<SharedPreferencesView> createState() => _SharedPreferencesViewState();
}

class _SharedPreferencesViewState extends State<SharedPreferencesView> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shared Preference")),
      body: Column(
        children: [
          TextFormField(
            controller: _userNameController,
            decoration: const InputDecoration(labelText: "Username"),
          ),
          TextFormField(
            obscureText: true,
            controller: _passwordController,
            decoration: InputDecoration(labelText: "Password"),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                SharedPref sharedPref = SharedPref();
                var user = User(
                  username: _userNameController.text.trim(),
                  password: _passwordController.text.trim(),
                );
                // Add to shared preferences
                sharedPref.addUser(user);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("User Added Successfully")),
                );
              },
              child: Text("Add"),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                SharedPref sharedPref = SharedPref();
                user = await sharedPref.getUser();
                setState(() {});
              },
              child: Text("Get Data"),
            ),
          ),
          if (user != null)
            Text("Username: ${user!.username}, Password: ${user!.password}"),
        ],
      ),
    );
  }
}
