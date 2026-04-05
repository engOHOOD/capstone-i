import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/features/login/cubit/login_cubit.dart';
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
                    Center(child: CircularProgressIndicator(key: loadingKey,)),
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
                return Center(
                  
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
                            TextFormField(
                              textDirection: .ltr,
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintTextDirection: .ltr,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onTapOutside: (value) {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                            ),
                            Gap(20),
                            TextFormField(
                              textDirection: .ltr,
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintTextDirection: .ltr,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onTapOutside: (value) {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
