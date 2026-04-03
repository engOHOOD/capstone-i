import 'package:first_capstone/core/navigation/route_keys.dart';
import 'package:first_capstone/core/widget/episodes_horizontal_grid_widget.dart.dart';
import 'package:first_capstone/screen/home/widget/podcat_widget.dart';
import 'package:first_capstone/screen/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().showPodcasts();
    context.read<HomeCubit>().showEpsiodes();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                expandedHeight: 70,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  title: Text(
                    'اهلا عهود',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    'افضل البرامج تنتظرك هنا',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              SliverGap(18),
              SliverToBoxAdapter(
                child: BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) {
                    if (current is LoadedPodcasts) {
                      return true;
                    } else {
                      return false;
                    }
                  },
                  builder: (context, state) {
                    if (state is HomeInitial) {
                      return SizedBox.shrink();
                    }
                    if (state is LoadedPodcasts) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "برامج رائجة",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              TextButton(
                                child: Text(
                                  'رؤية المزيد',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                onPressed: () {
                                  context.push(
                                    "${RouteKeys.home}/${RouteKeys.allPodcasts}",
                                  );
                                },
                              ),
                            ],
                          ),
                          Gap(20),

                          PodcatWidget(podcasts: state.podcasts),
                        ],
                      );
                    }
                    return SizedBox.shrink();
                  },
                ),
              ),
              SliverGap(18),

              SliverToBoxAdapter(
                child: BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) {
                    if (current is LoadedPodcasts) {
                      return true;
                    } else if (current is LoadedEpsiodes) {
                      return true;
                    } else {
                      return false;
                    }
                  },
                  builder: (context, state) {
                    if (state is HomeInitial) {
                      return SizedBox.shrink();
                    }
                    if (state is LoadedEpsiodes) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "حلقات جديدة",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              TextButton(
                                child: Text(
                                  'رؤية المزيد',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                onPressed: () {
                                  context.push(
                                    '${RouteKeys.home}/${RouteKeys.allEpisode}',
                                  );
                                },
                              ),
                            ],
                          ),
                          Gap(20),

                          EpisodesHorizontalGridWidget(
                            podcasts: state.epsiodes,
                          ),
                        ],
                      );
                    }
                    return SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
