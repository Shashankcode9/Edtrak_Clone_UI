import 'package:flutter/material.dart';

// import '../../data/models/user/user_model.dart';
// import '../../ui/theme_data.dart';
// import '../../utils/box.dart';
// import '../password/change_password.dart';
import 'widgets/about_app.dart';
import 'widgets/header_cross.dart';
import 'widgets/setting_card.dart';
import 'widgets/user_column.dart';

class ProfileSheet extends StatelessWidget {
  //final User user;

  const ProfileSheet({super.key,});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,

      initialChildSize: .8,
      maxChildSize: .9,
      builder: ((context, controller) {
        return
          ListView(
            physics: BouncingScrollPhysics(),
            //controller: controller,

            children: [
             HeaderCross(),
              UserColumn(),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    SettingCard(
                      title: 'Change password',
                      leading: Icons.change_circle_outlined,
                      trailing: Icons.keyboard_arrow_right_outlined,
                      onTap: () {},
                    ),
                    SizedBox(height: 10),
                    SettingCard(
                      title: 'Sign out',
                      leading: Icons.logout_rounded,
                      trailing: Icons.keyboard_arrow_right_outlined,
                      onTap: () => _confirm(context),
                    ),
                    SizedBox(height: 10),
                    SettingCard(
                      title: 'About',
                      leading: Icons.info_outline_rounded,
                      trailing: Icons.keyboard_arrow_right_outlined,
                      onTap: () => _aboutSheet(context),
                    ),
                  ],
                ),
              )

            ],

        );
      }
      ),
    );
  }

  _confirm(BuildContext context) async {
    Navigator.pop(context);
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          content: Text(
            'Are you sure you want to sign out?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              letterSpacing: 1,
            )
          ),
          actions: [
            Text(
                'Cancel',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 1,
                )
              ),
            Text(
              'Confirm',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                color: Colors.black,
              ),
            ),


          ],
        );
      },
    );
  }

  _aboutSheet(BuildContext context) {
    Navigator.pop(context);
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      builder: (_) => AboutAppSheet(),
    );
  }
}
