import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("images/13.jpg")),
            Container(
              padding: EdgeInsets.all(20),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(),
                        hintText: "username",
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.blue),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(),
                        hintText: "email",
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.blue),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.blue),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text("if you have account "),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("login");
                          },
                          child: Text(
                            "click Here",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(15),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("homebage");
                          },
                          child: Text("انشاء الحساب"))),
                ],
              )),
            )
          ],
        ));
  }
}
