import 'package:flutter/material.dart';
import 'package:chapter_1_contact_book/modal/contact.dart';
import 'package:chapter_1_contact_book/modal/contactbook.dart';

class AddNewContact extends StatefulWidget {
  const AddNewContact({Key? key}) : super(key: key);

  @override
  _AddNewContactState createState() => _AddNewContactState();
}

class _AddNewContactState extends State<AddNewContact> {
  String name = '';
  String number = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name.isEmpty ? 'Add Contact' : name),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                onChanged: (value) => setState(() {
                  name = value;
                }),
                decoration: const InputDecoration(
                  label: Text('Name'),
                  hintText: 'Name',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                onChanged: (value) => setState(() {
                  number = value;
                }),
                decoration: const InputDecoration(
                  label: Text('Number'),
                  hintText: 'Number',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                final newContact = Contact(name: name, number: number);
                ContactBook().add(newContact);
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
