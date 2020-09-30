class App {
  String title;
  String description;
  List<Link> links;
  
  App({
    this.title,
    this.description,
    this.links,
  });
}

class Link {
  String text;
  String link;

  Link({
    this.text,
    this.link,
  });
}
