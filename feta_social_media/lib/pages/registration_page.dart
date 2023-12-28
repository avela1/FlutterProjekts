import 'package:feta_social_media/components/export_components.dart';
import 'package:feta_social_media/constants/export_constants.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
  static const String routeName = '/registration_page';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const RegistrationPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Sizes.width20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const HeaderLogo(
                title: 'Get On Board,',
                subtitle: 'Create your profile to start your journey',
                imagePath: logo,
                imageColor: colorDanger,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
