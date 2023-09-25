import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mna/cubits/auth/auth_cubit.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        actions: [
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<AuthCubit>(context).signIn();
              context.go('/');
            },
            child: const Text('sign in'),
          ),
        ],
      ),
    );
  }
}
