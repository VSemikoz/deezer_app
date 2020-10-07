class DateMapper {
  static String map(int seconds) => format(Duration(seconds: seconds));
}

format(Duration d) => d.toString().substring(0, 7);
