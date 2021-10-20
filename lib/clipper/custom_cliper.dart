import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    final Path path=Path();
    path.lineTo(0.0, size.height);

    final firstendcoord=Offset(size.width/2, size.height-20);
    final firstcontrolcoord=Offset(size.width*.25, size.height-60);

    path.quadraticBezierTo(firstcontrolcoord.dx, firstcontrolcoord.dy, firstendcoord.dx, firstendcoord.dy);

    final secondendpoint=Offset(size.width,size.height-95);
    final secondcontrolcoord=Offset(size.width*.75, size.height-10);

    path.quadraticBezierTo(secondcontrolcoord.dx, secondcontrolcoord.dy, secondendpoint.dx, secondendpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}