import 'package:color_sliders/color_slider_component.dart';
import 'package:flutter/material.dart';

class ColorSlidersPage extends StatefulWidget {
  const ColorSlidersPage({super.key});

  @override
  State<ColorSlidersPage> createState() => _ColorSlidersPageState();
}

class _ColorSlidersPageState extends State<ColorSlidersPage> {
  double redValue = 0.5;
  double greenValue = 0.6;
  double blueValue = 0.7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Color Sliders"),
        ),
        body: Column(
          children: [
            ColorSlider(
              title: "Red",
              value: redValue,
              color: Colors.red,
            ),
            ColorSlider(title: "Green", value: greenValue, color: Colors.green),
            ColorSlider(title: "Blue", value: blueValue, color: Colors.blue),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                color: Colors.red,
              ),
            )
          ],
        ));
  }
}
