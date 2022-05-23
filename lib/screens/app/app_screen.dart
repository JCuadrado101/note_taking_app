import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.eighteen_mp, color: Colors.black,))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text('Title'),
                subtitle: Text('Card Information'),
                trailing: Text('Active'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Title'),
                subtitle: Text('Card Information'),
                trailing: Text('Closed'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
