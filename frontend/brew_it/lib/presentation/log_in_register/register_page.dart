import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_app_bar.dart';
import 'package:brew_it/presentation/log_in_register/log_in_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage(this.userType, {super.key});

  final String userType;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  Map registerData = {"company_name": "", "email": "", "password": ""};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(context, hasHomeButtom: false),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Stack(
            children: [
              Center(
                child: Form(
                    key: formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Zarejestruj się",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            width: 400,
                            child: TextFormField(
                              onSaved: (newValue) {
                                registerData["company_name"] = newValue;
                              },
                              decoration: const InputDecoration(
                                  labelText: "Nazwa firmy"),
                            ),
                          ),
                          SizedBox(
                            width: 400,
                            child: TextFormField(
                              onSaved: (newValue) {
                                registerData["email"] = newValue;
                              },
                              decoration:
                                  const InputDecoration(labelText: "Email"),
                            ),
                          ),
                          SizedBox(
                            width: 400,
                            child: TextFormField(
                              onSaved: (newValue) {
                                registerData["password"] = newValue;
                              },
                              decoration:
                                  const InputDecoration(labelText: "Hasło"),
                            ),
                          ),
                          MainButton(
                            "Wyślij prośbę",
                            type: "primary_big",
                            customOnPressed: () async {
                              formKey.currentState!.save();
                              registerData["role"] = widget.userType;
                              final dio = Dio();
                              final response = await dio.post(
                                'https://jsonplaceholder.typicode.com/posts', // MOCK -> apiCall!
                                data: {
                                  'title': 'My post',
                                  'body': 'This is my post content',
                                  'userId': 1,
                                }, // MOCK -> logInData!
                              );
                              if (response.statusCode == 201) {
                                // MOCK -> 200
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LogInPage()));
                              } else {
                                print("Register failed");
                              }
                            },
                          )
                        ])),
              ),
              Column(
                children: [
                  const Spacer(),
                  Row(
                    children: [
                      const Spacer(),
                      MainButton(
                        "Mam już konto",
                        type: "secondary_big",
                        navigateToPage: () {
                          return const LogInPage();
                        },
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
