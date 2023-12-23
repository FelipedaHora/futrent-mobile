import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/containers/circular_container.dart';
import 'package:futrent_mobile/components/curved_edges_widget.dart';
import 'package:futrent_mobile/styles/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: lightGreen,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              const Positioned(
                  top: -150,
                  right: -250,
                  child: CircularContainer(
                      backgroundColor: Color.fromRGBO(255, 255, 255, 0.4))),
              const Positioned(
                  top: 100,
                  right: -300,
                  child: CircularContainer(
                      backgroundColor: Color.fromRGBO(255, 255, 255, 0.4))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}