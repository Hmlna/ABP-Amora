import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/background_home.png"),
            fit: BoxFit.cover)
            ),
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            Padding(padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/avatar.png"),
                      fit: BoxFit.cover,
                        ),
                      )
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none_outlined, 
                      color: Colors.white, 
                      size: 24
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12),
              Padding(padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text.rich(
                TextSpan(
                text: "Hello, ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
                children: [
                TextSpan(
                text: "Hanif ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.green)
                      )
                    ]
                  ),
                )
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
              "Where do you want to go?",
                style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white
                  ),
                )
              ),
            ],
          )
        ]
      )
    );
  }
}