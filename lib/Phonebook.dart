import 'package:flutter/material.dart';

class Phonebook extends StatelessWidget {
   Phonebook({super.key});

  final List<Map<String, dynamic>> persons =[
    {
      "name":"Jawad",
      "phone":"01929277792"
    },
    {
      "name":"Ferdous",
      "phone":"01929292777"
    },
    {
      "name":"Hasan",
      "phone":"01927779292"
    },
    {
      "name":"Hasan",
      "phone":"01927779292"
    },
    {
      "name":"Hasan",
      "phone":"019777729292"
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              width: 330,
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter a name",
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
        
            SizedBox(
              width: 330,
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter a phone number",
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,
            width: 330,
              child: ElevatedButton(onPressed: (){}, child: Text("Add")
              ,style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
              ),
              ),
            ),),
            Expanded(
                child: ListView.builder(
                  itemCount: persons.length,
                  itemBuilder: (context, index) {
                    return ListTile(

                      leading: Icon(Icons.person, color: Colors.grey,),
                      trailing: Icon(Icons.phone, color: Colors.blue,),

                      title: Text(persons[index]["name"], style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      )),
                      subtitle: Text(persons[index]["phone"]),
                    );
                  },
                ),
            ),

           

          ],

        ),
      ),
      
    );
  }
}
