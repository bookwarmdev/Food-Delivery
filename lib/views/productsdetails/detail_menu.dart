import 'package:flutter/material.dart';

class detailmenu extends StatefulWidget {
  detailmenu({Key? key}) : super(key: key);

  @override
  _detailmenuState createState() => _detailmenuState();
}

class _detailmenuState extends State<detailmenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Photo_Menu.png"),
                    fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onVerticalDragStart: (DragStartDetails details) {
                detailmenu();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Container(
                  height: 500,
                  width: 420,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 270, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: const Center(
                            child: Text(
                          'Popular',
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'BentonSans_Medium'),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: CircleAvatar(
                          backgroundColor: Colors.green[50],
                          radius: 20,
                          child: const ImageIcon(
                            AssetImage("assets/icons/Shape.png"),
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.red[50],
                          radius: 20,
                          child: const ImageIcon(
                            AssetImage("assets/icons/heart.png"),
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Rainbow Sandwich\nSugar',
                      style: TextStyle(
                          fontFamily: 'BentonSans_Bold',
                          fontSize: 30,
                          height: 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Row(
                          children: const [
                            Image(
                                image:
                                    AssetImage("assets/icons/Icon_Star.png")),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                '4.8 Rating',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            children: const [
                              Image(
                                  image: AssetImage(
                                      "assets/images/shopping-bag.png")),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  '2000+ Order',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Nulla occaecat velit laborum exercitation ullamco. Elit\nlabore eu aute elit nostrud culpa velit excepteur deserunt\nsunt. Velit non est cillum consequat cupidatat ex Lorem\nlaboris labore aliqua ad duis eu laborum.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: 'BentonSans_Book',
                          fontSize: 13.5,
                          height: 1.5),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text(
                      '* Strowberry\n* Cream\n* wheat',
                      style: TextStyle(
                          fontFamily: 'BentoSans_Book',
                          fontSize: 13.5,
                          height: 2),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Nulla occaecat velit laborum exercitation ullamco.',
                      style: TextStyle(
                          fontFamily: 'BentoSans_Book',
                          fontSize: 13.5,
                          height: 1),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 550),
              child: Center(
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(83, 232, 139, 1),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            offset: const Offset(0, 3))
                      ]),
                  child: const Center(
                      child: Text(
                    'Add To Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'BentonSans_Bold',
                        fontSize: 16),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
