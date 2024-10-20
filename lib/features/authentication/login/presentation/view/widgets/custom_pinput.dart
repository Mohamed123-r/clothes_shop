import 'package:clothes_shop_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CustomPinput extends StatefulWidget {
  const CustomPinput({super.key});

  @override
  _PinputExampleState createState() => _PinputExampleState();
}

class _PinputExampleState extends State<CustomPinput> {
  final TextEditingController _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 46,
      height:60,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: kLightGreyColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Pinput(
          controller: _pinController,
          length: 6, // Length of the PIN
          defaultPinTheme: defaultPinTheme,
          onCompleted: (pin) {
            print('Completed PIN: $pin');
          },
          onChanged: (value) {
            print('Current PIN: $value');
          },
          focusedPinTheme: defaultPinTheme.copyWith(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}