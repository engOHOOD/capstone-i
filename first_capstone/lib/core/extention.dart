extension DurationFormat on Duration {
  String format() {
    final h = inHours;
    final min = inMinutes.remainder(60);
    final sec = inSeconds.remainder(60);
    return h > 0
        ? '${h.toString().padLeft(2, '0')}:'
              '${min.toString().padLeft(2, '0')}:'
              '${sec.toString().padLeft(2, '0')}'
        : '${min.toString().padLeft(2, '0')}:'
              '${sec.toString().padLeft(2, '0')}';
  }
}
