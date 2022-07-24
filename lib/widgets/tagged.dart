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
      label: Text(getLabel(contentCategory, locale)),
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
      return category?[locale] ?? 'unknown';
    } else {
      return "unknown";
    }
  }

  Icon getIcon(TagType tagtype) {
    if (tagType == TagType.primary) {
      return Icon(Icons.calendar_today, color: Colors.black);
    } else if (tagType == TagType.secondary) {
      return Icon(Icons.newspaper, color: Colors.black);
    } else if (tagType == TagType.tertiary) {
      return Icon(Icons.flag, color: Colors.black);
    } else {
      return Icon(Icons.question_mark, color: Colors.black);
    }
  }
}
