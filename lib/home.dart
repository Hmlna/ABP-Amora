import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background_home.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                            image: AssetImage("assets/avatar.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                          size: 34,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text.rich(
                    TextSpan(
                      text: "Hello, ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "Hanif",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF3EC492),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "What do you want today?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  width: MediaQuery.of(context).size.width,
                  child: Transform.translate(
                    offset: Offset(0, -30),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF28C76F)),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x1A000000),
                                          offset: Offset(0.4, 1.6),
                                          blurRadius: 3.6)
                                    ]),
                                padding: EdgeInsets.all(26),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Your Badge'),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xFFF6F6F6),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 4),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/point.png',
                                                width: 14,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text('2200 Points')
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/bottle.png',
                                          width: 14,
                                        ),
                                        SizedBox(width: 8),
                                        Text('Sweet Voyager')
                                      ],
                                    ),
                                    SizedBox(height: 22),
                                    Divider(),
                                    Text('Choose the service you want'),
                                    SizedBox(height: 12),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            SvgPicture.asset('assets/ridesBig.svg'),
                                            SizedBox(height: 12),
                                            Text('Rides')
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset('assets/foodsBig.svg'),
                                            SizedBox(height: 12),
                                            Text('Foods')
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 24)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/discount.svg'),
                                    SizedBox(width: 8),
                                    Text(
                                      'Discount up to 20%! Order Now!',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                          News(gambar: 'gambar1'),
                          News(gambar: 'gambar2'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class News extends StatelessWidget {
  const News({
    super.key, required this.gambar,
  });

  final String gambar;

  @override
  Widget build(BuildContext context) {    
    return Column(
      children: [
      SizedBox(height: 24),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Image.asset('assets/$gambar.png'),
          ),
      ],
    );
      
  }
}