import 'package:flutter/material.dart';

class AcountPage extends StatelessWidget {
  const AcountPage({super.key});
  Widget orderVar({required String name, required int num}) => Column(
    children: [
      Text(
        num.toString(),
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Colors.deepOrange,
        ),
      ),
      Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: NetworkImage(
                  'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 16.0),
              Text(
                "James Robert",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  orderVar(name: "Orders", num: 65),
                  orderVar(name: 'Vounchers', num: 12),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
