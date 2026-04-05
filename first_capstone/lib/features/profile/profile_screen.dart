import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/core/theme/cubit/theme_cubit.dart';
import 'package:first_capstone/features/profile/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProfileCubit>().getUserInfo();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              if (state is ProfileInitial) {
                Center(child: CircularProgressIndicator());
              } else if (state is ProfileInfoLoaded) {
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
                    Center(child: CircleAvatar(radius: 50)),
                    Gap(20),
                    Text(
                      state.user.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Gap(15),
                    Text(
                      state.user.email,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Gap(20),
                    Card(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: 90.sw,
                          maxHeight: 35.sw,
                        ),
                        child: Row(
                          mainAxisAlignment: .spaceEvenly,
                          crossAxisAlignment: .center,
                          children: [
                            Column(
                              mainAxisAlignment: .center,
                              children: [
                                Container(
                                  width: 10.sw,
                                  height: 10.sw,
                                  alignment: AlignmentGeometry.center,
                                  decoration: BoxDecoration(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(Icons.favorite),
                                ),

                                Text(
                                  state.user.likes.length.toString(),
                                  style: Theme.of(
                                    context,
                                  ).textTheme.titleMedium,
                                ),
                                Text(
                                  "حلقات اعجبتك",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: .center,
                              children: [
                                Container(
                                  width: 10.sw,
                                  height: 10.sw,
                                  alignment: AlignmentGeometry.center,
                                  decoration: BoxDecoration(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(Icons.podcasts),
                                ),

                                Text(
                                  state.user.followedPodcasts.length.toString(),
                                  style: Theme.of(
                                    context,
                                  ).textTheme.titleMedium,
                                ),
                                Text(
                                  "برامج تتابعها",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(30),
                    Align(
                      alignment: AlignmentGeometry.bottomRight,
                      child: FilledButton(
                        onPressed: () {
                          context.go(RouteKeys.login);
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.error,
                        ),
                        child: Text("تسجيل الخروج"),
                      ),
                    ),
                  ],
                );
              } else if (state is ProfileInfoError) {
                return SizedBox.shrink();
              }
              return SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
