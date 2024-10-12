import 'package:edtrackk/custom/common.dart';
import 'package:edtrackk/name_data.dart';
import 'package:edtrackk/profile/profile_sheet.dart';
import 'package:flutter/material.dart';
import 'package:edtrackk/firast_page.dart';

import 'custom/Customcard.dart';
import 'custom/apptheme.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.96),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome,' + firstname ,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        mail,
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 70,
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => showModalBottomSheet(
                      context: context,
                      useRootNavigator: true,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      builder: (_) => ProfileSheet(),
                    ),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image(
                        image: AssetImage('assets/myself.jpg'),
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              elevation: 10,
              child: Container(
                height: 170,
                width: 350,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 0, 153, 255),
                      Color.fromARGB(255, 0, 85, 255),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Attendance',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          '10 Subjects (incl. Labs)',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 0,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        att,
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: Text(
                'Your Statistics',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 190,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomCardTile(
                      title: 'Course',
                      subtitle: 'B.TEC (' +sem+ 'SEM)',
                      icon: Icons.account_balance_rounded,
                      bgColor: Color.fromARGB(255, 253, 203, 203),
                      iconColor: Colors.red,
                    ),
                    SizedBox(width: 10),
                    CustomCardTile(
                      title: 'Overall Present',
                      subtitle: pre+' Lectures',
                      icon: Icons.done_all,
                      bgColor: Color.fromARGB(255, 167, 248, 209),
                      iconColor: Colors.green,
                    ),
                    SizedBox(width: 10),
                    CustomCardTile(
                      title: 'Total Lectures',
                      subtitle: tot+' Lectures',
                      icon: Icons.date_range,
                      bgColor: Color.fromARGB(255, 209, 195, 255),
                      iconColor: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'All Subjects',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    'Click on the subject to know more.',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
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
                        'Mathematics - IV',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.6),
                          letterSpacing: 2,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text('Attendance - 43 / 57',
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
                            value: (75.4 / 100),
                            backgroundColor: Colors.black.withOpacity(.1),
                            valueColor: AlwaysStoppedAnimation(
                              AppTheme.getColor(75.4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            subject(title: 'Universal Human Values\nand Professional Ethics', subtitle: 'Attendence - 32 / 61', value: 52.1),
            SizedBox(height: 10,),
            subject(title: 'Electronic Devices', subtitle: 'Attendence - 57 / 69', value: 82.6),
            SizedBox(height: 10,),
            subject(title: 'Digital System Design', subtitle: 'Attendence - 52 / 72', value: 75.3),
            SizedBox(height: 10,),
            subject(title: 'Network analysis and Synthesis', subtitle: 'Attendence - 51 / 67', value: 72.4),
            SizedBox(height: 10,),
            subject(title: 'Python Programming', subtitle: 'Attendance - 21 / 29', value: 76),
            SizedBox(height: 10,),
            subject(title: 'Electronic Devices Lab', subtitle: 'Attendance - 17 / 22', value: 74),
            SizedBox(height: 10,),
            subject(title: 'Digital System Design Lab', subtitle: 'Attendance - 17 / 28', value: 60.1),
            SizedBox(height: 10,),
            subject(title: 'Network analysis and Synthesis Lab', subtitle: 'Attendance - 16 / 24', value: 69.5),
            SizedBox(height: 10,),
            subject(title: 'Internship Assesment /\nMini Project', subtitle: 'Attendance - 26 / 28', value: 92.9),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }



}
