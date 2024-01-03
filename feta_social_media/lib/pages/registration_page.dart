import 'package:date_time_picker/date_time_picker.dart';
import 'package:feta_social_media/components/export_components.dart';
import 'package:feta_social_media/constants/export_constants.dart';
import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});
  static const String routeName = '/registration_page';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const RegistrationPage(),
    );
  }

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _fullnameController = TextEditingController();
  final _unameContoller = TextEditingController();
  final _dateController = TextEditingController();

  // ignore: unused_field
  late String _selectedDate;
  late String _selectedGender;

  @override
  void dispose() {
    super.dispose();

    _fullnameController.dispose();
    _unameContoller.dispose();
    _dateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Sizes.width20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderLogo(
                  title: 'Welcome,',
                  subtitle: 'Create your profile to start you journey ',
                  imagePath: logo,
                  imageColor: colorDanger,
                  imageHeight: 0.1,
                ),
                SizedBox(
                  height: Sizes.height20,
                ),
                Text(
                  'Full Name:',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                MyTextfield(
                  controller: _fullnameController,
                  hintText: 'Full Name ',
                  obscureText: false,
                  hintStyle: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'UserName:',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                MyTextfield(
                  controller: _unameContoller,
                  hintText: 'Username',
                  obscureText: false,
                  icon: Icons.people,
                  hintStyle: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: Sizes.height20,
                ),
                Text(
                  'Gender:',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Container(
                  margin: EdgeInsets.all(Sizes.height10),
                  alignment: Alignment.center,
                  child: GenderPickerWithImage(
                    verticalAlignedText: false,
                    selectedGender: Gender.Male,
                    selectedGenderTextStyle: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: Sizes.height20),
                    unSelectedGenderTextStyle: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: Sizes.height20),
                    onChanged: (Gender? gender) {
                      // print(object);
                    },
                    equallyAligned: true,
                    animationDuration: const Duration(milliseconds: 300),
                    isCircular: true,
                    opacityOfGradient: 0.4,
                    padding: const EdgeInsets.all(3),
                    size: 50, //default : 40
                  ),
                ),
                SizedBox(
                  height: Sizes.height10,
                ),
                Text(
                  'Date of Birth:',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DateTimePicker(
                      initialValue: '',
                      type: DateTimePickerType.date,
                      dateLabelText: 'DOB',
                      icon: const Icon(Icons.calendar_month_rounded),
                      style: Theme.of(context).textTheme.headlineSmall,
                      firstDate: DateTime(1990),
                      lastDate: DateTime.now(),
                      validator: (value) {
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          setState(() {
                            _selectedDate = value;
                          });
                        }
                      },
                      // We can also use onSaved
                      onSaved: (value) {
                        if (value != null) {
                          _selectedDate = value;
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: Sizes.height20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/register_page');
                    },
                    child: const Text('Continue'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushReplacementNamed(
                          context, '/login_page'),
                      child: Text(
                        'Login Now!',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: colorBlue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
