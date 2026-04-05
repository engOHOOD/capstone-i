import 'package:first_capstone/core/widget/episodes_horizontal_grid_widget.dart.dart';
import 'package:first_capstone/features/home/widget/podcat_widget.dart';
import 'package:first_capstone/features/search/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController(text: "سوالف بزنس");

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: "بحث",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
          onTap: () {
            // Search triggered when user taps the field
            context.read<SearchCubit>().search(searchController.text);
            print("Search triggered on tap: ${searchController.text}");
          },
          onTapOutside: (value) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: BlocBuilder<SearchCubit, SearchState>(
                  buildWhen: (previous, current) {
                    if (current is LoadedPodcasts) {
                      return true;
                    } else if (current is SearchResult) {
                      return true;
                    } else {
                      return false;
                    }
                  },
                  builder: (context, state) {
                    if (state is SearchInitial) {
                      return SizedBox.shrink();
                    }
                    if (state is LoadedPodcasts) {
                      return Column(
                        children: [
                          Align(
                            alignment: .centerStart,
                            child: Text(
                              "برامج رائجة",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          Gap(15),

                          PodcatWidget(podcasts: state.podcasts),
                        ],
                      );
                    }
                    if (state is SearchResult) {
                      return Column(
                        children: [
                          Align(
                            alignment: .centerStart,
                            child: Text(
                              "نتيجة البحث في البزامج",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          Gap(15),

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
                child: BlocBuilder<SearchCubit, SearchState>(
                  buildWhen: (previous, current) {
                    if (current is LoadedPodcasts) {
                      return true;
                    } else if (current is SearchResult) {
                      return true;
                    } else if (current is LoadedEpsiodes) {
                      return true;
                    } else {
                      return false;
                    }
                  },
                  builder: (context, state) {
                    if (state is SearchInitial) {
                      return SizedBox.shrink();
                    }
                    if (state is LoadedEpsiodes) {
                      return Column(
                        children: [
                          Align(
                            alignment: .centerStart,
                            child: Text(
                              "الحلقات الاكثر اعجاباً",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),

                          Gap(15),

                          EpisodesHorizontalGridWidget(
                            podcasts: state.epsiodes,
                          ),
                        ],
                      );
                    }
                    if (state is SearchResult) {
                      return Column(
                        children: [
                          Align(
                            alignment: .centerStart,
                            child: Text(
                              "نتيجة البحث في الحلقات",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),

                          Gap(15),

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
