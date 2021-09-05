import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homework/const.dart';
import 'package:homework/register_screen.dart';
import 'package:homework/widgets.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                  setState(() {
                    langLocale = !langLocale;
                  });
                  if (langLocale == true) {
                    context.locale = Locale('en', '');
                  } else {
                    context.locale = Locale('ar', '');
                  }
                  print(langLocale.toString());
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
                Image(height: 150.0, image: AssetImage("assets/image.png")),
                Text(
                  "welcome back!",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Colors.blue),
                ).tr(),
                Text(
                  'log in to your existant accountof Q allure',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                defaolTextFormField(
                  prefix: Icon(Icons.email_outlined),
                  hintText: 'email',
                ),
                const SizedBox(
                  height: 10.0,
                ),
                defaolTextFormField(
                    hintText: '  password', prefix: Icon(Icons.lock_outline)),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: MediaQuery.of(context).size.width - 200.0),
                  child: const Text(
                    'forgate password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
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
                      'log in',
                      style: TextStyle(color: Colors.white),
                    ).tr(),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'or connect with',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: MaterialButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              const Text(
                                'facebook',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: MaterialButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.google,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Text(
                                'google',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('don\'t have an account?',
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
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text(
                        'sgin up',
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
