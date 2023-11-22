import 'package:flutter/material.dart';
import 'package:bwa_slicing/theme.dart';
import 'package:bwa_slicing/widgets/combo.dart';
import 'package:bwa_slicing/widgets/order_and_add.dart';
import 'package:bwa_slicing/widgets/size_cup.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffD1E1E0),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/Right.png', 
                      width: 24,
                    ),
                  ),
                  Image.asset(
                    'assets/more.png',
                    width: 24,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'assets/caramel.png',
                  width: 192,
                  height: 195,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Caramel Macchiato',
                      style: UtilsTheme.semiboldText.copyWith(
                          fontSize: 24, color: UtilsTheme.colorTheme),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'We cannot guarantee that any unpackaged\nproducts served in our stores are allergen-free',
                      style: UtilsTheme.regularText.copyWith(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Size',
                style: UtilsTheme.semiboldText.copyWith(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(
                height: 12,
              ),
              const SizeCup(),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Combo',
                style: UtilsTheme.semiboldText.copyWith(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(
                height: 12,
              ),
              const ComboMenu(),
              const SizedBox(
                height: 54,
              ),
              const OrderAndAdd(),
              const SizedBox(
                height: 30,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
