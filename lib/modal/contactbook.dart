import 'package:flutter/material.dart';

import 'contact.dart';

class ContactBook extends ValueNotifier<List<Contact>> {
  ContactBook._initialize(List<Contact> initialContacts)
      : super(initialContacts);

  static final _shared = ContactBook._initialize([
    Contact(name: 'Alice', number: '123456'),
    Contact(name: 'Bob', number: '789012'),
  ]);

  factory ContactBook() => _shared;

  void add(Contact contact) {
    final List<Contact> contacts = [...value];
    contacts.add(contact);
    value = contacts; // Update the value (contact list)
    notifyListeners(); // Notify listeners
  }

  void remove(Contact contact) {
    final List<Contact> contacts = [...value];
    contacts.remove(contact);
    value = contacts; // Update the value (contact list)
    notifyListeners(); // Notify listeners
  }
}
