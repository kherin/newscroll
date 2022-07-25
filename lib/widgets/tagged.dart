import 'package:flutter/material.dart';

// constants
import '../shared/constants.dart';

class Tagged extends StatelessWidget {
  final TagType tagType;
  final String contentCategory;
  final String locale;
  Tagged(this.tagType, this.contentCategory, this.locale);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: getColor(tagType),
      avatar: CircleAvatar(
        backgroundColor: getColor(tagType),
        child: getIcon(tagType),
      ),
      label: Text(
        getLabel(contentCategory, locale),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Color getColor(TagType tagType) {
    if (tagType == TagType.primary) {
      return MAIN_YELLOW_COLOR;
    } else if (tagType == TagType.secondary) {
      return MAIN_DARK_BLUE;
    } else if (tagType == TagType.tertiary) {
      return MAIN_LIGHT_BLUE;
    } else {
      return Colors.white;
    }
  }

  String getLabel(String contentCategory, String locale) {
    if (ContentCategoryMap.containsKey(contentCategory)) {
      Map<String, String>? category = ContentCategoryMap[contentCategory];
      return category?[locale] ?? contentCategory;
    } else {
      return contentCategory;
    }
  }

  Icon getIcon(TagType tagtype) {
    if (tagType == TagType.primary) {
      return const Icon(Icons.calendar_today, color: Colors.white);
    } else if (tagType == TagType.secondary) {
      return const Icon(Icons.newspaper, color: Colors.white);
    } else if (tagType == TagType.tertiary) {
      return const Icon(Icons.flag, color: Colors.white);
    } else {
      return const Icon(Icons.question_mark, color: Colors.white);
    }
  }
}
