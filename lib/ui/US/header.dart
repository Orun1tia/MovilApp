import 'package:appmovil/controller/us_controller.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final USController nameController = USController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.03),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[600],
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF9C742C),
                width: 2.0,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: const Icon(
                Icons.person,
                size: 80,
              ),
            ),
          ),
        ),
        Text(nameController.getName(),
            style: TextStyle(color: Colors.white, fontSize: 32.0)),
        const Text('Coordinador',
            style: TextStyle(color: Color(0xFF9C742C), fontSize: 15.0)),
      ],
    );
  }
}
