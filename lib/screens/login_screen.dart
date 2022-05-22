import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/models/api/user/user.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _apiKeyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DanbooruAuthCubit, DanbooruAuthState>(
      builder: (context, state) {
        final user = state.user;
        final isLoading = user is UserAuthenticating;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Danbooru Log in'),
            leading: IconButton(
                onPressed: () => {
                      AutoRouter.of(context).pop(),
                    },
                icon: const Icon(Icons.arrow_back)),
          ),
          body: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                    child: const Text(
                      'Log in to Danbooru',
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const Text(
                        'You can find your API key at the bottom of your Danbooru profile.',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 20,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        state.errorMsg,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Column(
                    children: [
                      TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          errorText: state.usernameErrorMsg,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          label: const Text('Username'),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextField(
                        controller: _apiKeyController,
                        enableSuggestions: false,
                        autocorrect: false,
                        obscureText: true,
                        decoration: InputDecoration(
                          errorText: state.apiKeyErrorMsg,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          label: const Text('API key'),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Material(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                        child: InkWell(
                          onTap: () {
                            BlocProvider.of<DanbooruAuthCubit>(context).setAuth(
                              _usernameController.text,
                              _apiKeyController.text,
                            );
                          },
                          child: SizedBox(
                            height: 50.0,
                            child: Center(
                              child: isLoading
                                  ? const SizedBox(
                                      height: 28,
                                      width: 28,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 3,
                                      ),
                                    )
                                  : const Text(
                                      'Log in',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
