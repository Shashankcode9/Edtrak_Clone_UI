import 'package:flutter/material.dart';
// import 'package:package_info_plus/package_info_plus.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../../theme_data.dart';
// import '../../common/app_logo.dart';

class AboutAppSheet extends StatefulWidget {
  const AboutAppSheet({super.key});

  @override
  State<AboutAppSheet> createState() => _AboutAppSheetState();
}

class _AboutAppSheetState extends State<AboutAppSheet> {
  String version = '';

  @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   _getAppVersion();
  // }

  // _getAppVersion() async {
  //   final package = await PackageInfo.fromPlatform();
  //   setState(() {
  //     version = package.version;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 70),
        Image(image: AssetImage('assets/ic_launcher.png'),
          fit: BoxFit.cover,
          width: 50,
          height: 50,),
        SizedBox(height: 50),
        Text(
          'App Version - v1.5.0',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(.6).withOpacity(.5),
            letterSpacing: 1,
            
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(5.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'View on GitHub',
              style:TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onTap: () {},
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
