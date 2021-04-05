class Common {
  String name;
  Common(this.name);
}

class MoreAboutMe extends Common {
  String value;
  MoreAboutMe(this.value, String name) : super(name);
}

class Skills extends Common {
  double rating;
  Skills(String name, this.rating)
      : assert(rating < 10 && rating > 0, 'Rating Should be wihin 0 to 10'),
        super(name);
}

List<MoreAboutMe> getAboutMe() {
  return <MoreAboutMe>[
    MoreAboutMe("Name", "Yaseen Agwan"),
    MoreAboutMe("Gender", "Male"),
    MoreAboutMe("Blood Group", "O positive"),
    MoreAboutMe("Contact Number", "+917984669974, +919033607806(WhatsApp)"),
    MoreAboutMe("Email Id", "yaseen04071998@gmail.com"),
    MoreAboutMe("Address",
        "407/B-2, Govinda Commercial Complex \n Bavisa Faliya , Silvassa"),
    MoreAboutMe("Nationality", "Indian"),
  ];
}

List<Skills> getSkills() {
  return <Skills>[
    Skills("C#", 8),
    Skills("Asp .Net Core", 7),
    Skills("Ms Sql", 6),
    Skills("Flutter", 4),
    Skills("Javascript", 6),
  ];
}
