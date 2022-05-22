import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(Object context) {
    return Center(
      child: Text('Contact'),
    );
  }
}
