import 'package:uuid/uuid.dart';

class Contact {
  Contact({required this.name, required this.number}) : id = const Uuid().v4();
  final String id;
  final String name;
  final String number;
}
