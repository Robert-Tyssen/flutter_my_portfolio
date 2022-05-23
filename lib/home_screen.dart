import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 1400),
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 32,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, I'm Rob.",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      "I'm a software developer in Ottawa, Canada",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 32),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.download_rounded),
                          label: Text('Resume'),
                        ),

                        SizedBox(width: 16),

                        IconButton(
                          icon: Icon(Icons.email_outlined),
                          onPressed: () {},
                          splashRadius: Material.defaultSplashRadius / 2,
                        ),
                        IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {},
                          splashRadius: Material.defaultSplashRadius / 2,
                        ),
                        IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {},
                          splashRadius: Material.defaultSplashRadius / 2,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 32),
                Column(
                  children: [
                    CircleAvatar(
                      child: Text('RT'),
                      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                      foregroundColor:
                          Theme.of(context).colorScheme.onSurfaceVariant,
                      minRadius: 100,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
