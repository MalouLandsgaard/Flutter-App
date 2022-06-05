import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

enum ToolEnum { Sentiment, Classifier, ModelTraining, Anonymize }

extension ToolMapper on ToolEnum {
  static const names = {
    ToolEnum.Sentiment: "Sentiment Analysis",
    ToolEnum.Classifier: "Image Classification",
    ToolEnum.ModelTraining: "Model Training",
    ToolEnum.Anonymize: "Anonymization",
  };

  static const colors = {
    ToolEnum.Sentiment: Color(0xFFDA65E1),
    ToolEnum.Classifier: Color(0xFFFF917A),
    ToolEnum.ModelTraining: Color(0xFFFFC65D),
    ToolEnum.Anonymize: Color(0xFF3A76FE),
  };

  String get name => names[this] ?? 'Unknown';
  Color get color => colors[this] ?? Colors.black;
}
