import 'package:flutter/material.dart';

class AcountPage extends StatelessWidget {
  const AcountPage({super.key});
  Widget orderVar(
    BuildContext context, {
    required String name,
    required int num,
  }) => Column(
    children: [
      Text(
        num.toString(),
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).primaryColor,
        ),
      ),
      Text(
        name,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    ],
  );
  Widget acountListBar(
    BuildContext context, {
    String? subtitle,
    required String title,

    required IconData icon,
  }) => ListTile(
    onTap: () {},
    title: Text(title),
    subtitle: subtitle != null ? Text(subtitle) : null,
    leading: Icon(icon, size: 30, color: Theme.of(context).primaryColor),
    trailing: Icon(
      Icons.arrow_forward_ios_rounded,
      size: 30,
      color: Theme.of(context).primaryColor,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
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
                  orderVar(context, name: "Orders", num: 65),
                  orderVar(context, name: 'Vounchers', num: 12),
                ],
              ),
              const SizedBox(height: 24),
              const Divider(thickness: 2, indent: 20, endIndent: 20),
              acountListBar(
                context,
                title: "Last Order",
                icon: Icons.shopping_cart,
                subtitle: "here you can found your last orders",
              ),
              const Divider(thickness: 2, indent: 20, endIndent: 20),
              acountListBar(
                context,
                title: "Vouchers",
                icon: Icons.card_giftcard_sharp,
              ),
              const Divider(thickness: 2, indent: 20, endIndent: 20),
            ],
          ),
        ],
      ),
    );
  }
}
