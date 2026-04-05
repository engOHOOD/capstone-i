import 'dart:convert';

import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:first_capstone/model/podcast_model/podacast_model.dart';
import 'package:flutter/services.dart';

class PodcastRepo {
  List<PodcastModel> _podcasts = [];
  List<EpisodeModel> _epsiodes = [];

// loads all podcast from json file
  Future<List<PodcastModel>> loadPodcasts() async {
    final podcastJson = await rootBundle.loadString(
      "assets/data/podcasts.json",
    );
    _podcasts = List.from(
      await jsonDecode(podcastJson),
    ).map((item) => PodcastModel.fromJson(item)).toList();
    return _podcasts;
  }

// loads all episodes from json file
  Future<List<EpisodeModel>> loadEpsiodes() async {
    final epsiodeJson = await rootBundle.loadString(
      "assets/data/episodes.json",
    );
    _epsiodes = List.from(
      await jsonDecode(epsiodeJson),
    ).map((item) => EpisodeModel.fromJson(item)).toList();

    return _epsiodes;
  }

// load one podcast from _podcasts based on given id
  PodcastModel loadOnePodcast(int id) {
    final PodcastModel onePodcast = _podcasts.firstWhere(
      (pod) => pod.id == id,
    );

    return onePodcast;
  }

// load one podcast episodes from _epsiodes based on given id
  List<EpisodeModel> loadPodcastEpsiodes(int id) {
    final List<EpisodeModel> epsiodes = _epsiodes
        .where((ep) => ep.podcastId == id)
        .toList();

    return epsiodes;
  }


// load one  episode from _epsiodes based on given id
  EpisodeModel loadOneEpsiode(int id,) {

    final EpisodeModel epsiode = _epsiodes.firstWhere((ep) => ep.id == id,orElse: () {
      throw Exception("حدث خطا");
    },
  );

    return epsiode;
  }
}
