import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  final String label;

  GradientButton({required this.label});

  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  bool status = true;
  bool isExpanded = true;
  int current = 0;
  final List<String> items = ['All', 'Item 1', 'Item 2', 'Item 3', 'Item 4'];



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: (details) {
        setState(() {
          status = !status;
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        width: isExpanded ? 80 : 60,
        height: isExpanded ? 60 : 60,
        alignment: Alignment.center,
        child: Text(
          widget.label,
          style: TextStyle(
            color:status ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: status
              ? LinearGradient(
            colors: [
              Color(0xFFcdc4f3), // #cdc4f3
              Color(0xFFac9ef6), // #ac9ef6
              Color(0xFF9f8ef6), // #9f8ef6
              Color(0xFFcf91e6), // #cf91e6
              Color(0xFFf97fc3), // #f97fc3
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
              : LinearGradient(
            colors: [
              Color(0xfff7f7f9),
              Color(0xfff7f7f9),
              Color(0xfff7f7f9),
              Color(0xfff7f7f9),
              Color(0xfff7f7f9),
              // #cdc4f3// #f97fc3
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        duration: Duration(milliseconds: 300),
      ),
    );
  }
}
