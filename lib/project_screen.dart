import 'package:flutter/material.dart';

class ProjectScreen extends StatefulWidget {
  ProjectScreen({super.key});
  @override
  State<StatefulWidget> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Projects'));
  }
}
