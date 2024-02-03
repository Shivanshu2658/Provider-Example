import 'package:flutter/material.dart';
import 'package:flutter_provider_example/user_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController userNameController = new TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text("Setting Page"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Center(
              child: Column( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('UserName: ',
                  ),
                  Text(
                    context.watch<UserProvider>().userName,

                  ),
                  const SizedBox(height: 10,),
                  TextField(controller: userNameController,),
                  const SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    context.read<UserProvider>().changeName(newUserName: userNameController.text);
                    FocusManager.instance.primaryFocus?.unfocus();
                    userNameController.clear();
                  }, child: const Text('Save'))
                ],
              ),
            ),
          ),
        ));
  }
}
