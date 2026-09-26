import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreenTwo'),

          backgroundColor: Colors.yellow,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.phone),
            ),

          ],
        ),
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 90,
                backgroundColor: Colors.deepPurple.shade100,
                child: Icon(
                  Icons.icecream,
                  size: 80,
                  color: Colors.deepPurple,
                ),
              ),
              Text("Ice cream is very delicious right?", style: TextStyle(
                  fontSize: 12,
                  color: Colors.black

              ),),
              CircleAvatar(
                radius: 90,
                backgroundColor: Colors.deepPurple.shade100,
                child: Icon(
                  Icons.code,
                  size: 80,
                  color: Colors.deepPurple,
                ),
              ),
              Text("Programming is not boring if you love it", style: TextStyle(
                  fontSize: 12,
                  color: Colors.black

              ),),
            ],
          ),
        )
    );
  }
}
