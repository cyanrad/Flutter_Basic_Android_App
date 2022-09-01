import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('info');
              },
              icon: const Icon(Icons.info_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstien.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(color: Colors.black),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.amber,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "this is some text",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isSwitch ? Colors.amber : Colors.blue),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text('Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('FIRE DEPARTMENT');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.local_fire_department),
                  Text("Some text is fireeeeeee"),
                  Icon(Icons.local_fire_department),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isChecked,
                onChanged: (bool? newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                }),
            Image.network(
                'https://media.istockphoto.com/photos/hd-wallpaper-for-mobile-phones-picture-id1257005098?b=1&k=20&m=1257005098&s=170667a&w=0&h=je8sgDZ9o62xavDKDHVSaAE4M6wug7Yt5vOaPI0VHFo=')
          ],
        ),
      ),
    );
  }
}
