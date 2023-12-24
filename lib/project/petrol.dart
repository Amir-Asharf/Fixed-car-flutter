import 'package:flutter/material.dart';

class iphonesDetails extends StatefulWidget {
  final data;
  const iphonesDetails({super.key, this.data});

  @override
  State<iphonesDetails> createState() => _iphonesDetails();
}

class _iphonesDetails extends State<iphonesDetails> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (val) {
            setState(() {
              selectedindex = val;
            });
          },
          iconSize: 40,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: "More"),
          ]),
      endDrawer: Drawer(),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_gas_station,
            ),
            Text(
              " Fixed ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Car",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(children: [
          Image.asset("images/12.jpg"),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Petrol",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              )),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "24 Hours at your Service",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              )),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                "Quick Rescue",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          Container(
              margin: EdgeInsets.only(top: 15, bottom: 20),
              child: Text(
                "Gasoline 80,92 and 95",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 18),
              )),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 60,
            ),
            child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Colors.orange,
              textColor: Colors.black,
              onPressed: () {},
              child: Text("Order Now"),
            ),
          ),
        ]),
      ),
    );
  }
}
