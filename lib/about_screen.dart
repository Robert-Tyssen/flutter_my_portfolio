import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1400),
          padding: EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Robert Tyssen',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 16),
                    Text(
                      'About Me',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                      'sed do eiusmod tempor incididunt ut labore et dolore magna '
                      'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                      'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                      'Duis aute irure dolor in reprehenderit in voluptate velit '
                      'esse cillum dolore eu fugiat nulla pariatur. Excepteur sint '
                      'occaecat cupidatat non proident, sunt in culpa qui officia '
                      'deserunt mollit anim id est laborum.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Personal',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                      'sed do eiusmod tempor incididunt ut labore et dolore magna '
                      'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                      'ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(height: 32),
                    _WorkExperience(),
                    SizedBox(height: 32),
                    _Education(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _WorkExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Work Experience',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(height: 16),
        Text(
          'Some Company',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'Some Title, 2019 - Present',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
          'sed do eiusmod tempor incididunt ut labore et dolore magna '
          'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
          'ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(height: 16),
        Text(
          'Some Other Company',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'Some Title, 2015 - Present',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
          'sed do eiusmod tempor incididunt ut labore et dolore magna '
          'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
          'ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}

class _Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(height: 16),
        Text(
          'Computing Technology, BSc',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'University of Ottawa, 2010-2015',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
          'sed do eiusmod tempor incididunt ut labore et dolore magna '
          'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
          'ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(height: 16),
        Text(
          'Chemical Engineering, BASc',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'University of Ottawa, 2010-2015',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
          'sed do eiusmod tempor incididunt ut labore et dolore magna '
          'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
          'ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
