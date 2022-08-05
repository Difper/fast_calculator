import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FastCalculatorMainPage extends StatefulWidget {
  const FastCalculatorMainPage({Key? key}) : super(key: key);

  @override
  State<FastCalculatorMainPage> createState() => _FastCalculatorMainPageState();
}

class _FastCalculatorMainPageState extends State<FastCalculatorMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: const Color.fromARGB(255, 30, 30, 30),
            ),
          ),
          Expanded(
            flex: 8,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: const Color.fromARGB(255, 73, 194, 17),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: const [
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(iconData: FontAwesomeIcons.c),
                              ),
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(iconData: FontAwesomeIcons.divide),
                              ),
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(iconData: FontAwesomeIcons.xmark),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: const [
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.one,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.two,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.three,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: const [
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.four,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.five,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.six,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: const [
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.seven,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.eight,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.nine,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: const [
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: Icons.no_backpack_outlined,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.zero,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: _myCalcButtons(
                                  iconData: FontAwesomeIcons.solidCompass,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: const Color.fromARGB(255, 255, 165, 91),
                    child: Column(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: _myCalcButtons(iconData: FontAwesomeIcons.arrowLeft),
                        ),
                        Expanded(
                          flex: 1,
                          child: _myCalcButtons(iconData: FontAwesomeIcons.minus),
                        ),
                        Expanded(
                          flex: 2,
                          child: _myCalcButtons(iconData: FontAwesomeIcons.plus),
                        ),
                        Expanded(
                          flex: 1,
                          child: _myCalcButtons(iconData: FontAwesomeIcons.equals),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _myCalcButtons extends StatelessWidget {
  const _myCalcButtons({
    Key? key,
    required this.iconData,
  }) : super(key: key);
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(const StadiumBorder()),
          padding: MaterialStateProperty.all(const EdgeInsets.all(40)),
          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 12, 1, 39)), // <-- Button color
          overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.pressed)) return const Color.fromARGB(255, 43, 36, 83);
            return null; // <-- Splash color
          }),
        ),
        child: FaIcon(iconData));
  }
}
