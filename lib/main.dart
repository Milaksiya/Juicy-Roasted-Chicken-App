import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 380,
              width: double.infinity,
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // chicken banner
                  Container(
                    height: 380,
                    width: 260,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://static01.nyt.com/images/2020/09/06/dining/15JPGRILL1/15JPGRILL1-superJumbo-v4.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(105),
                      ),
                    ),
                  ),
                  // 3chickens
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildCircleAvatar(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFhjKuEegXK1Gak6vdOZO3yGRFRy_Ig3mmTg&s"),
                      buildCircleAvatar(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdFGKf8wjuGQlq35ZWHHRFgDeE7vU5i-qp6g&s"),
                      buildCircleAvatar(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZgEe_LE07gA2iO65kTTEQYAzPRs4tyE7tRw&s"),
                    ],
                  )
                ],
              ),
            ),
            //chicken name
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Juicy Roasted Chicken",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "These peach and tomato salad and super creamy and easy to make mashed potato make perfect "
                "side dishes for this simple whole roasted chicken.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 19,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            //other details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 100,
                  child: const Center(
                    child: Text(
                      "LKR.700",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: 70,
                  width: 100,
                  child: const Center(
                    child: Text(
                      "1+1",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: 70,
                  width: 100,
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+5",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(img) {
    return CircleAvatar(
      backgroundColor: Colors.red,
      radius: 45,
      child: CircleAvatar(
        backgroundImage: NetworkImage(img),
        radius: 43,
      ),
    );
  }
}
