import 'package:flutter/material.dart';
import 'add_new_contact.dart';
import 'package:chapter_1_contact_book/contacts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/add_new_contact': (context) => AddNewContact(),
      },
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Contacts(),
    );
  }
}
