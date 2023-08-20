import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class Themes {
  static final light =
      ThemeData(useMaterial3: true, brightness: Brightness.light);
  static final dark =
      ThemeData(useMaterial3: true, brightness: Brightness.dark);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Контакты никостера',
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Контакты никостера',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    elevation: 0,
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16, left: 20, top: 16, right: 16),
                              child: Icon(
                                Icons.mail_outline,
                              ),
                            ),
                            Text(
                              'Контакты',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.5,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 16.0, bottom: 16.0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  launchUrl(Uri.parse('https://t.me/n1koster'));
                                },
                                child: Text('Телеграм'),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  launchUrl(
                                      Uri.parse('https://vk.com/nikoster'));
                                },
                                child: Text('ВК'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Написан на Flutter',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
