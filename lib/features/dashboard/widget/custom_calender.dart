import 'package:artist_management/core/presentation/widgets/glow.dart';
import 'package:artist_management/core/utils/extensions/num_extension.dart';
import 'package:flutter/material.dart';

class CustomCalendar extends StatefulWidget {
  final EdgeInsets contentPadding;
  const CustomCalendar({
    super.key,
    this.contentPadding = const EdgeInsets.only(
      left: 22,
      right: 22,
      top: 0,
      bottom: 30,
    ),
  });

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  late int selectedIndex;
  late List<DateTime> weekDates;
  final ScrollController _scrollController = ScrollController();

  final List<String> weekDays = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  @override
  void initState() {
    super.initState();
    _generateWeekDates();
    _setSelectedToday();

    // Scroll to the selected index after first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSelected();
    });
  }

  void _generateWeekDates() {
    final now = DateTime.now();
    final monday = now.subtract(Duration(days: now.weekday - 1));
    weekDates = List.generate(7, (index) => monday.add(Duration(days: index)));
  }

  void _setSelectedToday() {
    final today = DateTime.now();
    selectedIndex = weekDates.indexWhere(
      (date) =>
          date.year == today.year &&
          date.month == today.month &&
          date.day == today.day,
    );
  }

  void _scrollToSelected() {
    // Width of each item + margin
    const itemWidth = 80.0;
    const itemMargin = 15.0;
    final totalItemWidth = itemWidth + itemMargin;

    // Calculate scroll offset to center the selected item
    final screenWidth = MediaQuery.of(context).size.width;
    final offset =
        (totalItemWidth * selectedIndex) - (screenWidth / 2) + (itemWidth / 2);

    _scrollController.animateTo(
      offset.clamp(0.0, _scrollController.position.maxScrollExtent),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      padding: widget.contentPadding,
      child: Row(
        children: List.generate(7, (index) {
          final bool isSelected = index == selectedIndex;
          return Glow(
            blurStrength: 15,
            glowOffset: 15,
            child: Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                boxShadow: isSelected
                    ? []
                    : [
                        BoxShadow(
                          color: Colors.black.withAlpha(25),
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        ),
                      ],
                color: isSelected ? Color(0xFF4527A0) : Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5,
                children: [
                  Text(
                    weekDates[index].day.twoDigits,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    weekDays[index],
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
