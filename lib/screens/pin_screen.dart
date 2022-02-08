import 'package:flutter/material.dart';
import 'package:pincodetestapp/widgets/keyboard_number.dart';
import 'package:pincodetestapp/widgets/pin_number.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);

  @override
  _PinScreenState createState() => _PinScreenState();
}

List<String> currentPin = ["","","",""];
TextEditingController? pinOneController = TextEditingController();
TextEditingController? pinTwoController = TextEditingController();
TextEditingController? pinThreeController = TextEditingController();
TextEditingController? pinFourController = TextEditingController();

int pinIndex = 0;
class _PinScreenState extends State<PinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        brightness: Brightness.light,
        actions: [
          Image.asset(
            "assets/icons/help.png",
            width: 45,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 50.0),
                alignment: const Alignment(0,0.5),
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      'Please enter PIN code',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PinNumber(
                          fillColor: pinIndex > 0 ? Colors.green : Colors.white,
                          textEditingController: pinOneController!,
                        ),
                        PinNumber(
                          fillColor: pinIndex > 1 ? Colors.green : Colors.white,
                          textEditingController: pinTwoController!,
                        ),
                        PinNumber(
                          fillColor: pinIndex > 2 ? Colors.green : Colors.white,
                          textEditingController: pinThreeController!,
                        ),
                        PinNumber(
                          fillColor: pinIndex > 3 ? Colors.green : Colors.white,
                          textEditingController: pinFourController!,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          KeyboardNumber(
                            n: 1,
                            onPressed: () {
                              setState(() {
                                setPinIndex("1");
                              });
                            },
                          ),
                          KeyboardNumber(
                            n: 2,
                            onPressed: () {
                              setState(() {
                                setPinIndex("2");
                              });
                            },
                          ),
                          KeyboardNumber(
                            n: 3,
                            onPressed: () {
                              setState(() {
                                setPinIndex("3");
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          KeyboardNumber(
                            n: 4,
                            onPressed: () {
                              setState(() {
                                setPinIndex("4");
                              });
                            },
                          ),
                          KeyboardNumber(
                            n: 5,
                            onPressed: () {
                              setState(() {
                                setPinIndex("5");
                              });
                            },
                          ),
                          KeyboardNumber(
                            n: 6,
                            onPressed: () {
                              setState(() {
                                setPinIndex("6");
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          KeyboardNumber(
                            n: 7,
                            onPressed: () {
                              setState(() {
                                setPinIndex("7");
                              });
                            },
                          ),
                          KeyboardNumber(
                            n: 8,
                            onPressed: () {
                              setState(() {
                                setPinIndex("8");
                              });
                            },
                          ),
                          KeyboardNumber(
                            n: 9,
                            onPressed: () {
                              setState(() {
                                setPinIndex("9");
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 60.0,
                            child: MaterialButton(
                              height: 60.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60.0)
                              ),
                              onPressed: () {},
                              child: Image.asset("assets/icons/fingerprint.png"),
                            ),
                          ),
                          KeyboardNumber(
                            n: 0,
                            onPressed: () {
                              setState(() {
                                setPinIndex("0");
                              });
                            },
                          ),
                          Container(
                            width: 60.0,
                            child: MaterialButton(
                              height: 60.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60.0)
                              ),
                              onPressed: () {
                                setState(() {
                                  clearPin();
                                });
                              },
                              child: Image.asset("assets/icons/clear.png"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

setPinIndex(String text){
  if(pinIndex == 0){
    pinIndex = 1;
  }else if(pinIndex < 4){
    pinIndex++;
  }

}

clearPin(){
  if(pinIndex == 0){
    pinIndex = 0;
  }else if(pinIndex > 0){
    pinIndex--;
  }
}