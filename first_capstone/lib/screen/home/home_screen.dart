import 'package:first_capstone/core/widget/episodes_horizontal_grid_widget.dart.dart';
import 'package:first_capstone/screen/home/widget/podcat_widget.dart';
import 'package:first_capstone/screen/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

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
                flexibleSpace: const FlexibleSpaceBar(
                  centerTitle: false,
                  title: Text('اهلا عهود'),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                  child: Center(child: Text('افضل البرامج تنتظرك هنا')),
                ),
              ),
              SliverGap(20),
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
                          Align(
                            alignment: .centerStart,
                            child: Text("برامج رائجة"),
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
              SliverGap(20),

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
                          Align(
                            alignment: .centerStart,
                            child: Text("حلقات جديدة"),
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
