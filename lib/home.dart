import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindexofthepage = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/profile': (context) => const ProfilePage(),
      //   '/settings': (context) => const SearchPage(),},
      home: Scaffold(
        appBar: AppBar(
          title: const Text("The Urban Pet"),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("List item $index"),
            leading: const Icon(Icons.person),
          );
        },
      ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home),
              
            ),
            BottomNavigationBarItem(
              label: 'search',
              icon: Icon(
                Icons.search,
                // color: Color.fromARGB(115, 255, 4, 4),
              ),
            ),
            BottomNavigationBarItem(
              label: 'profile',
              icon: Icon(Icons.person),
            )
          ],
          currentIndex: currentindexofthepage,
          onTap: (int index) {
            setState(() {
              currentindexofthepage = index;
            });
          },
        ),
      ),
    );
  }
}

