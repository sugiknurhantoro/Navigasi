import 'package:flutter/material.dart';
import 'package:navigasi/second.dart';
// import 'package:flutter_navigation/second.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Ini Halaman Pertama";
  var body = "Ini adalah Body";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _buildHeader(),
            const ListTile(
              leading: Icon(Icons.holiday_village),
              title: Text("Ini Halaman Home"),
            ),
            ListTile(
              leading: const Icon(Icons.add_home),
              title: const Text("Penyewaan"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyWidget(
                      parameter: "A",
                      parameter2: "B",
                    ),
                  ),
                );
              },
            ),
            const ListTile(
              leading: Icon(Icons.remove_circle),
              title: Text("Pengembalian"),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text(judul)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const MyWidget(
                parameter: "A",
                parameter2: "B",
              ),
            ),
          );
        },
      ),
      body: Text(body),
    );
  }
}

_buildHeader() {
  return DrawerHeader(
    decoration: const BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
    child: Column(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage('windows/runner/resources/IMG_3422.png'),
          radius: 40,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Welcome to Gilang Flutter',
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    ),
  );
}
