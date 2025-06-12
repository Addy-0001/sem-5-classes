import 'package:flutter/material.dart';
import 'package:shared_preferences_task/model/user.dart';
import 'package:shared_preferences_task/shared/shared_pref.dart';

class SharedPrefView extends StatefulWidget {
  const SharedPrefView({super.key});

  @override
  State<SharedPrefView> createState() => _SharedPrefViewState();
}

class _SharedPrefViewState extends State<SharedPrefView> {
  final _gap = const SizedBox(height: 8,);
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: 'Enter Username'
              ),
            ),
            _gap,
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password'
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  SharedPref sharedPref = SharedPref();
                  var user = User(
                    username: _usernameController.text.trim(), 
                    password: _passwordController.text.trim()
                  );

                  sharedPref.addUser(user);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('User Added'),
                    )
                  );
                }, 
              child: const Text('Add')
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async{
                  SharedPref sharedPref = SharedPref();
                  user = await sharedPref.getUser();
                  setState(() { //--> page refresh hunxa bhane setState use hanne--> changes state
                    
                  });
                }, 
              child: const Text('Get Data')
              ),
            ),
            if(user!= null)
              Text('username : ${user!.username}, password : ${user!.password}')
          ],
        ),
      ),
    );
  }
}