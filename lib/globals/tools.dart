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

  static const descriptions = {
    ToolEnum.Sentiment: "Analyse the mood of your own generated text",
    ToolEnum.Classifier: "Find and search through elements in your pictures",
    ToolEnum.ModelTraining: "Earn \$ by training models with your data",
    ToolEnum.Anonymize: "Earn \$ by selling or donate your anonymized data",
  };

  static const colors = {
    ToolEnum.Sentiment: Color(0xFF704EF2),
    ToolEnum.Classifier: Color(0xFFDA65E1),
    ToolEnum.ModelTraining: Color(0xFFFF917A),
    ToolEnum.Anonymize: Color(0xFFFFC65D),
  };

  static const icons = {
    ToolEnum.Sentiment: Iconsax.smallcaps5,
    ToolEnum.Classifier: Iconsax.image5,
    ToolEnum.ModelTraining: Iconsax.dollar_circle4,
    ToolEnum.Anonymize: Iconsax.shield_security2,
  };

  IconData get icon => icons[this] ?? Iconsax.box5;
  String get name => names[this] ?? 'Unknown';
  String get description => descriptions[this] ?? 'Unknown';
  Color get color => colors[this] ?? Colors.black;
}
