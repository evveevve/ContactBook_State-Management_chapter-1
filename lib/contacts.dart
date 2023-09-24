import 'package:flutter/material.dart';
import 'package:chapter_1_contact_book/modal/contactbook.dart';  // Assuming ContactBook class is in a file named contactbook.dart


class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts!'),
      ),
      body: ValueListenableBuilder(
        valueListenable: ContactBook(),  // Use the ContactBook ValueNotifier
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.length,
            itemBuilder: (builder, index) {
              final String name = value[index].name;
              final String number = value[index].number;
              return Dismissible(
                key: ValueKey(value[index].id),
                onDismissed: (direction) {
                  ContactBook().remove(value[index]);
                },
                child: Card(
                  child: Column(
                    children: [
                      Text(name),
                      Text(number),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () => Navigator.pushNamed(context, '/add_new_contact'),
        child: const Icon(Icons.add),
      ),
    );
  }
}