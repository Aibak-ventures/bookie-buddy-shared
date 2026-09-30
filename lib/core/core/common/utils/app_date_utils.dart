import 'package:bookie_buddy_shared/core/core/common/utils/date_time_extensions.dart';
import 'package:intl/intl.dart';

/// Pure-Dart date helpers — no Flutter dependency, so usable from `lib/core`.
///
/// The `TimeOfDay`-based duration/difference helpers that used to live on
/// this class moved to `AppTimeOfDayUtils` in
/// `lib/ui/utils/helpers/app_time_of_day_utils.dart` instead, since
/// `TimeOfDay` is a Flutter type.
class AppDateUtils {
  /// Single source of truth for how dates are displayed across the UI.
  ///
  /// Change this pattern to change every date-picker field and date display
  /// in the app at once — e.g. 'd MMM, yyyy' renders as '12 Jan, 2026'.
  static const String uiDatePattern = 'd MMM, yyyy';

  /// Formats [date] using [uiDatePattern] — the canonical UI display format.
  static String formatUiDate(DateTime date) =>
      DateFormat(uiDatePattern).format(date);

  // --- TODAY ---
  static DateTime today() => DateTime.now().dateOnly;

  // --- THIS WEEK ---
  static DateTime thisWeekStart() {
    final t = today();
    return t.subtract(Duration(days: t.weekday - 1));
  }

  static DateTime thisWeekEnd() => thisWeekStart().add(const Duration(days: 6));

  // --- LAST 7 DAYS ---
  static DateTime last7Days() {
    final t = today();
    // Subtract 6 days to include today in the 7-day range
    return t.subtract(const Duration(days: 6));
  }

  // --- THIS MONTH ---
  static DateTime thisMonthStart() {
    final t = today();
    return DateTime(t.year, t.month); // Implicitly day 1
  }

  static DateTime thisMonthEnd() {
    final t = today();
    return DateTime(t.year, t.month + 1, 0);
  }

  // --- LAST 30 DAYS ---
  static DateTime last30Days() {
    final t = today();
    // Subtract 29 days to include today in the 30-day range
    return t.subtract(const Duration(days: 29));
  }

  // --- LAST MONTH ---
  static DateTime lastMonthStart() {
    final t = today();
    return DateTime(t.year, t.month - 1);
  }

  static DateTime lastMonthEnd() {
    final t = today();
    return DateTime(t.year, t.month, 0);
  }

  // --- THIS QUARTER ---
  /// ### What is a Quarter?
  /// A "quarter" is simply one-fourth of a year. Since a year has 12 months, a quarter consists of exactly 3 months.
  ///
  /// In a standard calendar year, they are broken down like this:
  ///
  /// - Q1: January, February, March (Months 1, 2, 3)
  ///
  /// - Q2: April, May, June (Months 4, 5, 6)
  ///
  /// - Q3: July, August, September (Months 7, 8, 9)
  ///
  /// - Q4: October, November, December (Months 10, 11, 12)
  ///
  /// Calculates the starting month (1, 4, 7, or 10) for any given date's quarter
  static int _getQuarterStartMonth(DateTime date) {
    return ((date.month - 1) ~/ 3) * 3 + 1;
  }

  static DateTime thisQuarterStart() {
    final t = today();

    return DateTime(t.year, _getQuarterStartMonth(t));
  }

  static DateTime thisQuarterEnd() {
    final t = today();
    // Add 3 months to start month, and set day to 0 to get the last day of the quarter
    return DateTime(t.year, _getQuarterStartMonth(t) + 3, 0);
  }

  // --- THIS YEAR ---
  static DateTime thisYearStart() {
    final t = today();
    return DateTime(t.year); // Implicitly month 1, day 1
  }

  static DateTime thisYearEnd() {
    final t = today();
    return DateTime(t.year, 12, 31);
  }
}
