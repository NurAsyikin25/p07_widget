import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Textfield',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _checkboxVal1 = false;
  bool _checkboxVal2 = false;
  bool _checkboxVal3 = false;
  bool _checkboxVal4 = false;
  List<String> list = [];
  String text = '';

  void showData() {
    text = '';
    for (int i = 0; i < list.length; i++) {
      text += '${list[i]}, ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text('Bahasa pemrograman yang dikuasai:'),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal1,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal1 = value!;
                    });
                    if (this._checkboxVal1 == true)
                      list.add('Python');
                    else
                      list.remove('Python');
                    print(list);
                    showData();
                  },
                ),
                const Text('Python'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal2,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal2 = value!;
                    });
                    if (this._checkboxVal2 == true)
                      list.add('Javascript');
                    else
                      list.remove('Javascript');
                    print(list);
                    showData();
                  },
                ),
                const Text('Javascript'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal3,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal3 = value!;
                    });
                    if (this._checkboxVal3 == true)
                      list.add('PHP');
                    else
                      list.remove('PHP');
                    print(list);
                    showData();
                  },
                ),
                const Text('PHP'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal4,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal4 = value!;
                    });
                    if (this._checkboxVal4 == true)
                      list.add('Java');
                    else
                      list.remove('Java');
                    print(list);
                    showData();
                  },
                ),
                const Text('Java'),
              ],
            ),
            Text('Data: $text'),
          ],
        ),
      ),
    );
  }
}
