import 'package:flutter/material.dart';



class SettingCard extends StatelessWidget {
  final IconData leading, trailing;
  final String title;
  final Function()? onTap;

  const SettingCard({
    super.key,
    required this.leading,
    required this.trailing,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.withOpacity(.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 8.0),
            minLeadingWidth: 0,
            leading: Icon(leading, size: 25),
            trailing: Icon(trailing, size: 30),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
