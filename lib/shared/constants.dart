import 'package:flutter/material.dart';

const String APP_NAME = 'newswipe';
const Color MAIN_BACKGROUND_COLOR = Color.fromRGBO(255, 244, 235, 1.0);
const Color CARD_BACKGROUND_COLOR = Color.fromARGB(255, 255, 247, 240);
const Color MAIN_YELLOW_COLOR = Color.fromARGB(255, 255, 166, 41);
const Color MAIN_DARK_BLUE = Color.fromRGBO(7, 60, 77, 1);
const Color MAIN_LIGHT_BLUE = Color.fromRGBO(94, 153, 174, 1);

enum CardType { sponsored, news, photo, survey }

enum ContentCategory {
  ki_news,
  pa_dir_mwa,
}

enum TagType { primary, secondary, tertiary }

const ContentCategoryMap = {
  "ki_news": {"fr": "L'Actu du Jour", "mu": "Ki News ?"},
  "pa_dir_mwa": {"fr": "La Curiosité du Jour", "mu": "Pa dir mwa !?"},
  "survey": {"fr": "Le Sondage du Jour", "mu": "Ki dimoun pou dir ?"},
  "photo": {"fr": "La Photo du Jour", "mu": "Get sa !"},
  "sponsored": {"fr": "Contenu Sponsorisé", "mu": "Reklam!"}
};

const ApiConstants = {
  "prod": {"newsEndpoint": "", "baseUrl": ""},
  "mock": {"newsEndpoint": "", "baseUrl": ""},
};
