import 'package:flutter/material.dart';

import 'apptheme.dart';

class subject extends StatelessWidget {
  final String title, subtitle;
  final double value;
  //final Colors col;

  const subject({
    super.key,

    required this.title,
    required this.subtitle,
    required this.value,
    //required this.col
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Card(
        elevation: .0,
        color: Colors.black.withOpacity(.6).withOpacity(0.07),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              horizontalTitleGap: 20,
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.6),
                  letterSpacing: 2,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                      letterSpacing: 1,
                    )),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    value: (value / 100),
                    backgroundColor: Colors.black.withOpacity(.1),
                    valueColor: AlwaysStoppedAnimation(
                      AppTheme.getColor(value),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
