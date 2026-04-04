import 'package:bloc/bloc.dart';
import 'package:first_capstone/core/repo/podcast_repo.dart';
import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meta/meta.dart';
part 'epsiode_state.dart';

class EpsiodeCubit extends Cubit<EpsiodeState> {
  final PodcastRepo podcastRepo;
  final int id;
  final int podcastId;
  EpsiodeCubit({
    required this.podcastRepo,
    required this.id,
    required this.podcastId,
  }) : super(EpsiodeInitial()) ;


    void getEpisode() async {
    print("cubit 1");
    emit(EpsiodeLoaded(episode: podcastRepo.loadOneEpsiode(id,podcastId)));
    await Future.delayed(Duration.zero);
    print("cubit 1.1");
  }

  }