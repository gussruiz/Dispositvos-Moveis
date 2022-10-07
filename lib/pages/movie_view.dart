import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '';

class MovieScreen extends StatelessWidget {
  final Map<String, dynamic> movie;
  const MovieScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(left: 20, right: 17, top: 5),
      decoration: BoxDecoration(
        color: Color.fromRGBO(201, 173, 146, 1),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 1),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: AppLayout.getHeight(250),
            width: AppLayout.getWidth(169),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromRGBO(201, 173, 146, 1),
              image: DecorationImage(
                image: AssetImage("assets/images/${movie['image']}"),
              ),
            ),
          ),
          const Gap(5),
          Text(
            "${movie['tittle']}",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(10),
          Text("Learn More",
              style: Styles.headLineStyle4.copyWith(color: Colors.white))
        ],
      ),
    );
  }
}
