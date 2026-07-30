import 'package:flutter/material.dart';
import 'dashboard.dart';

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
            TextFormField(
              onTapOutside: (_) => FocusScope.of(context).unfocus(),// bahire clck korle Chere dibe
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "Please Enter Your Name";
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Enter Your Name",
                hintText: "ex: Dipto Paul",
                prefixIcon: Icon(Icons.person),
                filled: true,
                fillColor: Colors.greenAccent,

              ),
            ),

            Padding(padding: EdgeInsets.only(bottom: 15)),
            TextFormField(
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Enter Your Email",
                hintText: "ex: diptopaul.contact@gmail.com",
                helperText: "Please Enter Your Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),

            Padding(padding: EdgeInsets.only(bottom: 15)),
            TextFormField(
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Enter Your Password",
                //hintText: "ex: Dipto Paul",
                helperText: "Please Enter Your Correct Password",
                prefixIcon: Icon(Icons.password),
              ),
              obscureText: true, // eita dile txt dekha jabe nah
            ),

            SizedBox(height: 30),
            
            FilledButton(onPressed: (
                ) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
            },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  padding: EdgeInsets.all(16),
                  minimumSize: Size(double.infinity, 48),
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}