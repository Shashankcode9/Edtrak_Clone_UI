//import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtrackk/name_data.dart';
import 'package:flutter/material.dart';



class UserColumn extends StatelessWidget {
  const UserColumn({
    super.key,

  });

  //final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 130,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image(
                  image: AssetImage('assets/myself.jpg'),
                  fit: BoxFit.cover,
                  height: 130,
                  width: 130,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Text(
          firstname+' '+lastname,
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'UUID - '+std+'194',
          style:TextStyle(
            fontSize: 15,
            color: Colors.black.withOpacity(.6),
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),
        ),
        Text(
          'Admission No. - '+std,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black.withOpacity(.6),
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }
}
