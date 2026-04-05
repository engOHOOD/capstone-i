import 'dart:convert';

import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:first_capstone/model/podcast_model/podacast_model.dart';
import 'package:flutter/services.dart';

class PodcastRepo {
  List<PodacastModel> _podcasts = [];
  List<EpsiodeModel> _epsiodes = [];

  Future<List<PodacastModel>> loadPodcasts() async {
    final podcastJson = await rootBundle.loadString(
      "assets/data/podcasts.json",
    );
    _podcasts = List.from(
      await jsonDecode(podcastJson),
    ).map((item) => PodacastModel.fromJson(item)).toList();
    return _podcasts;
  }

  Future<List<EpsiodeModel>> loadEpsiodes() async {
    final epsiodeJson = await rootBundle.loadString(
      "assets/data/episodes.json",
    );
    _epsiodes = List.from(
      await jsonDecode(epsiodeJson),
    ).map((item) => EpsiodeModel.fromJson(item)).toList();

    // print(_epsiodes);
    return _epsiodes;
  }

  PodacastModel loadOnePodcast(int id) {
    final PodacastModel onePodcast = _podcasts.firstWhere(
      (pod) => pod.id == id,
    );

    return onePodcast;
  }

  List<EpsiodeModel> loadOnePodcastEpsiodes(int podcastId) {
    final List<EpsiodeModel> epsiodes = _epsiodes
        .where((ep) => ep.podcastId == podcastId)
        .toList();

    return epsiodes;
  }

  EpsiodeModel loadOneEpsiode(int id,) {
    print("dceced33333cdccdc");

    final EpsiodeModel epsiode = _epsiodes.firstWhere((ep) => ep.id == id,orElse: () {
      throw Exception("Episode not found with id = $id");
    },
  );
    print("dce22222cedcdccdc");
    print(epsiode);

    return epsiode;
  }
}
