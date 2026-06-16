import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/core/theme/cubit/theme_cubit.dart';
import 'package:first_capstone/features/login/cubit/login_cubit.dart';
import 'package:first_capstone/features/login/widget/field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController(text: "ohood@gmail.com");
    final passwordController = useTextEditingController(text: "123456789");
    final loadingKey = GlobalKey();

    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (loadingKey.currentContext != null &&
              loadingKey.currentContext!.mounted) {
            context.pop();
          }
          switch (state) {
            case LoginInitial _:
            case LoadingState _:
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) =>
                    Center(child: CircularProgressIndicator(key: loadingKey)),
              );
            case SuccessState _:
              context.go(RouteKeys.home);
            case ErrorState _:
              showDialog(
                context: context,
                builder: (context) => Center(
                  child: Card(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 90.sw,
                        maxHeight: 40.sh,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: .center,
                          children: [
                            Text(state.message),
                            TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: Text("حسنا"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
          }
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                return Column(
                  children: [
                     Align(
                      alignment: .centerStart,
                      child: BlocBuilder<ThemeCubit, ThemeMode>(
                        builder: (context, themeState) {
                          return IconButton(
                            onPressed: () {
                              context.read<ThemeCubit>().switchTheme();
                            },
                            icon: Icon(
                              themeState == ThemeMode.dark
                                  ? Icons.dark_mode
                                  : Icons.light_mode,
                            ),
                          );
                        },
                      ),
                    ),
                    Image.asset("assets/images/logo.png",height: 50.sw,width: 50.sw,),
                    Center(
                      
                      child: Card(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 90.sw,
                            maxHeight: 95.sw,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  "اهلا بك في سرد",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Gap(10),
                                Text(
                                  "يرجى تسجيل الدخول",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                Gap(30),
                                FieldWidget(
                                  hint: "Email",
                                  controller: emailController,
                                ),
                    
                                Gap(20),
                                FieldWidget(
                                  hint: "Password",
                                  controller: passwordController,
                                ),
                    
                                Gap(20),
                                FilledButton(
                                  onPressed: () {
                                    context.read<LoginCubit>().checkLogin(
                                      emailController.text,
                                      passwordController.text,
                                    );
                                  },
                                  child: Text("تسجيل الدخول"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
