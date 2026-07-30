import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please Login ", textAlign: TextAlign.center,),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(bottom: 15)),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Enter Your Name",
                hintText: "ex: Dipto Paul",
                prefixIcon: Icon(Icons.person),
              ),
            ),

            Padding(padding: EdgeInsets.only(bottom: 15)),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Enter Your Email",
                hintText: "ex: diptopaul.contact@gmail.com",
                prefixIcon: Icon(Icons.email),
              ),
            ),

            Padding(padding: EdgeInsets.only(bottom: 15)),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Enter Your Password",
                //hintText: "ex: Dipto Paul",
                prefixIcon: Icon(Icons.password),
              ),
              obscureText: true, // eita dile txt dekha jabe nah
            ),

            SizedBox(height: 30),
            ElevatedButton(onPressed: (){}, child: Text("Login",style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold,color:Colors.black,)),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),
            ),
          ],
        ),
      ),
    );
  }
}