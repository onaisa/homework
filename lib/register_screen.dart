import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homework/const.dart';
import 'package:homework/login_screen.dart';
import 'package:homework/widgets.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.black,
          ],
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
        ),
        image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () async {
                  langLocale = !langLocale;
                  print(context.locale.toString());
                },
                icon: Icon(
                  Icons.language_outlined,
                  color: Colors.blue,
                )),
          ],
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Let\'s Get Started!',
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Colors.blue),
                ),
                Text(
                  'Creat an account to Q Allure to get all featuers',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                defaolTextFormField(
                  prefix: Icon(Icons.person_outline),
                  hintText: 'Full name',
                ),
                const SizedBox(
                  height: 10.0,
                ),
                defaolTextFormField(
                  hintText: '  Email',
                  prefix: Icon(Icons.email_outlined),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                defaolTextFormField(
                    hintText: '  Phone', prefix: Icon(Icons.phone_outlined)),
                const SizedBox(
                  height: 10.0,
                ),
                defaolTextFormField(
                    hintText: '  Password', prefix: Icon(Icons.lock_outline)),
                const SizedBox(
                  height: 10.0,
                ),
                defaolTextFormField(
                    hintText: ' Config password',
                    prefix: Icon(Icons.lock_outline)),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'create',
                      style: TextStyle(color: Colors.white),
                    ).tr(),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('you have an account?',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.grey)),
                    const SizedBox(
                      width: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInScreen()));
                      },
                      child: Text(
                        'login here',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
