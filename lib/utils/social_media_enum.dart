// ignore_for_file: constant_identifier_names

enum SocialMedia { matheus_linkedin, obi_instagram, matheus_instagram, obi_linkedin }

extension GetUrl on SocialMedia {
  String get getUrl {
    switch (this) {
      case SocialMedia.matheus_linkedin:
        return "https://www.linkedin.com/in/matheus-henrique-souza-4b2719160/";
      case SocialMedia.obi_instagram:
        return "https://www.instagram.com/obi.tec/";
      case SocialMedia.matheus_instagram:
        return "https://www.instagram.com/matheushfontenele/";
      case SocialMedia.obi_linkedin:
        return "https://www.linkedin.com/company/obi-tec/mycompany/";
      default:
        return "https://www.linkedin.com/in/matheus-henrique-souza-4b2719160/";
    }
  }
}
