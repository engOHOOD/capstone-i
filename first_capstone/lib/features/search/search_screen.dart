import 'package:first_capstone/core/widget/episodes_horizontal_grid_widget.dart.dart';
import 'package:first_capstone/features/home/widget/podcat_widget.dart';
import 'package:first_capstone/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().showPodcasts();
    context.read<HomeCubit>().showEpsiodes();

    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: [
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
                                onPressed: () {},
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
                                onPressed: () {},
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
      );
  }
}
