import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.green,
        onPressed: () async {},
        child: const Icon(
          Icons.person_add_alt_1,
        ));
  }
}
