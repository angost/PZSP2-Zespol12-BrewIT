import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_app_bar.dart';
import 'package:brew_it/presentation/log_in_register/choose_user_type_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:brew_it/presentation/commercial/home_page_commercial.dart';
// import 'package:brew_it/presentation/contract/home_page_contract.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  Map logInData = {"email": "", "password": ""};
  final formKey = GlobalKey<FormState>();

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
                            "Zaloguj się",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            width: 400,
                            child: TextFormField(
                              onSaved: (newValue) {
                                logInData["email"] = newValue;
                              },
                              decoration:
                                  const InputDecoration(labelText: "Email"),
                            ),
                          ),
                          SizedBox(
                            width: 400,
                            child: TextFormField(
                              onSaved: (newValue) {
                                logInData["password"] = newValue;
                              },
                              decoration:
                                  const InputDecoration(labelText: "Hasło"),
                            ),
                          ),
                          MainButton(
                            "Zaloguj",
                            type: "primary_big",
                            customOnPressed: () async {
                              formKey.currentState!.save();
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
                                            HomePageCommercial()));
                              } else {
                                print("Log in failed");
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
                        "Nie mam konta",
                        type: "secondary_big",
                        navigateToPage: () {
                          return const ChooseUserTypePage();
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
